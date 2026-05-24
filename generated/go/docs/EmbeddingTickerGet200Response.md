# EmbeddingTickerGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ticker** | Pointer to **string** |  | [optional] 
**AsOf** | Pointer to **string** |  | [optional] 
**Dim** | Pointer to **int32** |  | [optional] 
**Embedding** | Pointer to **[]float32** |  | [optional] 

## Methods

### NewEmbeddingTickerGet200Response

`func NewEmbeddingTickerGet200Response() *EmbeddingTickerGet200Response`

NewEmbeddingTickerGet200Response instantiates a new EmbeddingTickerGet200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEmbeddingTickerGet200ResponseWithDefaults

`func NewEmbeddingTickerGet200ResponseWithDefaults() *EmbeddingTickerGet200Response`

NewEmbeddingTickerGet200ResponseWithDefaults instantiates a new EmbeddingTickerGet200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTicker

`func (o *EmbeddingTickerGet200Response) GetTicker() string`

GetTicker returns the Ticker field if non-nil, zero value otherwise.

### GetTickerOk

`func (o *EmbeddingTickerGet200Response) GetTickerOk() (*string, bool)`

GetTickerOk returns a tuple with the Ticker field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicker

`func (o *EmbeddingTickerGet200Response) SetTicker(v string)`

SetTicker sets Ticker field to given value.

### HasTicker

`func (o *EmbeddingTickerGet200Response) HasTicker() bool`

HasTicker returns a boolean if a field has been set.

### GetAsOf

`func (o *EmbeddingTickerGet200Response) GetAsOf() string`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *EmbeddingTickerGet200Response) GetAsOfOk() (*string, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *EmbeddingTickerGet200Response) SetAsOf(v string)`

SetAsOf sets AsOf field to given value.

### HasAsOf

`func (o *EmbeddingTickerGet200Response) HasAsOf() bool`

HasAsOf returns a boolean if a field has been set.

### GetDim

`func (o *EmbeddingTickerGet200Response) GetDim() int32`

GetDim returns the Dim field if non-nil, zero value otherwise.

### GetDimOk

`func (o *EmbeddingTickerGet200Response) GetDimOk() (*int32, bool)`

GetDimOk returns a tuple with the Dim field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDim

`func (o *EmbeddingTickerGet200Response) SetDim(v int32)`

SetDim sets Dim field to given value.

### HasDim

`func (o *EmbeddingTickerGet200Response) HasDim() bool`

HasDim returns a boolean if a field has been set.

### GetEmbedding

`func (o *EmbeddingTickerGet200Response) GetEmbedding() []float32`

GetEmbedding returns the Embedding field if non-nil, zero value otherwise.

### GetEmbeddingOk

`func (o *EmbeddingTickerGet200Response) GetEmbeddingOk() (*[]float32, bool)`

GetEmbeddingOk returns a tuple with the Embedding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmbedding

`func (o *EmbeddingTickerGet200Response) SetEmbedding(v []float32)`

SetEmbedding sets Embedding field to given value.

### HasEmbedding

`func (o *EmbeddingTickerGet200Response) HasEmbedding() bool`

HasEmbedding returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


