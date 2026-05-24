# Factorweave::EmbeddingTickerGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** |  | [optional] |
| **as_of** | **Date** |  | [optional] |
| **dim** | **Integer** |  | [optional] |
| **embedding** | **Array&lt;Float&gt;** |  | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::EmbeddingTickerGet200Response.new(
  ticker: null,
  as_of: null,
  dim: 32,
  embedding: null
)
```

