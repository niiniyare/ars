# ServiceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **string** | Action (Create/Cancel) | [default to null]
**Owner** | **string** | Service owner | [optional] [default to null]
**Quantity** | **float64** | Baggage type (deprecated) | [optional] [default to null]
**SeatLocation** | [***SeatLocation**](SeatLocation.md) |  | [optional] [default to null]
**SegmentReference** | **string** | Segment reference | [optional] [default to null]
**ServiceID** | **string** | Type of service (ID) | [optional] [default to null]
**Text** | **string** | Used in some services to indicate the quantity of some extra kilos in the baggage, the type of pet, etc... | [optional] [default to null]
**TravelerReference** | **string** | Traveler reference | [optional] [default to null]
**Type_** | **string** | Type of service object. Required for service object validation | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


