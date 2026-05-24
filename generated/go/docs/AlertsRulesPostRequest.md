# AlertsRulesPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Indicator** | **string** |  | 
**Condition** | **string** |  | 
**Value** | **float32** |  | 
**Description** | Pointer to **string** |  | [optional] 

## Methods

### NewAlertsRulesPostRequest

`func NewAlertsRulesPostRequest(name string, indicator string, condition string, value float32, ) *AlertsRulesPostRequest`

NewAlertsRulesPostRequest instantiates a new AlertsRulesPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAlertsRulesPostRequestWithDefaults

`func NewAlertsRulesPostRequestWithDefaults() *AlertsRulesPostRequest`

NewAlertsRulesPostRequestWithDefaults instantiates a new AlertsRulesPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AlertsRulesPostRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AlertsRulesPostRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AlertsRulesPostRequest) SetName(v string)`

SetName sets Name field to given value.


### GetIndicator

`func (o *AlertsRulesPostRequest) GetIndicator() string`

GetIndicator returns the Indicator field if non-nil, zero value otherwise.

### GetIndicatorOk

`func (o *AlertsRulesPostRequest) GetIndicatorOk() (*string, bool)`

GetIndicatorOk returns a tuple with the Indicator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndicator

`func (o *AlertsRulesPostRequest) SetIndicator(v string)`

SetIndicator sets Indicator field to given value.


### GetCondition

`func (o *AlertsRulesPostRequest) GetCondition() string`

GetCondition returns the Condition field if non-nil, zero value otherwise.

### GetConditionOk

`func (o *AlertsRulesPostRequest) GetConditionOk() (*string, bool)`

GetConditionOk returns a tuple with the Condition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCondition

`func (o *AlertsRulesPostRequest) SetCondition(v string)`

SetCondition sets Condition field to given value.


### GetValue

`func (o *AlertsRulesPostRequest) GetValue() float32`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *AlertsRulesPostRequest) GetValueOk() (*float32, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *AlertsRulesPostRequest) SetValue(v float32)`

SetValue sets Value field to given value.


### GetDescription

`func (o *AlertsRulesPostRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AlertsRulesPostRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AlertsRulesPostRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AlertsRulesPostRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


