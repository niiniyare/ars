# OfferPriceMedia
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **agencyData** | [**AgencyData**](AgencyData.md) |  | [optional] [default to null] |
| **allowedPaymentMethods** | [**AllowedPaymentMethods**](AllowedPaymentMethods.md) |  | [optional] [default to null] |
| **allowedRequests** | [**OfferPriceAllowedRequests**](OfferPriceAllowedRequests.md) |  | [optional] [default to null] |
| **benefits** | [**Benefit**](Benefit.md) |  | [optional] [default to null] |
| **cardSurcharges** | [**Object**](.md) | A hash of surcharges indexed by the credit card type. | [optional] [default to null] |
| **createdAt** | **Long** | Unix time of created datetime | [optional] [default to null] |
| **disclosures** | [**List**](Disclosure.md) |  | [optional] [default to null] |
| **discounts** | [**DiscountPreferences**](DiscountPreferences.md) |  | [optional] [default to null] |
| **extraInfoMandatory** | **List** | A Bundle of fields which are not mandatory for all airlines, in that way, the API will check the airline config and return them. | [optional] [default to null] |
| **flights** | [**List**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null] |
| **instantPayment** | **String** | Instant payment field indicates agency has auto-issuing with &#39;agencyCash&#39; or &#39;agencyCard&#39; enabled. If this field is presented, payment method will be automatically selected | [optional] [default to null] |
| **offerExpiration** | **String** | Offer expiration time | [optional] [default to null] |
| **offerID** | **String** | The ID for this offer | [optional] [default to null] |
| **owner** | **String** | The code of the provider that is really offering the flight | [optional] [default to null] |
| **passengers** | [**List**](Passenger.md) | List of referenced travelers | [optional] [default to null] |
| **paymentTimeLimit** | **String** | Payment time limit | [optional] [default to null] |
| **price** | [**Price**](Price.md) |  | [optional] [default to null] |
| **remarks** | [**OfferPriceRemarks**](OfferPriceRemarks.md) |  | [optional] [default to null] |
| **shoppingResponseID** | **String** | The ID of the response. Usually needed on the OrderCreate request (few providers don´t need it). | [optional] [default to null] |
| **specialServices** | [**List**](SSR.md) | List of ancillaries allowed on pre-booking stage | [optional] [default to null] |
| **warnings** | [**List**](OrderLog.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

