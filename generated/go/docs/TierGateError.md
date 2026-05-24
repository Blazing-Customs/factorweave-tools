# TierGateError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | Pointer to **string** |  | [optional] 
**YourTier** | Pointer to **string** |  | [optional] 
**RequiredTier** | Pointer to **string** |  | [optional] 

## Methods

### NewTierGateError

`func NewTierGateError() *TierGateError`

NewTierGateError instantiates a new TierGateError object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTierGateErrorWithDefaults

`func NewTierGateErrorWithDefaults() *TierGateError`

NewTierGateErrorWithDefaults instantiates a new TierGateError object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDetail

`func (o *TierGateError) GetDetail() string`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *TierGateError) GetDetailOk() (*string, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *TierGateError) SetDetail(v string)`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *TierGateError) HasDetail() bool`

HasDetail returns a boolean if a field has been set.

### GetYourTier

`func (o *TierGateError) GetYourTier() string`

GetYourTier returns the YourTier field if non-nil, zero value otherwise.

### GetYourTierOk

`func (o *TierGateError) GetYourTierOk() (*string, bool)`

GetYourTierOk returns a tuple with the YourTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetYourTier

`func (o *TierGateError) SetYourTier(v string)`

SetYourTier sets YourTier field to given value.

### HasYourTier

`func (o *TierGateError) HasYourTier() bool`

HasYourTier returns a boolean if a field has been set.

### GetRequiredTier

`func (o *TierGateError) GetRequiredTier() string`

GetRequiredTier returns the RequiredTier field if non-nil, zero value otherwise.

### GetRequiredTierOk

`func (o *TierGateError) GetRequiredTierOk() (*string, bool)`

GetRequiredTierOk returns a tuple with the RequiredTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredTier

`func (o *TierGateError) SetRequiredTier(v string)`

SetRequiredTier sets RequiredTier field to given value.

### HasRequiredTier

`func (o *TierGateError) HasRequiredTier() bool`

HasRequiredTier returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


