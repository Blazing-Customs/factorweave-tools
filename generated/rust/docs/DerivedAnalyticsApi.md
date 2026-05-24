# \DerivedAnalyticsApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**embedding_ticker_get**](DerivedAnalyticsApi.md#embedding_ticker_get) | **GET** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT)
[**market_context_get**](DerivedAnalyticsApi.md#market_context_get) | **GET** /market-context | Whole-universe factor dispersion, breadth, regime
[**report_card_ticker_get**](DerivedAnalyticsApi.md#report_card_ticker_get) | **GET** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
[**risk_cluster_ticker_get**](DerivedAnalyticsApi.md#risk_cluster_ticker_get) | **GET** /risk-cluster/{ticker} | Volatility regime a ticker's factor analogues landed in (PRO+)



## embedding_ticker_get

> models::EmbeddingTickerGet200Response embedding_ticker_get(ticker)
Raw 32-D regime-aware embedding vector (QUANT)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** | Uppercase US ticker symbol. | [required] |

### Return type

[**models::EmbeddingTickerGet200Response**](_embedding__ticker__get_200_response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## market_context_get

> market_context_get(latest)
Whole-universe factor dispersion, breadth, regime

FREE = today's reading only; HOBBY+ = full 252-day history. ?latest=1 trims to today for any tier.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**latest** | Option<**i32**> |  |  |

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## report_card_ticker_get

> report_card_ticker_get(ticker)
Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)

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


## risk_cluster_ticker_get

> risk_cluster_ticker_get(ticker)
Volatility regime a ticker's factor analogues landed in (PRO+)

calm / normal / stressed — derived from neighbours' realized forward vol. A risk-coherence signal, not a vol forecast.

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

