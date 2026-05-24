# Factorweave::DataApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**csv_features_get**](DataApi.md#csv_features_get) | **GET** /csv/features | CSV export of a ticker&#39;s features |
| [**features_ticker_get**](DataApi.md#features_ticker_get) | **GET** /features/{ticker} | Factor row for a ticker |
| [**top_get**](DataApi.md#top_get) | **GET** /top | Top-N tickers by a factor |


## csv_features_get

> String csv_features_get(ticker)

CSV export of a ticker's features

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

api_instance = Factorweave::DataApi.new
ticker = 'ticker_example' # String | 

begin
  # CSV export of a ticker's features
  result = api_instance.csv_features_get(ticker)
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->csv_features_get: #{e}"
end
```

#### Using the csv_features_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> csv_features_get_with_http_info(ticker)

```ruby
begin
  # CSV export of a ticker's features
  data, status_code, headers = api_instance.csv_features_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->csv_features_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** |  |  |

### Return type

**String**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv


## features_ticker_get

> <Array<FeatureRow>> features_ticker_get(ticker, opts)

Factor row for a ticker

No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.

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

api_instance = Factorweave::DataApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.
opts = {
  date: Date.parse('2013-10-20'), # Date | 
  start_date: Date.parse('2013-10-20'), # Date | 
  end_date: Date.parse('2013-10-20') # Date | 
}

begin
  # Factor row for a ticker
  result = api_instance.features_ticker_get(ticker, opts)
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->features_ticker_get: #{e}"
end
```

#### Using the features_ticker_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FeatureRow>>, Integer, Hash)> features_ticker_get_with_http_info(ticker, opts)

```ruby
begin
  # Factor row for a ticker
  data, status_code, headers = api_instance.features_ticker_get_with_http_info(ticker, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FeatureRow>>
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->features_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |
| **date** | **Date** |  | [optional] |
| **start_date** | **Date** |  | [optional] |
| **end_date** | **Date** |  | [optional] |

### Return type

[**Array&lt;FeatureRow&gt;**](FeatureRow.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## top_get

> top_get(factor, opts)

Top-N tickers by a factor

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

api_instance = Factorweave::DataApi.new
factor = 'factor_example' # String | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
opts = {
  n: 56, # Integer | 
  direction: 'asc' # String | 
}

begin
  # Top-N tickers by a factor
  api_instance.top_get(factor, opts)
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->top_get: #{e}"
end
```

#### Using the top_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> top_get_with_http_info(factor, opts)

```ruby
begin
  # Top-N tickers by a factor
  data, status_code, headers = api_instance.top_get_with_http_info(factor, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling DataApi->top_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **factor** | **String** | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, … |  |
| **n** | **Integer** |  | [optional][default to 25] |
| **direction** | **String** |  | [optional][default to &#39;desc&#39;] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

