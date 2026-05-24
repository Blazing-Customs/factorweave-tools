# Factorweave::UsageApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**recent_activity_get**](UsageApi.md#recent_activity_get) | **GET** /recent-activity | Your last 50 API calls |
| [**usage_get**](UsageApi.md#usage_get) | **GET** /usage | Today + month-to-date stats |


## recent_activity_get

> recent_activity_get

Your last 50 API calls

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

api_instance = Factorweave::UsageApi.new

begin
  # Your last 50 API calls
  api_instance.recent_activity_get
rescue Factorweave::ApiError => e
  puts "Error when calling UsageApi->recent_activity_get: #{e}"
end
```

#### Using the recent_activity_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> recent_activity_get_with_http_info

```ruby
begin
  # Your last 50 API calls
  data, status_code, headers = api_instance.recent_activity_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling UsageApi->recent_activity_get_with_http_info: #{e}"
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


## usage_get

> usage_get

Today + month-to-date stats

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

api_instance = Factorweave::UsageApi.new

begin
  # Today + month-to-date stats
  api_instance.usage_get
rescue Factorweave::ApiError => e
  puts "Error when calling UsageApi->usage_get: #{e}"
end
```

#### Using the usage_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> usage_get_with_http_info

```ruby
begin
  # Today + month-to-date stats
  data, status_code, headers = api_instance.usage_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling UsageApi->usage_get_with_http_info: #{e}"
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

