# AuthRegisterPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** |  | 
**Password** | **string** |  | 

## Methods

### NewAuthRegisterPostRequest

`func NewAuthRegisterPostRequest(email string, password string, ) *AuthRegisterPostRequest`

NewAuthRegisterPostRequest instantiates a new AuthRegisterPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthRegisterPostRequestWithDefaults

`func NewAuthRegisterPostRequestWithDefaults() *AuthRegisterPostRequest`

NewAuthRegisterPostRequestWithDefaults instantiates a new AuthRegisterPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *AuthRegisterPostRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *AuthRegisterPostRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *AuthRegisterPostRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetPassword

`func (o *AuthRegisterPostRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *AuthRegisterPostRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *AuthRegisterPostRequest) SetPassword(v string)`

SetPassword sets Password field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


