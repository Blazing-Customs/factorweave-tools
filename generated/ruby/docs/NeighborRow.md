# Factorweave::NeighborRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** |  | [optional] |
| **date** | **Date** |  | [optional] |
| **rank** | **Integer** |  | [optional] |
| **score** | **Float** |  | [optional] |
| **features** | [**FeatureRow**](FeatureRow.md) |  | [optional] |
| **labels** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::NeighborRow.new(
  ticker: null,
  date: null,
  rank: null,
  score: null,
  features: null,
  labels: null
)
```

