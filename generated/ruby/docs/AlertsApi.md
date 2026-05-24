# Factorweave::AlertsApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**alerts_rules_get**](AlertsApi.md#alerts_rules_get) | **GET** /alerts/rules | List your alert rules |
| [**alerts_rules_id_delete**](AlertsApi.md#alerts_rules_id_delete) | **DELETE** /alerts/rules/{id} | Delete an alert rule |
| [**alerts_rules_post**](AlertsApi.md#alerts_rules_post) | **POST** /alerts/rules | Create an alert rule |


## alerts_rules_get

> alerts_rules_get

List your alert rules

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

api_instance = Factorweave::AlertsApi.new

begin
  # List your alert rules
  api_instance.alerts_rules_get
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_get: #{e}"
end
```

#### Using the alerts_rules_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alerts_rules_get_with_http_info

```ruby
begin
  # List your alert rules
  data, status_code, headers = api_instance.alerts_rules_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_get_with_http_info: #{e}"
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


## alerts_rules_id_delete

> alerts_rules_id_delete(id)

Delete an alert rule

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

api_instance = Factorweave::AlertsApi.new
id = 56 # Integer | 

begin
  # Delete an alert rule
  api_instance.alerts_rules_id_delete(id)
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_id_delete: #{e}"
end
```

#### Using the alerts_rules_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alerts_rules_id_delete_with_http_info(id)

```ruby
begin
  # Delete an alert rule
  data, status_code, headers = api_instance.alerts_rules_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_id_delete_with_http_info: #{e}"
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


## alerts_rules_post

> alerts_rules_post(alerts_rules_post_request)

Create an alert rule

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

api_instance = Factorweave::AlertsApi.new
alerts_rules_post_request = Factorweave::AlertsRulesPostRequest.new({name: 'name_example', indicator: 'rsi', condition: '>', value: 3.56}) # AlertsRulesPostRequest | 

begin
  # Create an alert rule
  api_instance.alerts_rules_post(alerts_rules_post_request)
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_post: #{e}"
end
```

#### Using the alerts_rules_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> alerts_rules_post_with_http_info(alerts_rules_post_request)

```ruby
begin
  # Create an alert rule
  data, status_code, headers = api_instance.alerts_rules_post_with_http_info(alerts_rules_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling AlertsApi->alerts_rules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alerts_rules_post_request** | [**AlertsRulesPostRequest**](AlertsRulesPostRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

