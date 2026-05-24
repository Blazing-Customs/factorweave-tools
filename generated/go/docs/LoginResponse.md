# LoginResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | Pointer to **string** |  | [optional] 
**TokenType** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **int32** |  | [optional] 
**Email** | Pointer to **string** |  | [optional] 
**SubscriptionTier** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewLoginResponse

`func NewLoginResponse() *LoginResponse`

NewLoginResponse instantiates a new LoginResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLoginResponseWithDefaults

`func NewLoginResponseWithDefaults() *LoginResponse`

NewLoginResponseWithDefaults instantiates a new LoginResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *LoginResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *LoginResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *LoginResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.

### HasAccessToken

`func (o *LoginResponse) HasAccessToken() bool`

HasAccessToken returns a boolean if a field has been set.

### GetTokenType

`func (o *LoginResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *LoginResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *LoginResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *LoginResponse) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.

### GetUserId

`func (o *LoginResponse) GetUserId() int32`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *LoginResponse) GetUserIdOk() (*int32, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *LoginResponse) SetUserId(v int32)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *LoginResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetEmail

`func (o *LoginResponse) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *LoginResponse) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *LoginResponse) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *LoginResponse) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetSubscriptionTier

`func (o *LoginResponse) GetSubscriptionTier() string`

GetSubscriptionTier returns the SubscriptionTier field if non-nil, zero value otherwise.

### GetSubscriptionTierOk

`func (o *LoginResponse) GetSubscriptionTierOk() (*string, bool)`

GetSubscriptionTierOk returns a tuple with the SubscriptionTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubscriptionTier

`func (o *LoginResponse) SetSubscriptionTier(v string)`

SetSubscriptionTier sets SubscriptionTier field to given value.

### HasSubscriptionTier

`func (o *LoginResponse) HasSubscriptionTier() bool`

HasSubscriptionTier returns a boolean if a field has been set.

### GetExpiresAt

`func (o *LoginResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *LoginResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *LoginResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *LoginResponse) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


