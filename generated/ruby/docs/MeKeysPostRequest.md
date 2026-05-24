# Factorweave::MeKeysPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **ttl_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::MeKeysPostRequest.new(
  name: local-dev,
  ttl_days: 365
)
```

