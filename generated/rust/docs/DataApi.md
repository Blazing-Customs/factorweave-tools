# \DataApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**csv_features_get**](DataApi.md#csv_features_get) | **GET** /csv/features | CSV export of a ticker's features
[**features_ticker_get**](DataApi.md#features_ticker_get) | **GET** /features/{ticker} | Factor row for a ticker
[**top_get**](DataApi.md#top_get) | **GET** /top | Top-N tickers by a factor



## csv_features_get

> String csv_features_get(ticker)
CSV export of a ticker's features

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** |  | [required] |

### Return type

**String**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## features_ticker_get

> Vec<models::FeatureRow> features_ticker_get(ticker, date, start_date, end_date)
Factor row for a ticker

No date params → latest single row. ?date= → that exact date. ?start_date= & ?end_date= → range. History covers the last 252 trading days.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** | Uppercase US ticker symbol. | [required] |
**date** | Option<**String**> |  |  |
**start_date** | Option<**String**> |  |  |
**end_date** | Option<**String**> |  |  |

### Return type

[**Vec<models::FeatureRow>**](FeatureRow.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## top_get

> top_get(factor, n, direction)
Top-N tickers by a factor

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**factor** | **String** | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, … | [required] |
**n** | Option<**i32**> |  |  |[default to 25]
**direction** | Option<**String**> |  |  |[default to desc]

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

