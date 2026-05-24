# AuthLoginPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** |  | 
**Password** | **string** |  | 

## Methods

### NewAuthLoginPostRequest

`func NewAuthLoginPostRequest(email string, password string, ) *AuthLoginPostRequest`

NewAuthLoginPostRequest instantiates a new AuthLoginPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthLoginPostRequestWithDefaults

`func NewAuthLoginPostRequestWithDefaults() *AuthLoginPostRequest`

NewAuthLoginPostRequestWithDefaults instantiates a new AuthLoginPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *AuthLoginPostRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *AuthLoginPostRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *AuthLoginPostRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetPassword

`func (o *AuthLoginPostRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *AuthLoginPostRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *AuthLoginPostRequest) SetPassword(v string)`

SetPassword sets Password field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


