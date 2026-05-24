# Factorweave::DerivedAnalyticsApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**embedding_ticker_get**](DerivedAnalyticsApi.md#embedding_ticker_get) | **GET** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT) |
| [**market_context_get**](DerivedAnalyticsApi.md#market_context_get) | **GET** /market-context | Whole-universe factor dispersion, breadth, regime |
| [**report_card_ticker_get**](DerivedAnalyticsApi.md#report_card_ticker_get) | **GET** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+) |
| [**risk_cluster_ticker_get**](DerivedAnalyticsApi.md#risk_cluster_ticker_get) | **GET** /risk-cluster/{ticker} | Volatility regime a ticker&#39;s factor analogues landed in (PRO+) |


## embedding_ticker_get

> <EmbeddingTickerGet200Response> embedding_ticker_get(ticker)

Raw 32-D regime-aware embedding vector (QUANT)

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

api_instance = Factorweave::DerivedAnalyticsApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.

begin
  # Raw 32-D regime-aware embedding vector (QUANT)
  result = api_instance.embedding_ticker_get(ticker)
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->embedding_ticker_get: #{e}"
end
```

#### Using the embedding_ticker_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmbeddingTickerGet200Response>, Integer, Hash)> embedding_ticker_get_with_http_info(ticker)

```ruby
begin
  # Raw 32-D regime-aware embedding vector (QUANT)
  data, status_code, headers = api_instance.embedding_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmbeddingTickerGet200Response>
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->embedding_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |

### Return type

[**EmbeddingTickerGet200Response**](EmbeddingTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_context_get

> market_context_get(opts)

Whole-universe factor dispersion, breadth, regime

FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.

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

api_instance = Factorweave::DerivedAnalyticsApi.new
opts = {
  latest: 0 # Integer | 
}

begin
  # Whole-universe factor dispersion, breadth, regime
  api_instance.market_context_get(opts)
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->market_context_get: #{e}"
end
```

#### Using the market_context_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> market_context_get_with_http_info(opts)

```ruby
begin
  # Whole-universe factor dispersion, breadth, regime
  data, status_code, headers = api_instance.market_context_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->market_context_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latest** | **Integer** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## report_card_ticker_get

> report_card_ticker_get(ticker)

Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)

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

api_instance = Factorweave::DerivedAnalyticsApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.

begin
  # Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
  api_instance.report_card_ticker_get(ticker)
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->report_card_ticker_get: #{e}"
end
```

#### Using the report_card_ticker_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> report_card_ticker_get_with_http_info(ticker)

```ruby
begin
  # Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
  data, status_code, headers = api_instance.report_card_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->report_card_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## risk_cluster_ticker_get

> risk_cluster_ticker_get(ticker)

Volatility regime a ticker's factor analogues landed in (PRO+)

calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.

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

api_instance = Factorweave::DerivedAnalyticsApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.

begin
  # Volatility regime a ticker's factor analogues landed in (PRO+)
  api_instance.risk_cluster_ticker_get(ticker)
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->risk_cluster_ticker_get: #{e}"
end
```

#### Using the risk_cluster_ticker_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> risk_cluster_ticker_get_with_http_info(ticker)

```ruby
begin
  # Volatility regime a ticker's factor analogues landed in (PRO+)
  data, status_code, headers = api_instance.risk_cluster_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling DerivedAnalyticsApi->risk_cluster_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

