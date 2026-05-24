# \VectorSearchAPI

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**VectorSearchSimilarTickerGet**](VectorSearchAPI.md#VectorSearchSimilarTickerGet) | **Get** /vector-search/similar/{ticker} | Top-K nearest setups by similarity



## VectorSearchSimilarTickerGet

> VectorSearchSimilarTickerGet200Response VectorSearchSimilarTickerGet(ctx, ticker).Method(method).Limit(limit).MinLookbackDays(minLookbackDays).Execute()

Top-K nearest setups by similarity



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
	method := "method_example" // string |  (optional) (default to "cosine")
	limit := int32(56) // int32 |  (optional) (default to 50)
	minLookbackDays := int32(56) // int32 | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. (optional) (default to 0)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VectorSearchAPI.VectorSearchSimilarTickerGet(context.Background(), ticker).Method(method).Limit(limit).MinLookbackDays(minLookbackDays).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VectorSearchAPI.VectorSearchSimilarTickerGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VectorSearchSimilarTickerGet`: VectorSearchSimilarTickerGet200Response
	fmt.Fprintf(os.Stdout, "Response from `VectorSearchAPI.VectorSearchSimilarTickerGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ticker** | **string** | Uppercase US ticker symbol. | 

### Other Parameters

Other parameters are passed through a pointer to a apiVectorSearchSimilarTickerGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **method** | **string** |  | [default to &quot;cosine&quot;]
 **limit** | **int32** |  | [default to 50]
 **minLookbackDays** | **int32** | Require neighbor_date ≥ min_lookback_days before query_date. Use 30 to filter same-day co-moving ETFs. | [default to 0]

### Return type

[**VectorSearchSimilarTickerGet200Response**](VectorSearchSimilarTickerGet200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

