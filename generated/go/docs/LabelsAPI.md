# \LabelsAPI

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LabelsTickerGet**](LabelsAPI.md#LabelsTickerGet) | **Get** /labels/{ticker} | Leak-free forward-return labels (PRO+)



## LabelsTickerGet

> LabelsTickerGet(ctx, ticker).Execute()

Leak-free forward-return labels (PRO+)



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
	r, err := apiClient.LabelsAPI.LabelsTickerGet(context.Background(), ticker).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `LabelsAPI.LabelsTickerGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiLabelsTickerGetRequest struct via the builder pattern


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

