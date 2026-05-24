# Factorweave

Quantitative factor data, vector similarity search, leak-free forward-return labels and derived market analytics (factor dispersion, regime, risk-cluster tags, 32-D embeddings) for ~12,000 US-listed tickers.

**Auth:** all data endpoints require either a `Bearer <jwt>` (obtain via POST /auth/login) or an `X-API-Key: fw_live_…` header (mint at /me/keys). Tier gating is enforced per endpoint — see the [Tiers docs](https://factorweave.com/#docs).

**Honest framing:** the data is a research substrate, not a return-prediction service. Our own leak-free testing ([research note](https://factorweave.com/research.html)) shows factor similarity does not forecast returns; the supervised similarity method is a return-weighted projection, not an oracle.

For more information, please visit [https://factorweave.com/](https://factorweave.com/).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/Factorweave/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKeyAuth
$config = Factorweave\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Factorweave\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: bearerAuth
$config = Factorweave\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Factorweave\Api\AlertsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->alertsRulesGet();
} catch (Exception $e) {
    echo 'Exception when calling AlertsApi->alertsRulesGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://factorweave.com/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AlertsApi* | [**alertsRulesGet**](docs/Api/AlertsApi.md#alertsrulesget) | **GET** /alerts/rules | List your alert rules
*AlertsApi* | [**alertsRulesIdDelete**](docs/Api/AlertsApi.md#alertsrulesiddelete) | **DELETE** /alerts/rules/{id} | Delete an alert rule
*AlertsApi* | [**alertsRulesPost**](docs/Api/AlertsApi.md#alertsrulespost) | **POST** /alerts/rules | Create an alert rule
*AuthApi* | [**authLoginPost**](docs/Api/AuthApi.md#authloginpost) | **POST** /auth/login | Exchange email + password for a JWT
*AuthApi* | [**authMeGet**](docs/Api/AuthApi.md#authmeget) | **GET** /auth/me | Current user profile + tier + daily usage
*AuthApi* | [**authRegisterPost**](docs/Api/AuthApi.md#authregisterpost) | **POST** /auth/register | Create account (free tier)
*AuthApi* | [**meKeysGet**](docs/Api/AuthApi.md#mekeysget) | **GET** /me/keys | List your long-lived dev API keys
*AuthApi* | [**meKeysIdDelete**](docs/Api/AuthApi.md#mekeysiddelete) | **DELETE** /me/keys/{id} | Revoke a dev API key
*AuthApi* | [**meKeysPost**](docs/Api/AuthApi.md#mekeyspost) | **POST** /me/keys | Mint a new dev API key
*BillingApi* | [**billingCreateCheckoutPost**](docs/Api/BillingApi.md#billingcreatecheckoutpost) | **POST** /billing/create-checkout | Stripe Checkout URL for a tier upgrade
*BillingApi* | [**billingCreatePortalPost**](docs/Api/BillingApi.md#billingcreateportalpost) | **POST** /billing/create-portal | Stripe Billing Portal URL
*BillingApi* | [**billingWebhookPost**](docs/Api/BillingApi.md#billingwebhookpost) | **POST** /billing/webhook | Stripe webhook receiver
*DataApi* | [**csvFeaturesGet**](docs/Api/DataApi.md#csvfeaturesget) | **GET** /csv/features | CSV export of a ticker&#39;s features
*DataApi* | [**featuresTickerGet**](docs/Api/DataApi.md#featurestickerget) | **GET** /features/{ticker} | Factor row for a ticker
*DataApi* | [**topGet**](docs/Api/DataApi.md#topget) | **GET** /top | Top-N tickers by a factor
*DerivedAnalyticsApi* | [**embeddingTickerGet**](docs/Api/DerivedAnalyticsApi.md#embeddingtickerget) | **GET** /embedding/{ticker} | Raw 32-D regime-aware embedding vector (QUANT)
*DerivedAnalyticsApi* | [**marketContextGet**](docs/Api/DerivedAnalyticsApi.md#marketcontextget) | **GET** /market-context | Whole-universe factor dispersion, breadth, regime
*DerivedAnalyticsApi* | [**reportCardTickerGet**](docs/Api/DerivedAnalyticsApi.md#reportcardtickerget) | **GET** /report-card/{ticker} | Per-ticker digest — ranks, regime, risk cluster, unusualness (HOBBY+)
*DerivedAnalyticsApi* | [**riskClusterTickerGet**](docs/Api/DerivedAnalyticsApi.md#riskclustertickerget) | **GET** /risk-cluster/{ticker} | Volatility regime a ticker&#39;s factor analogues landed in (PRO+)
*LabelsApi* | [**labelsTickerGet**](docs/Api/LabelsApi.md#labelstickerget) | **GET** /labels/{ticker} | Leak-free forward-return labels (PRO+)
*MCPApi* | [**mcpPost**](docs/Api/MCPApi.md#mcppost) | **POST** /mcp | Model Context Protocol — stateless streamable-HTTP
*PublicApi* | [**configGet**](docs/Api/PublicApi.md#configget) | **GET** /config | Runtime feature flags
*PublicApi* | [**demoTickerGet**](docs/Api/PublicApi.md#demotickerget) | **GET** /demo/{ticker} | No-auth taste — one of the sample tickers
*PublicApi* | [**demoTickersGet**](docs/Api/PublicApi.md#demotickersget) | **GET** /demo/tickers | The demo-sample ticker list (8 names)
*PublicApi* | [**healthGet**](docs/Api/PublicApi.md#healthget) | **GET** /health | Liveness check
*PublicApi* | [**manifestGet**](docs/Api/PublicApi.md#manifestget) | **GET** /manifest | Static bundle metadata
*PublicApi* | [**statusGet**](docs/Api/PublicApi.md#statusget) | **GET** /status | Detailed health + bundle freshness + degraded status
*UsageApi* | [**recentActivityGet**](docs/Api/UsageApi.md#recentactivityget) | **GET** /recent-activity | Your last 50 API calls
*UsageApi* | [**usageGet**](docs/Api/UsageApi.md#usageget) | **GET** /usage | Today + month-to-date stats
*VectorSearchApi* | [**vectorSearchSimilarTickerGet**](docs/Api/VectorSearchApi.md#vectorsearchsimilartickerget) | **GET** /vector-search/similar/{ticker} | Top-K nearest setups by similarity

## Models

- [AlertsRulesPostRequest](docs/Model/AlertsRulesPostRequest.md)
- [AuthLoginPostRequest](docs/Model/AuthLoginPostRequest.md)
- [AuthRegisterPostRequest](docs/Model/AuthRegisterPostRequest.md)
- [BillingCreateCheckoutPostRequest](docs/Model/BillingCreateCheckoutPostRequest.md)
- [EmbeddingTickerGet200Response](docs/Model/EmbeddingTickerGet200Response.md)
- [Error](docs/Model/Error.md)
- [FeatureRow](docs/Model/FeatureRow.md)
- [LoginResponse](docs/Model/LoginResponse.md)
- [MeKeysPostRequest](docs/Model/MeKeysPostRequest.md)
- [NeighborRow](docs/Model/NeighborRow.md)
- [TierGateError](docs/Model/TierGateError.md)
- [VectorSearchSimilarTickerGet200Response](docs/Model/VectorSearchSimilarTickerGet200Response.md)

## Authorization

Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication (JWT)

### apiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@factorweave.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Generator version: `7.10.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
