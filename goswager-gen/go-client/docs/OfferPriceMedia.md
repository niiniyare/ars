# OfferPriceMedia

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgencyData** | [***AgencyData**](AgencyData.md) |  | [optional] [default to null]
**AllowedPaymentMethods** | [***AllowedPaymentMethods**](AllowedPaymentMethods.md) |  | [optional] [default to null]
**AllowedRequests** | [***OfferPriceAllowedRequests**](OfferPriceAllowedRequests.md) |  | [optional] [default to null]
**Benefits** | [***Benefit**](Benefit.md) |  | [optional] [default to null]
**CardSurcharges** | **interface{}** | A hash of surcharges indexed by the credit card type. | [optional] [default to null]
**CreatedAt** | **int64** | Unix time of created datetime | [optional] [default to null]
**Disclosures** | [**[]Disclosure**](Disclosure.md) |  | [optional] [default to null]
**Discounts** | [***DiscountPreferences**](DiscountPreferences.md) |  | [optional] [default to null]
**ExtraInfoMandatory** | **[]string** | A Bundle of fields which are not mandatory for all airlines, in that way, the API will check the airline config and return them. | [optional] [default to null]
**Flights** | [**[]Flight**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null]
**InstantPayment** | **string** | Instant payment field indicates agency has auto-issuing with &#39;agencyCash&#39; or &#39;agencyCard&#39; enabled. If this field is presented, payment method will be automatically selected | [optional] [default to null]
**OfferExpiration** | **string** | Offer expiration time | [optional] [default to null]
**OfferID** | **string** | The ID for this offer | [optional] [default to null]
**Owner** | **string** | The code of the provider that is really offering the flight | [optional] [default to null]
**Passengers** | [**[]Passenger**](Passenger.md) | List of referenced travelers | [optional] [default to null]
**PaymentTimeLimit** | **string** | Payment time limit | [optional] [default to null]
**Price** | [***Price**](Price.md) |  | [optional] [default to null]
**Remarks** | [***OfferPriceRemarks**](OfferPriceRemarks.md) |  | [optional] [default to null]
**ShoppingResponseID** | **string** | The ID of the response. Usually needed on the OrderCreate request (few providers don´t need it). | [optional] [default to null]
**SpecialServices** | [**[]Ssr**](SSR.md) | List of ancillaries allowed on pre-booking stage | [optional] [default to null]
**Warnings** | [**[]OrderLog**](OrderLog.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


