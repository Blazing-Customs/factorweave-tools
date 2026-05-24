# NeighborRow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ticker** | Pointer to **string** |  | [optional] 
**Date** | Pointer to **string** |  | [optional] 
**Rank** | Pointer to **int32** |  | [optional] 
**Score** | Pointer to **float32** |  | [optional] 
**Features** | Pointer to [**FeatureRow**](FeatureRow.md) |  | [optional] 
**Labels** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewNeighborRow

`func NewNeighborRow() *NeighborRow`

NewNeighborRow instantiates a new NeighborRow object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNeighborRowWithDefaults

`func NewNeighborRowWithDefaults() *NeighborRow`

NewNeighborRowWithDefaults instantiates a new NeighborRow object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTicker

`func (o *NeighborRow) GetTicker() string`

GetTicker returns the Ticker field if non-nil, zero value otherwise.

### GetTickerOk

`func (o *NeighborRow) GetTickerOk() (*string, bool)`

GetTickerOk returns a tuple with the Ticker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicker

`func (o *NeighborRow) SetTicker(v string)`

SetTicker sets Ticker field to given value.

### HasTicker

`func (o *NeighborRow) HasTicker() bool`

HasTicker returns a boolean if a field has been set.

### GetDate

`func (o *NeighborRow) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *NeighborRow) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *NeighborRow) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *NeighborRow) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetRank

`func (o *NeighborRow) GetRank() int32`

GetRank returns the Rank field if non-nil, zero value otherwise.

### GetRankOk

`func (o *NeighborRow) GetRankOk() (*int32, bool)`

GetRankOk returns a tuple with the Rank field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRank

`func (o *NeighborRow) SetRank(v int32)`

SetRank sets Rank field to given value.

### HasRank

`func (o *NeighborRow) HasRank() bool`

HasRank returns a boolean if a field has been set.

### GetScore

`func (o *NeighborRow) GetScore() float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *NeighborRow) GetScoreOk() (*float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *NeighborRow) SetScore(v float32)`

SetScore sets Score field to given value.

### HasScore

`func (o *NeighborRow) HasScore() bool`

HasScore returns a boolean if a field has been set.

### GetFeatures

`func (o *NeighborRow) GetFeatures() FeatureRow`

GetFeatures returns the Features field if non-nil, zero value otherwise.

### GetFeaturesOk

`func (o *NeighborRow) GetFeaturesOk() (*FeatureRow, bool)`

GetFeaturesOk returns a tuple with the Features field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeatures

`func (o *NeighborRow) SetFeatures(v FeatureRow)`

SetFeatures sets Features field to given value.

### HasFeatures

`func (o *NeighborRow) HasFeatures() bool`

HasFeatures returns a boolean if a field has been set.

### GetLabels

`func (o *NeighborRow) GetLabels() map[string]interface{}`

GetLabels returns the Labels field if non-nil, zero value otherwise.

### GetLabelsOk

`func (o *NeighborRow) GetLabelsOk() (*map[string]interface{}, bool)`

GetLabelsOk returns a tuple with the Labels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabels

`func (o *NeighborRow) SetLabels(v map[string]interface{})`

SetLabels sets Labels field to given value.

### HasLabels

`func (o *NeighborRow) HasLabels() bool`

HasLabels returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


