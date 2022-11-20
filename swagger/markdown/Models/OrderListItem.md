# OrderListItem
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **agency** | **String** |  | [optional] [default to null] |
| **approveStatus** | **String** | Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok) | [optional] [default to null] |
| **bookingDate** | **String** |  | [optional] [default to null] |
| **bookingType** | **String** |  | [optional] [default to null] |
| **corporateID** | **String** | CorporateID for corporate orders | [optional] [default to null] |
| **disruptionStatus** | **String** | Disruption status (ScheduledTimeChange/FlightCancellation) | [optional] [default to null] |
| **flights** | [**List**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null] |
| **id** | **String** | AirGateway order ID | [optional] [default to null] |
| **orderID** | **String** |  | [optional] [default to null] |
| **owner** | **String** |  | [optional] [default to null] |
| **passengers** | [**List**](Passenger.md) |  | [optional] [default to null] |
| **paymentTimeLimit** | **String** | Payment time limit | [optional] [default to null] |
| **pnr** | **String** | PNR | [optional] [default to null] |
| **provider** | **String** |  | [optional] [default to null] |
| **status** | **String** | Order status (Pending/Confirmed/Canceled/Voided/Refunded) | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

