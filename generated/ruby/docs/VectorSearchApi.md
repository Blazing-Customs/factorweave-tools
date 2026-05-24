# Factorweave::VectorSearchApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**vector_search_similar_ticker_get**](VectorSearchApi.md#vector_search_similar_ticker_get) | **GET** /vector-search/similar/{ticker} | Top-K nearest setups by similarity |


## vector_search_similar_ticker_get

> <VectorSearchSimilarTickerGet200Response> vector_search_similar_ticker_get(ticker, opts)

Top-K nearest setups by similarity

Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.

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

api_instance = Factorweave::VectorSearchApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.
opts = {
  method: 'cosine', # String | 
  limit: 56, # Integer | 
  min_lookback_days: 56 # Integer | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs.
}

begin
  # Top-K nearest setups by similarity
  result = api_instance.vector_search_similar_ticker_get(ticker, opts)
  p result
rescue Factorweave::ApiError => e
  puts "Error when calling VectorSearchApi->vector_search_similar_ticker_get: #{e}"
end
```

#### Using the vector_search_similar_ticker_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VectorSearchSimilarTickerGet200Response>, Integer, Hash)> vector_search_similar_ticker_get_with_http_info(ticker, opts)

```ruby
begin
  # Top-K nearest setups by similarity
  data, status_code, headers = api_instance.vector_search_similar_ticker_get_with_http_info(ticker, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VectorSearchSimilarTickerGet200Response>
rescue Factorweave::ApiError => e
  puts "Error when calling VectorSearchApi->vector_search_similar_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Uppercase US ticker symbol. |  |
| **method** | **String** |  | [optional][default to &#39;cosine&#39;] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **min_lookback_days** | **Integer** | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. | [optional][default to 0] |

### Return type

[**VectorSearchSimilarTickerGet200Response**](VectorSearchSimilarTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

