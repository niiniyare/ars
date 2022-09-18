# SeatAvailabilityPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | AirGateway order ID | [optional] [default to null]
**Passengers** | [**[]Passenger**](Passenger.md) |  | [optional] [default to null]
**ReshopOfferID** | **string** | The offerID provided in OrderReshopReprice response on the rebooking process. Used when request SeatAvailable is called on the rebooking stage because order has seats. | [optional] [default to null]
**SegmentID** | **string** | Segment ID. Use when need to fetch a certain segment of flight | [optional] [default to null]
**ShoppingResponseID** | **string** | The responseID provided in OfferPrice response. Use when request SeatAvailability on Pre-Booking stage | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


