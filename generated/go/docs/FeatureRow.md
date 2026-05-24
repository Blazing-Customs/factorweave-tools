# FeatureRow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ticker** | Pointer to **string** |  | [optional] 
**Date** | Pointer to **string** |  | [optional] 
**Rsi** | Pointer to **NullableFloat32** |  | [optional] 
**Mom** | Pointer to **NullableFloat32** | Momentum | [optional] 
**Meanrev** | Pointer to **NullableFloat32** |  | [optional] 
**Rv20** | Pointer to **NullableFloat32** | 20-day realized volatility | [optional] 
**BetaSpy** | Pointer to **NullableFloat32** |  | [optional] 
**CompScore** | Pointer to **NullableFloat32** |  | [optional] 
**QCompScore** | Pointer to **NullableInt32** | Cross-sectional percentile (0–100) | [optional] 

## Methods

### NewFeatureRow

`func NewFeatureRow() *FeatureRow`

NewFeatureRow instantiates a new FeatureRow object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFeatureRowWithDefaults

`func NewFeatureRowWithDefaults() *FeatureRow`

NewFeatureRowWithDefaults instantiates a new FeatureRow object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTicker

`func (o *FeatureRow) GetTicker() string`

GetTicker returns the Ticker field if non-nil, zero value otherwise.

### GetTickerOk

`func (o *FeatureRow) GetTickerOk() (*string, bool)`

GetTickerOk returns a tuple with the Ticker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicker

`func (o *FeatureRow) SetTicker(v string)`

SetTicker sets Ticker field to given value.

### HasTicker

`func (o *FeatureRow) HasTicker() bool`

HasTicker returns a boolean if a field has been set.

### GetDate

