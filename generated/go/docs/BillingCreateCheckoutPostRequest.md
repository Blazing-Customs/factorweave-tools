# BillingCreateCheckoutPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tier** | **string** |  | 
**BillingPeriod** | Pointer to **string** |  | [optional] [default to "monthly"]

## Methods

### NewBillingCreateCheckoutPostRequest

`func NewBillingCreateCheckoutPostRequest(tier string, ) *BillingCreateCheckoutPostRequest`

NewBillingCreateCheckoutPostRequest instantiates a new BillingCreateCheckoutPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBillingCreateCheckoutPostRequestWithDefaults

`func NewBillingCreateCheckoutPostRequestWithDefaults() *BillingCreateCheckoutPostRequest`

NewBillingCreateCheckoutPostRequestWithDefaults instantiates a new BillingCreateCheckoutPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTier

`func (o *BillingCreateCheckoutPostRequest) GetTier() string`

GetTier returns the Tier field if non-nil, zero value otherwise.

### GetTierOk

`func (o *BillingCreateCheckoutPostRequest) GetTierOk() (*string, bool)`

GetTierOk returns a tuple with the Tier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTier

`func (o *BillingCreateCheckoutPostRequest) SetTier(v string)`

SetTier sets Tier field to given value.


### GetBillingPeriod

`func (o *BillingCreateCheckoutPostRequest) GetBillingPeriod() string`

GetBillingPeriod returns the BillingPeriod field if non-nil, zero value otherwise.

### GetBillingPeriodOk

`func (o *BillingCreateCheckoutPostRequest) GetBillingPeriodOk() (*string, bool)`

GetBillingPeriodOk returns a tuple with the BillingPeriod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBillingPeriod

`func (o *BillingCreateCheckoutPostRequest) SetBillingPeriod(v string)`

SetBillingPeriod sets BillingPeriod field to given value.

### HasBillingPeriod

`func (o *BillingCreateCheckoutPostRequest) HasBillingPeriod() bool`

HasBillingPeriod returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


