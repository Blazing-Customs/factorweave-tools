# VectorSearchSimilarTickerGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryTicker** | Pointer to **string** |  | [optional] 
**QueryDate** | Pointer to **string** |  | [optional] 
**Neighbors** | Pointer to [**[]NeighborRow**](NeighborRow.md) |  | [optional] 

## Methods

### NewVectorSearchSimilarTickerGet200Response

`func NewVectorSearchSimilarTickerGet200Response() *VectorSearchSimilarTickerGet200Response`

NewVectorSearchSimilarTickerGet200Response instantiates a new VectorSearchSimilarTickerGet200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVectorSearchSimilarTickerGet200ResponseWithDefaults

`func NewVectorSearchSimilarTickerGet200ResponseWithDefaults() *VectorSearchSimilarTickerGet200Response`

NewVectorSearchSimilarTickerGet200ResponseWithDefaults instantiates a new VectorSearchSimilarTickerGet200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetQueryTicker

`func (o *VectorSearchSimilarTickerGet200Response) GetQueryTicker() string`

GetQueryTicker returns the QueryTicker field if non-nil, zero value otherwise.

### GetQueryTickerOk

`func (o *VectorSearchSimilarTickerGet200Response) GetQueryTickerOk() (*string, bool)`

GetQueryTickerOk returns a tuple with the QueryTicker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryTicker

`func (o *VectorSearchSimilarTickerGet200Response) SetQueryTicker(v string)`

SetQueryTicker sets QueryTicker field to given value.

### HasQueryTicker

`func (o *VectorSearchSimilarTickerGet200Response) HasQueryTicker() bool`

HasQueryTicker returns a boolean if a field has been set.

### GetQueryDate

`func (o *VectorSearchSimilarTickerGet200Response) GetQueryDate() string`

GetQueryDate returns the QueryDate field if non-nil, zero value otherwise.

### GetQueryDateOk

`func (o *VectorSearchSimilarTickerGet200Response) GetQueryDateOk() (*string, bool)`

GetQueryDateOk returns a tuple with the QueryDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueryDate

`func (o *VectorSearchSimilarTickerGet200Response) SetQueryDate(v string)`

SetQueryDate sets QueryDate field to given value.

### HasQueryDate

`func (o *VectorSearchSimilarTickerGet200Response) HasQueryDate() bool`

HasQueryDate returns a boolean if a field has been set.

### GetNeighbors

`func (o *VectorSearchSimilarTickerGet200Response) GetNeighbors() []NeighborRow`

GetNeighbors returns the Neighbors field if non-nil, zero value otherwise.

### GetNeighborsOk

`func (o *VectorSearchSimilarTickerGet200Response) GetNeighborsOk() (*[]NeighborRow, bool)`

GetNeighborsOk returns a tuple with the Neighbors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNeighbors

`func (o *VectorSearchSimilarTickerGet200Response) SetNeighbors(v []NeighborRow)`

SetNeighbors sets Neighbors field to given value.

### HasNeighbors

`func (o *VectorSearchSimilarTickerGet200Response) HasNeighbors() bool`

HasNeighbors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


