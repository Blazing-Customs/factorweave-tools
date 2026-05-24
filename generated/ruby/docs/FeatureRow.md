# Factorweave::FeatureRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** |  | [optional] |
| **date** | **Date** |  | [optional] |
| **rsi** | **Float** |  | [optional] |
| **mom** | **Float** | Momentum | [optional] |
| **meanrev** | **Float** |  | [optional] |
| **rv_20** | **Float** | 20-day realized volatility | [optional] |
| **beta_spy** | **Float** |  | [optional] |
| **comp_score** | **Float** |  | [optional] |
| **q_comp_score** | **Integer** | Cross-sectional percentile (0–100) | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::FeatureRow.new(
  ticker: null,
  date: null,
  rsi: null,
  mom: null,
  meanrev: null,
  rv_20: null,
  beta_spy: null,
  comp_score: null,
  q_comp_score: null
)
```

