# Factorweave::LoginResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **user_id** | **Integer** |  | [optional] |
| **email** | **String** |  | [optional] |
| **subscription_tier** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |

## Example

```ruby
require 'factorweave'

instance = Factorweave::LoginResponse.new(
  access_token: null,
  token_type: bearer,
  user_id: null,
  email: null,
  subscription_tier: null,
  expires_at: null
)
```

