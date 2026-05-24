# \BillingAPI

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BillingCreateCheckoutPost**](BillingAPI.md#BillingCreateCheckoutPost) | **Post** /billing/create-checkout | Stripe Checkout URL for a tier upgrade
[**BillingCreatePortalPost**](BillingAPI.md#BillingCreatePortalPost) | **Post** /billing/create-portal | Stripe Billing Portal URL
[**BillingWebhookPost**](BillingAPI.md#BillingWebhookPost) | **Post** /billing/webhook | Stripe webhook receiver



## BillingCreateCheckoutPost

> BillingCreateCheckoutPost(ctx).BillingCreateCheckoutPostRequest(billingCreateCheckoutPostRequest).Execute()

Stripe Checkout URL for a tier upgrade

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
	billingCreateCheckoutPostRequest := *openapiclient.NewBillingCreateCheckoutPostRequest("Tier_example") // BillingCreateCheckoutPostRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.BillingAPI.BillingCreateCheckoutPost(context.Background()).BillingCreateCheckoutPostRequest(billingCreateCheckoutPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.BillingCreateCheckoutPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiBillingCreateCheckoutPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingCreateCheckoutPostRequest** | [**BillingCreateCheckoutPostRequest**](BillingCreateCheckoutPostRequest.md) |  | 

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BillingCreatePortalPost

> BillingCreatePortalPost(ctx).Execute()

Stripe Billing Portal URL

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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.BillingAPI.BillingCreatePortalPost(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.BillingCreatePortalPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiBillingCreatePortalPostRequest struct via the builder pattern


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


## BillingWebhookPost

> BillingWebhookPost(ctx).Execute()

Stripe webhook receiver



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.BillingAPI.BillingWebhookPost(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.BillingWebhookPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiBillingWebhookPostRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

