# \VectorSearchApi

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vector_search_similar_ticker_get**](VectorSearchApi.md#vector_search_similar_ticker_get) | **GET** /vector-search/similar/{ticker} | Top-K nearest setups by similarity



## vector_search_similar_ticker_get

> models::VectorSearchSimilarTickerGet200Response vector_search_similar_ticker_get(ticker, method, limit, min_lookback_days)
Top-K nearest setups by similarity

Tier-gated: cosine (FREE+), dtw (HOBBY+), label_aware (PRO+), supervised (QUANT). Each neighbor row carries its factor row + forward-return labels pre-joined.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ticker** | **String** | Uppercase US ticker symbol. | [required] |
**method** | Option<**String**> |  |  |[default to cosine]
**limit** | Option<**i32**> |  |  |[default to 50]
**min_lookback_days** | Option<**i32**> | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. |  |[default to 0]

### Return type

[**models::VectorSearchSimilarTickerGet200Response**](_vector_search_similar__ticker__get_200_response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

