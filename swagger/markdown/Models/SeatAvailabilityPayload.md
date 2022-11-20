# SeatAvailabilityPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | AirGateway order ID | [optional] [default to null] |
| **passengers** | [**List**](Passenger.md) |  | [optional] [default to null] |
| **reshopOfferID** | **String** | The offerID provided in OrderReshopReprice response on the rebooking process. Used when request SeatAvailable is called on the rebooking stage because order has seats. | [optional] [default to null] |
| **segmentID** | **String** | Segment ID. Use when need to fetch a certain segment of flight | [optional] [default to null] |
| **shoppingResponseID** | **String** | The responseID provided in OfferPrice response. Use when request SeatAvailability on Pre-Booking stage | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

