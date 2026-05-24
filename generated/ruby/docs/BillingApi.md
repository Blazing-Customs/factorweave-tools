# Factorweave::BillingApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**billing_create_checkout_post**](BillingApi.md#billing_create_checkout_post) | **POST** /billing/create-checkout | Stripe Checkout URL for a tier upgrade |
| [**billing_create_portal_post**](BillingApi.md#billing_create_portal_post) | **POST** /billing/create-portal | Stripe Billing Portal URL |
| [**billing_webhook_post**](BillingApi.md#billing_webhook_post) | **POST** /billing/webhook | Stripe webhook receiver |


## billing_create_checkout_post

> billing_create_checkout_post(billing_create_checkout_post_request)

Stripe Checkout URL for a tier upgrade

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

api_instance = Factorweave::BillingApi.new
billing_create_checkout_post_request = Factorweave::BillingCreateCheckoutPostRequest.new({tier: 'HOBBY'}) # BillingCreateCheckoutPostRequest | 

begin
  # Stripe Checkout URL for a tier upgrade
  api_instance.billing_create_checkout_post(billing_create_checkout_post_request)
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_create_checkout_post: #{e}"
end
```

#### Using the billing_create_checkout_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_create_checkout_post_with_http_info(billing_create_checkout_post_request)

```ruby
begin
  # Stripe Checkout URL for a tier upgrade
  data, status_code, headers = api_instance.billing_create_checkout_post_with_http_info(billing_create_checkout_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_create_checkout_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_create_checkout_post_request** | [**BillingCreateCheckoutPostRequest**](BillingCreateCheckoutPostRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## billing_create_portal_post

> billing_create_portal_post

Stripe Billing Portal URL

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

api_instance = Factorweave::BillingApi.new

begin
  # Stripe Billing Portal URL
  api_instance.billing_create_portal_post
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_create_portal_post: #{e}"
end
```

#### Using the billing_create_portal_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_create_portal_post_with_http_info

```ruby
begin
  # Stripe Billing Portal URL
  data, status_code, headers = api_instance.billing_create_portal_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_create_portal_post_with_http_info: #{e}"
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


## billing_webhook_post

> billing_webhook_post

Stripe webhook receiver

Signature-verified inside the handler. Not for client use.

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::BillingApi.new

begin
  # Stripe webhook receiver
  api_instance.billing_webhook_post
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_webhook_post: #{e}"
end
```

#### Using the billing_webhook_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_webhook_post_with_http_info

```ruby
begin
  # Stripe webhook receiver
  data, status_code, headers = api_instance.billing_webhook_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling BillingApi->billing_webhook_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

