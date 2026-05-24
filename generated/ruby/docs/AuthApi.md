# Factorweave::AuthApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auth_login_post**](AuthApi.md#auth_login_post) | **POST** /auth/login | Exchange email + password for a JWT |
| [**auth_me_get**](AuthApi.md#auth_me_get) | **GET** /auth/me | Current user profile + tier + daily usage |
| [**auth_register_post**](AuthApi.md#auth_register_post) | **POST** /auth/register | Create account (free tier) |
| [**me_keys_get**](AuthApi.md#me_keys_get) | **GET** /me/keys | List your long-lived dev API keys |
| [**me_keys_id_delete**](AuthApi.md#me_keys_id_delete) | **DELETE** /me/keys/{id} | Revoke a dev API key |
| [**me_keys_post**](AuthApi.md#me_keys_post) | **POST** /me/keys | Mint a new dev API key |


## auth_login_post

> <LoginResponse> auth_login_post(auth_login_post_request)

Exchange email + password for a JWT

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::AuthApi.new
auth_login_post_request = Factorweave::AuthLoginPostRequest.new({email: 'email_example', password: 'password_example'}) # AuthLoginPostRequest | 

begin
  # Exchange email + password for a JWT
  result = api_instance.auth_login_post(auth_login_post_request)
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_login_post: #{e}"
end
```

#### Using the auth_login_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResponse>, Integer, Hash)> auth_login_post_with_http_info(auth_login_post_request)

```ruby
begin
  # Exchange email + password for a JWT
  data, status_code, headers = api_instance.auth_login_post_with_http_info(auth_login_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResponse>
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_login_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_login_post_request** | [**AuthLoginPostRequest**](AuthLoginPostRequest.md) |  |  |

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## auth_me_get

> auth_me_get

Current user profile + tier + daily usage

### Examples

```ruby
require 'time'
require 'factorweave'
# setup authorization
Factorweave.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Factorweave::AuthApi.new

begin
  # Current user profile + tier + daily usage
  api_instance.auth_me_get
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_me_get: #{e}"
end
```

#### Using the auth_me_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> auth_me_get_with_http_info

```ruby
begin
  # Current user profile + tier + daily usage
  data, status_code, headers = api_instance.auth_me_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_me_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## auth_register_post

> auth_register_post(auth_register_post_request)

Create account (free tier)

Always creates a FREE account regardless of submitted subscription_tier — paid upgrades happen via Stripe Checkout (POST /billing/create-checkout).

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::AuthApi.new
auth_register_post_request = Factorweave::AuthRegisterPostRequest.new({email: 'email_example', password: 'password_example'}) # AuthRegisterPostRequest | 

begin
  # Create account (free tier)
  api_instance.auth_register_post(auth_register_post_request)
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_register_post: #{e}"
end
```

#### Using the auth_register_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> auth_register_post_with_http_info(auth_register_post_request)

```ruby
begin
  # Create account (free tier)
  data, status_code, headers = api_instance.auth_register_post_with_http_info(auth_register_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->auth_register_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_register_post_request** | [**AuthRegisterPostRequest**](AuthRegisterPostRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## me_keys_get

> me_keys_get

List your long-lived dev API keys

### Examples

```ruby
require 'time'
require 'factorweave'
# setup authorization
Factorweave.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Factorweave::AuthApi.new

begin
  # List your long-lived dev API keys
  api_instance.me_keys_get
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_get: #{e}"
end
```

#### Using the me_keys_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> me_keys_get_with_http_info

```ruby
begin
  # List your long-lived dev API keys
  data, status_code, headers = api_instance.me_keys_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## me_keys_id_delete

> me_keys_id_delete(id)

Revoke a dev API key

### Examples

```ruby
require 'time'
require 'factorweave'
# setup authorization
Factorweave.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Factorweave::AuthApi.new
id = 56 # Integer | 

begin
  # Revoke a dev API key
  api_instance.me_keys_id_delete(id)
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_id_delete: #{e}"
end
```

#### Using the me_keys_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> me_keys_id_delete_with_http_info(id)

```ruby
begin
  # Revoke a dev API key
  data, status_code, headers = api_instance.me_keys_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## me_keys_post

> me_keys_post(opts)

Mint a new dev API key

### Examples

```ruby
require 'time'
require 'factorweave'
# setup authorization
Factorweave.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Factorweave::AuthApi.new
opts = {
  me_keys_post_request: Factorweave::MeKeysPostRequest.new # MeKeysPostRequest | 
}

begin
  # Mint a new dev API key
  api_instance.me_keys_post(opts)
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_post: #{e}"
end
```

#### Using the me_keys_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> me_keys_post_with_http_info(opts)

```ruby
begin
  # Mint a new dev API key
  data, status_code, headers = api_instance.me_keys_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AuthApi->me_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **me_keys_post_request** | [**MeKeysPostRequest**](MeKeysPostRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

