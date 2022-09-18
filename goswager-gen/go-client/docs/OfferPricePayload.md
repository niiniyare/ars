# OfferPricePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OfferID** | **string** |  | [optional] [default to null]
**OfferIDs** | **[]string** |  | [optional] [default to null]
**ReshopOfferID** | **string** | The offerID provided in OrderReshopReprice response on the rebooking process. Used on the rebooking flow and order has services or seats to get the final real price of the re-offer and the services/seats. | [optional] [default to null]
**Services** | [**[]ServiceRequest**](ServiceRequest.md) | List of service objects (used on the rebooking flow only with some airlines) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


