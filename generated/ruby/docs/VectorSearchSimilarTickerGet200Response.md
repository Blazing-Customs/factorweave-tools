# Factorweave::VectorSearchSimilarTickerGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_ticker** | **String** |  | [optional] |
| **query_date** | **Date** |  | [optional] |
| **neighbors** | [**Array&lt;NeighborRow&gt;**](NeighborRow.md) |  | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::VectorSearchSimilarTickerGet200Response.new(
  query_ticker: null,
  query_date: null,
  neighbors: null
)
```

