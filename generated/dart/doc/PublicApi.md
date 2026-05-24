# factorweave.api.PublicApi

## Load the API package
```dart
import 'package:factorweave/api.dart';
```

All URIs are relative to *https://factorweave.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configGet**](PublicApi.md#configget) | **GET** /config | Runtime feature flags
[**demoTickerGet**](PublicApi.md#demotickerget) | **GET** /demo/{ticker} | No-auth taste — one of the sample tickers
[**demoTickersGet**](PublicApi.md#demotickersget) | **GET** /demo/tickers | The demo-sample ticker list (8 names)
[**healthGet**](PublicApi.md#healthget) | **GET** /health | Liveness check
[**manifestGet**](PublicApi.md#manifestget) | **GET** /manifest | Static bundle metadata
[**statusGet**](PublicApi.md#statusget) | **GET** /status | Detailed health + bundle freshness + degraded status


# **configGet**
> configGet()

Runtime feature flags

paid_tiers_enabled and Stripe publishable key. Read by the frontend at boot.

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();

try {
    api_instance.configGet();
} catch (e) {
    print('Exception when calling PublicApi->configGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoTickerGet**
> demoTickerGet(ticker)

No-auth taste — one of the sample tickers

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();
final ticker = AAPL; // String | Uppercase US ticker symbol.

try {
    api_instance.demoTickerGet(ticker);
} catch (e) {
    print('Exception when calling PublicApi->demoTickerGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **String**| Uppercase US ticker symbol. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoTickersGet**
> demoTickersGet()

The demo-sample ticker list (8 names)

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();

try {
    api_instance.demoTickersGet();
} catch (e) {
    print('Exception when calling PublicApi->demoTickersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthGet**
> Error healthGet()

Liveness check

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();

try {
    final result = api_instance.healthGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicApi->healthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Error**](Error.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **manifestGet**
> manifestGet()

Static bundle metadata

latest_date, ticker_count, generated_at, file map. Use this to know when the data refreshed.

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();

try {
    api_instance.manifestGet();
} catch (e) {
    print('Exception when calling PublicApi->manifestGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statusGet**
> statusGet()

Detailed health + bundle freshness + degraded status

Returns 503 when degraded (bundle stale, DB unreachable, etc.) — designed for uptime monitors.

### Example
```dart
import 'package:factorweave/api.dart';

final api_instance = PublicApi();

try {
    api_instance.statusGet();
} catch (e) {
    print('Exception when calling PublicApi->statusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

