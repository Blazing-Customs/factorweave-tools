import {
  AuthError, FactorWeaveError, NotFoundError, RateLimitError, ServerError, TierError,
} from './errors.js';
import type {
  ClientOptions, Embedding, FeatureRow, FeaturesQuery, LabelRow, MarketContext,
  NeighborHit, ReportCard, RiskCluster, SimilarQuery, TopQuery, TopRow, UsageStats,
  VectorSearchResponse,
} from './types.js';

const SDK_VERSION = '0.1.0';
const DEFAULT_BASE = 'https://factorweave.com/api';
const DEFAULT_TIMEOUT_MS = 30_000;
const DEFAULT_RETRIES = 2;

interface RequestOpts {
  method?: string;
  query?: Record<string, string | number | boolean | undefined>;
  body?: unknown;
  authed?: boolean;
}

export class FactorWeave {
  private readonly apiKey?: string;
  private bearerToken?: string;
  private readonly baseUrl: string;
  private readonly timeoutMs: number;
  private readonly retries: number;
  private readonly userAgent: string;
  private readonly fetchImpl: typeof fetch;

  constructor(opts: ClientOptions = {}) {
    this.apiKey = opts.apiKey ?? (typeof process !== 'undefined' ? process.env.FACTORWEAVE_API_KEY : undefined);
    this.bearerToken = opts.bearerToken;
    this.baseUrl = (opts.baseUrl ?? DEFAULT_BASE).replace(/\/+$/, '');
    this.timeoutMs = opts.timeoutMs ?? DEFAULT_TIMEOUT_MS;
    this.retries = opts.retries ?? DEFAULT_RETRIES;
    this.userAgent = opts.userAgent ?? `factorweave-js/${SDK_VERSION}`;
    this.fetchImpl = opts.fetch ?? (globalThis.fetch as typeof fetch);
    if (!this.fetchImpl) {
      throw new FactorWeaveError('No fetch implementation available — pass opts.fetch on Node <18');
    }
  }

  // -- public auth helpers --------------------------------------------------

  async login(email: string, password: string): Promise<void> {
    const r = await this.request<{ token: string }>('/auth/login', {
      method: 'POST',
      body: { email, password },
      authed: false,
    });
    this.bearerToken = r.token;
  }

  async whoami(): Promise<Record<string, unknown>> {
    return this.request('/auth/me');
  }

  // -- data endpoints -------------------------------------------------------

  async features(ticker: string, q: FeaturesQuery = {}): Promise<FeatureRow[]> {
    const r = await this.request<{ rows?: FeatureRow[] } | FeatureRow[]>(`/features/${encodeURIComponent(ticker)}`, {
      query: { start_date: q.startDate, end_date: q.endDate, latest: q.latest ? 1 : undefined },
    });
    return Array.isArray(r) ? r : r.rows ?? [];
  }

  async latestFeatures(ticker: string): Promise<FeatureRow | undefined> {
    const rows = await this.features(ticker, { latest: true });
    return rows[0];
  }

  async top(q: TopQuery): Promise<TopRow[]> {
    const r = await this.request<{ rows?: TopRow[] } | TopRow[]>(`/top`, {
      query: { factor: q.factor, n: q.n, ascending: q.ascending ? 1 : undefined },
    });
    return Array.isArray(r) ? r : r.rows ?? [];
  }

  async similar(ticker: string, q: SimilarQuery = {}): Promise<NeighborHit[]> {
    const r = await this.request<VectorSearchResponse>(`/vector-search/similar/${encodeURIComponent(ticker)}`, {
      query: { method: q.method ?? 'cosine', limit: q.limit ?? 10, min_lookback_days: q.minLookbackDays },
    });
    return r.neighbors ?? [];
  }

  async labels(ticker: string, q: FeaturesQuery = {}): Promise<LabelRow[]> {
    const r = await this.request<{ labels?: LabelRow[] } | LabelRow[]>(`/labels/${encodeURIComponent(ticker)}`, {
      query: { start_date: q.startDate, end_date: q.endDate },
    });
    return Array.isArray(r) ? r : r.labels ?? [];
  }

  // -- derived analytics ----------------------------------------------------

  async marketContext(latest = true): Promise<MarketContext> {
    return this.request<MarketContext>('/market-context', { query: { latest: latest ? 1 : undefined } });
  }

  async reportCard(ticker: string): Promise<ReportCard> {
    return this.request<ReportCard>(`/report-card/${encodeURIComponent(ticker)}`);
  }

  async riskCluster(ticker: string): Promise<RiskCluster> {
    return this.request<RiskCluster>(`/risk-cluster/${encodeURIComponent(ticker)}`);
  }

