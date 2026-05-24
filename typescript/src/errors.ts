export class FactorWeaveError extends Error {
  readonly status?: number;
  readonly body?: unknown;
  constructor(message: string, opts: { status?: number; body?: unknown } = {}) {
    super(message);
    this.name = 'FactorWeaveError';
    this.status = opts.status;
    this.body = opts.body;
  }
}

export class AuthError extends FactorWeaveError {
  constructor(message = 'Authentication failed', opts: { status?: number; body?: unknown } = {}) {
    super(message, opts);
    this.name = 'AuthError';
  }
}

export class TierError extends FactorWeaveError {
  constructor(message = 'Your subscription tier does not include this endpoint', opts: { status?: number; body?: unknown } = {}) {
    super(message, opts);
    this.name = 'TierError';
  }
}

export class NotFoundError extends FactorWeaveError {
  constructor(message = 'Resource not found', opts: { status?: number; body?: unknown } = {}) {
    super(message, opts);
    this.name = 'NotFoundError';
  }
}

export class RateLimitError extends FactorWeaveError {
  readonly retryAfterSeconds?: number;
  constructor(message = 'Rate limit exceeded', opts: { status?: number; body?: unknown; retryAfterSeconds?: number } = {}) {
    super(message, opts);
    this.name = 'RateLimitError';
    this.retryAfterSeconds = opts.retryAfterSeconds;
  }
}

export class ServerError extends FactorWeaveError {
  constructor(message = 'Factor Weave server error', opts: { status?: number; body?: unknown } = {}) {
    super(message, opts);
    this.name = 'ServerError';
  }
}
