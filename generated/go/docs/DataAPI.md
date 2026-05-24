# \DataAPI

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CsvFeaturesGet**](DataAPI.md#CsvFeaturesGet) | **Get** /csv/features | CSV export of a ticker&#39;s features
[**FeaturesTickerGet**](DataAPI.md#FeaturesTickerGet) | **Get** /features/{ticker} | Factor row for a ticker
[**TopGet**](DataAPI.md#TopGet) | **Get** /top | Top-N tickers by a factor



## CsvFeaturesGet

> string CsvFeaturesGet(ctx).Ticker(ticker).Execute()

CSV export of a ticker's features

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
	ticker := "ticker_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DataAPI.CsvFeaturesGet(context.Background()).Ticker(ticker).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DataAPI.CsvFeaturesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CsvFeaturesGet`: string
	fmt.Fprintf(os.Stdout, "Response from `DataAPI.CsvFeaturesGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCsvFeaturesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **string** |  | 

### Return type

**string**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FeaturesTickerGet

> []FeatureRow FeaturesTickerGet(ctx, ticker).Date(date).StartDate(startDate).EndDate(endDate).Execute()

Factor row for a ticker



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	ticker := "AAPL" // string | Uppercase US ticker symbol.
	date := time.Now() // string |  (optional)
	startDate := time.Now() // string |  (optional)
	endDate := time.Now() // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DataAPI.FeaturesTickerGet(context.Background(), ticker).Date(date).StartDate(startDate).EndDate(endDate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DataAPI.FeaturesTickerGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `FeaturesTickerGet`: []FeatureRow
	fmt.Fprintf(os.Stdout, "Response from `DataAPI.FeaturesTickerGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ticker** | **string** | Uppercase US ticker symbol. | 

### Other Parameters

Other parameters are passed through a pointer to a apiFeaturesTickerGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **date** | **string** |  | 
 **startDate** | **string** |  | 
 **endDate** | **string** |  | 

### Return type

[**[]FeatureRow**](FeatureRow.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TopGet

> TopGet(ctx).Factor(factor).N(n).Direction(direction).Execute()

Top-N tickers by a factor

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
	factor := "factor_example" // string | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, …
	n := int32(56) // int32 |  (optional) (default to 25)
	direction := "direction_example" // string |  (optional) (default to "desc")

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DataAPI.TopGet(context.Background()).Factor(factor).N(n).Direction(direction).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DataAPI.TopGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTopGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **factor** | **string** | mom, meanrev, comp_score, rsi, z_52w, beta_spy, gap_pct, … | 
 **n** | **int32** |  | [default to 25]
 **direction** | **string** |  | [default to &quot;desc&quot;]

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

