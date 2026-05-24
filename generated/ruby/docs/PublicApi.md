# Factorweave::PublicApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**config_get**](PublicApi.md#config_get) | **GET** /config | Runtime feature flags |
| [**demo_ticker_get**](PublicApi.md#demo_ticker_get) | **GET** /demo/{ticker} | No-auth taste — one of the sample tickers |
| [**demo_tickers_get**](PublicApi.md#demo_tickers_get) | **GET** /demo/tickers | The demo-sample ticker list (8 names) |
| [**health_get**](PublicApi.md#health_get) | **GET** /health | Liveness check |
| [**manifest_get**](PublicApi.md#manifest_get) | **GET** /manifest | Static bundle metadata |
| [**status_get**](PublicApi.md#status_get) | **GET** /status | Detailed health + bundle freshness + degraded status |


## config_get

> config_get

Runtime feature flags

paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new

begin
  # Runtime feature flags
  api_instance.config_get
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->config_get: #{e}"
end
```

#### Using the config_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> config_get_with_http_info

```ruby
begin
  # Runtime feature flags
  data, status_code, headers = api_instance.config_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->config_get_with_http_info: #{e}"
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


## demo_ticker_get

> demo_ticker_get(ticker)

No-auth taste — one of the sample tickers

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.

begin
  # No-auth taste — one of the sample tickers
  api_instance.demo_ticker_get(ticker)
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->demo_ticker_get: #{e}"
end
```

#### Using the demo_ticker_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> demo_ticker_get_with_http_info(ticker)

```ruby
begin
  # No-auth taste — one of the sample tickers
  data, status_code, headers = api_instance.demo_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->demo_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## demo_tickers_get

> demo_tickers_get

The demo-sample ticker list (8 names)

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new

begin
  # The demo-sample ticker list (8 names)
  api_instance.demo_tickers_get
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->demo_tickers_get: #{e}"
end
```

#### Using the demo_tickers_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> demo_tickers_get_with_http_info

```ruby
begin
  # The demo-sample ticker list (8 names)
  data, status_code, headers = api_instance.demo_tickers_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->demo_tickers_get_with_http_info: #{e}"
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


## health_get

> <Error> health_get

Liveness check

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new

begin
  # Liveness check
  result = api_instance.health_get
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->health_get: #{e}"
end
```

#### Using the health_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> health_get_with_http_info

```ruby
begin
  # Liveness check
  data, status_code, headers = api_instance.health_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->health_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Error**](Error.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## manifest_get

> manifest_get

Static bundle metadata

latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new

begin
  # Static bundle metadata
  api_instance.manifest_get
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->manifest_get: #{e}"
end
```

#### Using the manifest_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> manifest_get_with_http_info

```ruby
begin
  # Static bundle metadata
  data, status_code, headers = api_instance.manifest_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->manifest_get_with_http_info: #{e}"
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


## status_get

> status_get

Detailed health + bundle freshness + degraded status

Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.

### Examples

```ruby
require 'time'
require 'factorweave'

api_instance = Factorweave::PublicApi.new

begin
  # Detailed health + bundle freshness + degraded status
  api_instance.status_get
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->status_get: #{e}"
end
```

#### Using the status_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> status_get_with_http_info

```ruby
begin
  # Detailed health + bundle freshness + degraded status
  data, status_code, headers = api_instance.status_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling PublicApi->status_get_with_http_info: #{e}"
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

