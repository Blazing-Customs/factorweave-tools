# \PublicApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**config_get**](PublicApi.md#config_get) | **GET** /config | Runtime feature flags
[**demo_ticker_get**](PublicApi.md#demo_ticker_get) | **GET** /demo/{ticker} | No-auth taste — one of the sample tickers
[**demo_tickers_get**](PublicApi.md#demo_tickers_get) | **GET** /demo/tickers | The demo-sample ticker list (8 names)
[**health_get**](PublicApi.md#health_get) | **GET** /health | Liveness check
[**manifest_get**](PublicApi.md#manifest_get) | **GET** /manifest | Static bundle metadata
[**status_get**](PublicApi.md#status_get) | **GET** /status | Detailed health + bundle freshness + degraded status



## config_get

> config_get()
Runtime feature flags

paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## demo_ticker_get

> demo_ticker_get(ticker)
No-auth taste — one of the sample tickers

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** | Uppercase US ticker symbol. | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## demo_tickers_get

> demo_tickers_get()
The demo-sample ticker list (8 names)

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## health_get

> models::Error health_get()
Liveness check

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::Error**](Error.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## manifest_get

> manifest_get()
Static bundle metadata

latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## status_get

> status_get()
Detailed health + bundle freshness + degraded status

Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.

### Parameters

This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