`func (o *FeatureRow) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *FeatureRow) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *FeatureRow) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *FeatureRow) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetRsi

`func (o *FeatureRow) GetRsi() float32`

GetRsi returns the Rsi field if non-nil, zero value otherwise.

### GetRsiOk

`func (o *FeatureRow) GetRsiOk() (*float32, bool)`

GetRsiOk returns a tuple with the Rsi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRsi

`func (o *FeatureRow) SetRsi(v float32)`

SetRsi sets Rsi field to given value.

### HasRsi

`func (o *FeatureRow) HasRsi() bool`

HasRsi returns a boolean if a field has been set.

### SetRsiNil

`func (o *FeatureRow) SetRsiNil(b bool)`

 SetRsiNil sets the value for Rsi to be an explicit nil

### UnsetRsi
`func (o *FeatureRow) UnsetRsi()`

UnsetRsi ensures that no value is present for Rsi, not even an explicit nil
### GetMom

`func (o *FeatureRow) GetMom() float32`

GetMom returns the Mom field if non-nil, zero value otherwise.

### GetMomOk

`func (o *FeatureRow) GetMomOk() (*float32, bool)`

GetMomOk returns a tuple with the Mom field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMom

`func (o *FeatureRow) SetMom(v float32)`

SetMom sets Mom field to given value.

### HasMom

`func (o *FeatureRow) HasMom() bool`

HasMom returns a boolean if a field has been set.

### SetMomNil

`func (o *FeatureRow) SetMomNil(b bool)`

 SetMomNil sets the value for Mom to be an explicit nil

### UnsetMom
`func (o *FeatureRow) UnsetMom()`

UnsetMom ensures that no value is present for Mom, not even an explicit nil
### GetMeanrev

`func (o *FeatureRow) GetMeanrev() float32`

GetMeanrev returns the Meanrev field if non-nil, zero value otherwise.

### GetMeanrevOk

`func (o *FeatureRow) GetMeanrevOk() (*float32, bool)`

GetMeanrevOk returns a tuple with the Meanrev field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeanrev

`func (o *FeatureRow) SetMeanrev(v float32)`

SetMeanrev sets Meanrev field to given value.

### HasMeanrev

`func (o *FeatureRow) HasMeanrev() bool`

HasMeanrev returns a boolean if a field has been set.

### SetMeanrevNil

`func (o *FeatureRow) SetMeanrevNil(b bool)`

 SetMeanrevNil sets the value for Meanrev to be an explicit nil

### UnsetMeanrev
`func (o *FeatureRow) UnsetMeanrev()`

UnsetMeanrev ensures that no value is present for Meanrev, not even an explicit nil
### GetRv20

`func (o *FeatureRow) GetRv20() float32`

GetRv20 returns the Rv20 field if non-nil, zero value otherwise.

### GetRv20Ok

`func (o *FeatureRow) GetRv20Ok() (*float32, bool)`

GetRv20Ok returns a tuple with the Rv20 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRv20

`func (o *FeatureRow) SetRv20(v float32)`

SetRv20 sets Rv20 field to given value.

### HasRv20

`func (o *FeatureRow) HasRv20() bool`

HasRv20 returns a boolean if a field has been set.

### SetRv20Nil

`func (o *FeatureRow) SetRv20Nil(b bool)`

 SetRv20Nil sets the value for Rv20 to be an explicit nil

### UnsetRv20
`func (o *FeatureRow) UnsetRv20()`

UnsetRv20 ensures that no value is present for Rv20, not even an explicit nil
### GetBetaSpy

`func (o *FeatureRow) GetBetaSpy() float32`

GetBetaSpy returns the BetaSpy field if non-nil, zero value otherwise.

### GetBetaSpyOk

`func (o *FeatureRow) GetBetaSpyOk() (*float32, bool)`

GetBetaSpyOk returns a tuple with the BetaSpy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBetaSpy

`func (o *FeatureRow) SetBetaSpy(v float32)`

SetBetaSpy sets BetaSpy field to given value.

### HasBetaSpy

`func (o *FeatureRow) HasBetaSpy() bool`

HasBetaSpy returns a boolean if a field has been set.

### SetBetaSpyNil

`func (o *FeatureRow) SetBetaSpyNil(b bool)`

 SetBetaSpyNil sets the value for BetaSpy to be an explicit nil

### UnsetBetaSpy
`func (o *FeatureRow) UnsetBetaSpy()`

UnsetBetaSpy ensures that no value is present for BetaSpy, not even an explicit nil
### GetCompScore

`func (o *FeatureRow) GetCompScore() float32`

GetCompScore returns the CompScore field if non-nil, zero value otherwise.

### GetCompScoreOk

`func (o *FeatureRow) GetCompScoreOk() (*float32, bool)`

GetCompScoreOk returns a tuple with the CompScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompScore

`func (o *FeatureRow) SetCompScore(v float32)`

SetCompScore sets CompScore field to given value.

### HasCompScore

`func (o *FeatureRow) HasCompScore() bool`

HasCompScore returns a boolean if a field has been set.

### SetCompScoreNil

`func (o *FeatureRow) SetCompScoreNil(b bool)`

 SetCompScoreNil sets the value for CompScore to be an explicit nil

### UnsetCompScore
`func (o *FeatureRow) UnsetCompScore()`

UnsetCompScore ensures that no value is present for CompScore, not even an explicit nil
### GetQCompScore

`func (o *FeatureRow) GetQCompScore() int32`

GetQCompScore returns the QCompScore field if non-nil, zero value otherwise.

### GetQCompScoreOk

`func (o *FeatureRow) GetQCompScoreOk() (*int32, bool)`

GetQCompScoreOk returns a tuple with the QCompScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQCompScore

`func (o *FeatureRow) SetQCompScore(v int32)`

SetQCompScore sets QCompScore field to given value.

### HasQCompScore

`func (o *FeatureRow) HasQCompScore() bool`

HasQCompScore returns a boolean if a field has been set.

### SetQCompScoreNil

`func (o *FeatureRow) SetQCompScoreNil(b bool)`

 SetQCompScoreNil sets the value for QCompScore to be an explicit nil

### UnsetQCompScore
`func (o *FeatureRow) UnsetQCompScore()`

UnsetQCompScore ensures that no value is present for QCompScore, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


