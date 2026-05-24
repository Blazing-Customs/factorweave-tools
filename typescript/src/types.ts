export interface FeatureRow {
  ticker: string;
  date: string;
  ret_1d?: number;
  ret_5d?: number;
  ret_20d?: number;
  ret_60d?: number;
  mom?: number;
  rsi?: number;
  atr_pct?: number;
  vol_real_20d?: number;
  vol_real_60d?: number;
  beta_spy?: number;
  comp_score?: number;
  q_comp_score?: number;
  [factor: string]: number | string | undefined;
}

export interface TopRow extends FeatureRow {
  rank?: number;
}

export interface NeighborHit {
  ticker: string;
  date: string;
  distance: number;
  method: 'cosine' | 'dtw' | 'label_aware' | 'supervised';
  features?: FeatureRow;
  labels?: {
    fwd_ret_1d?: number;
    fwd_ret_5d?: number;
    fwd_ret_20d?: number;
  };
}

export interface VectorSearchResponse {
  ticker: string;
  method: string;
  neighbors: NeighborHit[];
}

export interface LabelRow {
  date: string;
  fwd_ret_1d?: number;
  fwd_ret_5d?: number;
  fwd_ret_20d?: number;
  fwd_pos_5d?: 0 | 1;
  fwd_pos_20d?: 0 | 1;
}

export interface MarketContext {
  date: string;
  regime: 'low' | 'mid' | 'high';
  regime_age_days?: number;
  dispersion?: Record<string, number>;
  breadth?: Record<string, number>;
  regime_transition_odds?: Record<string, number>;
}

export interface ReportCard {
  ticker: string;
  date: string;
  ranks?: Record<string, number>;
  risk_cluster?: 'calm' | 'normal' | 'stressed';
  regime?: string;
  unusualness_score?: number;
}

export interface RiskCluster {
  ticker: string;
  date: string;
  cluster: 'calm' | 'normal' | 'stressed';
  realized_vol_fwd_20d?: number;
  confidence?: number;
}

export interface Embedding {
  ticker: string;
  date: string;
  vector: number[];
  dim: number;
}

export interface UsageStats {
  date: string;
  calls_today: number;
  daily_quota: number;
  remaining: number;
  tier: 'FREE' | 'HOBBY' | 'PRO' | 'QUANT';
}

export type SimilarityMethod = 'cosine' | 'dtw' | 'label_aware' | 'supervised';

export interface ClientOptions {
  apiKey?: string;
  bearerToken?: string;
  baseUrl?: string;
  timeoutMs?: number;
  retries?: number;
  userAgent?: string;
  fetch?: typeof fetch;
}

export interface FeaturesQuery {
  startDate?: string;
  endDate?: string;
  latest?: boolean;
}

export interface TopQuery {
  factor: string;
  n?: number;
  ascending?: boolean;
}

export interface SimilarQuery {
  method?: SimilarityMethod;
  limit?: number;
  minLookbackDays?: number;
}
