# \LabelsApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**labels_ticker_get**](LabelsApi.md#labels_ticker_get) | **GET** /labels/{ticker} | Leak-free forward-return labels (PRO+)



## labels_ticker_get

> labels_ticker_get(ticker)
Leak-free forward-return labels (PRO+)

fwd_ret_1d/5d/20d + binary targets (target_1d_up1, target_5d_up3, target_20d_up10). Last 252 trading days.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** | Uppercase US ticker symbol. | [required] |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

