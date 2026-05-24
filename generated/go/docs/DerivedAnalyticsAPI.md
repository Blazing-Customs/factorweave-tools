# \DerivedAnalyticsAPI

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EmbeddingTickerGet**](DerivedAnalyticsAPI.md#EmbeddingTickerGet) | **Get** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT)
[**MarketContextGet**](DerivedAnalyticsAPI.md#MarketContextGet) | **Get** /market-context | Whole-universe factor dispersion, breadth, regime
[**ReportCardTickerGet**](DerivedAnalyticsAPI.md#ReportCardTickerGet) | **Get** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
[**RiskClusterTickerGet**](DerivedAnalyticsAPI.md#RiskClusterTickerGet) | **Get** /risk-cluster/{ticker} | Volatility regime a ticker&#39;s factor analogues landed in (PRO+)



## EmbeddingTickerGet

> EmbeddingTickerGet200Response EmbeddingTickerGet(ctx, ticker).Execute()

Raw 32-D regime-aware embedding vector (QUANT)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	ticker := "AAPL" // string | Uppercase US ticker symbol.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DerivedAnalyticsAPI.EmbeddingTickerGet(context.Background(), ticker).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DerivedAnalyticsAPI.EmbeddingTickerGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EmbeddingTickerGet`: EmbeddingTickerGet200Response
	fmt.Fprintf(os.Stdout, "Response from `DerivedAnalyticsAPI.EmbeddingTickerGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ticker** | **string** | Uppercase US ticker symbol. | 

### Other Parameters

Other parameters are passed through a pointer to a apiEmbeddingTickerGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**EmbeddingTickerGet200Response**](EmbeddingTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MarketContextGet

> MarketContextGet(ctx).Latest(latest).Execute()

Whole-universe factor dispersion, breadth, regime



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	latest := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DerivedAnalyticsAPI.MarketContextGet(context.Background()).Latest(latest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DerivedAnalyticsAPI.MarketContextGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiMarketContextGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latest** | **int32** |  | 

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReportCardTickerGet

> ReportCardTickerGet(ctx, ticker).Execute()

Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	ticker := "AAPL" // string | Uppercase US ticker symbol.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DerivedAnalyticsAPI.ReportCardTickerGet(context.Background(), ticker).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DerivedAnalyticsAPI.ReportCardTickerGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ticker** | **string** | Uppercase US ticker symbol. | 

### Other Parameters

Other parameters are passed through a pointer to a apiReportCardTickerGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RiskClusterTickerGet

> RiskClusterTickerGet(ctx, ticker).Execute()

Volatility regime a ticker's factor analogues landed in (PRO+)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	ticker := "AAPL" // string | Uppercase US ticker symbol.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DerivedAnalyticsAPI.RiskClusterTickerGet(context.Background(), ticker).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DerivedAnalyticsAPI.RiskClusterTickerGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ticker** | **string** | Uppercase US ticker symbol. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRiskClusterTickerGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

