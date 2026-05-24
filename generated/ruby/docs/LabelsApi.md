# Factorweave::LabelsApi

All URIs are relative to *https://factorweave.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**labels_ticker_get**](LabelsApi.md#labels_ticker_get) | **GET** /labels/{ticker} | Leak-free forward-return labels (PRO+) |


## labels_ticker_get

> labels_ticker_get(ticker)

Leak-free forward-return labels (PRO+)

fwd_ret_1d/5d/20d + binary targets (target_1d_up1, target_5d_up3, target_20d_up10). Last 252 trading days.

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

api_instance = Factorweave::LabelsApi.new
ticker = 'AAPL' # String | Uppercase US ticker symbol.

begin
  # Leak-free forward-return labels (PRO+)
  api_instance.labels_ticker_get(ticker)
rescue Factorweave::ApiError => e
  puts "Error when calling LabelsApi->labels_ticker_get: #{e}"
end
```

#### Using the labels_ticker_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> labels_ticker_get_with_http_info(ticker)

```ruby
begin
  # Leak-free forward-return labels (PRO+)
  data, status_code, headers = api_instance.labels_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Factorweave::ApiError => e
  puts "Error when calling LabelsApi->labels_ticker_get_with_http_info: #{e}"
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