  async embedding(ticker: string): Promise<Embedding> {
    return this.request<Embedding>(`/embedding/${encodeURIComponent(ticker)}`);
  }

  // -- account --------------------------------------------------------------

  async usage(): Promise<UsageStats> {
    return this.request<UsageStats>('/usage');
  }

  async manifest(): Promise<Record<string, unknown>> {
    return this.request('/manifest', { authed: false });
  }

  // -- low-level: escape hatch for endpoints we don't wrap ------------------

  async raw<T = unknown>(path: string, opts: RequestOpts = {}): Promise<T> {
    return this.request<T>(path, opts);
  }

  // -- internals ------------------------------------------------------------

  private async request<T>(path: string, opts: RequestOpts = {}): Promise<T> {
    const url = this.buildUrl(path, opts.query);
    const headers = this.buildHeaders(opts.authed !== false, opts.body !== undefined);
    const init: RequestInit = {
      method: opts.method ?? (opts.body ? 'POST' : 'GET'),
      headers,
      body: opts.body !== undefined ? JSON.stringify(opts.body) : undefined,
    };

    let lastErr: unknown;
    for (let attempt = 0; attempt <= this.retries; attempt++) {
      try {
        return await this.doRequest<T>(url, init);
      } catch (err) {
        lastErr = err;
        if (err instanceof RateLimitError) {
          const wait = (err.retryAfterSeconds ?? 1) * 1000;
          if (attempt < this.retries) {
            await sleep(wait);
            continue;
          }
        }
        if (err instanceof ServerError && attempt < this.retries) {
          await sleep(500 * Math.pow(2, attempt));
          continue;
        }
        throw err;
      }
    }
    throw lastErr;
  }

  private async doRequest<T>(url: string, init: RequestInit): Promise<T> {
    const controller = new AbortController();
    const timer = setTimeout(() => controller.abort(), this.timeoutMs);
    let resp: Response;
    try {
      resp = await this.fetchImpl(url, { ...init, signal: controller.signal });
    } finally {
      clearTimeout(timer);
    }

    if (!resp.ok) {
      const body = await safeBody(resp);
      const msg = extractMessage(body) ?? resp.statusText;
      switch (resp.status) {
        case 401:
        case 403:
          if (typeof msg === 'string' && /tier|upgrade|plan/i.test(msg)) {
            throw new TierError(msg, { status: resp.status, body });
          }
          throw new AuthError(msg, { status: resp.status, body });
        case 404:
          throw new NotFoundError(msg, { status: resp.status, body });
        case 429: {
          const ra = resp.headers.get('retry-after');
          throw new RateLimitError(msg, {
            status: resp.status,
            body,
            retryAfterSeconds: ra ? Number(ra) : undefined,
          });
        }
        default:
          if (resp.status >= 500) {
            throw new ServerError(msg, { status: resp.status, body });
          }
          throw new FactorWeaveError(msg, { status: resp.status, body });
      }
    }
    return (await resp.json()) as T;
  }

  private buildUrl(path: string, query?: RequestOpts['query']): string {
    const url = `${this.baseUrl}${path.startsWith('/') ? path : `/${path}`}`;
    if (!query) return url;
    const params = new URLSearchParams();
    for (const [k, v] of Object.entries(query)) {
      if (v === undefined || v === null) continue;
      params.append(k, String(v));
    }
    const qs = params.toString();
    return qs ? `${url}?${qs}` : url;
  }

  private buildHeaders(authed: boolean, hasBody: boolean): Record<string, string> {
    const h: Record<string, string> = {
      Accept: 'application/json',
      'User-Agent': this.userAgent,
    };
    if (hasBody) h['Content-Type'] = 'application/json';
    if (!authed) return h;
    if (this.apiKey) h['X-API-Key'] = this.apiKey;
    else if (this.bearerToken) h['Authorization'] = `Bearer ${this.bearerToken}`;
    return h;
  }
}

async function safeBody(resp: Response): Promise<unknown> {
  try {
    const ct = resp.headers.get('content-type') ?? '';
    if (ct.includes('application/json')) return await resp.json();
    return await resp.text();
  } catch {
    return undefined;
  }
}

function extractMessage(body: unknown): string | undefined {
  if (typeof body === 'string') return body || undefined;
  if (body && typeof body === 'object') {
    const obj = body as Record<string, unknown>;
    if (typeof obj.error === 'string') return obj.error;
    if (typeof obj.message === 'string') return obj.message;
    if (obj.error && typeof obj.error === 'object' && typeof (obj.error as Record<string, unknown>).message === 'string') {
      return (obj.error as Record<string, string>).message;
    }
  }
  return undefined;
}

function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
