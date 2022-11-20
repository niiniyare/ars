# ServiceRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **action** | **String** | Action (Create/Cancel) | [default to null] |
| **owner** | **String** | Service owner | [optional] [default to null] |
| **quantity** | **Double** | Baggage type (deprecated) | [optional] [default to null] |
| **seatLocation** | [**SeatLocation**](SeatLocation.md) |  | [optional] [default to null] |
| **segmentReference** | **String** | Segment reference | [optional] [default to null] |
| **serviceID** | **String** | Type of service (ID) | [optional] [default to null] |
| **text** | **String** | Used in some services to indicate the quantity of some extra kilos in the baggage, the type of pet, etc... | [optional] [default to null] |
| **travelerReference** | **String** | Traveler reference | [optional] [default to null] |
| **type** | **String** | Type of service object. Required for service object validation | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

