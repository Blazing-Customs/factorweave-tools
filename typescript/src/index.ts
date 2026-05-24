export { FactorWeave } from './client.js';
export {
  FactorWeaveError, AuthError, TierError, NotFoundError, RateLimitError, ServerError,
} from './errors.js';
export type {
  ClientOptions, FeatureRow, TopRow, NeighborHit, VectorSearchResponse, LabelRow,
  MarketContext, ReportCard, RiskCluster, Embedding, UsageStats,
  SimilarityMethod, FeaturesQuery, TopQuery, SimilarQuery,
} from './types.js';
