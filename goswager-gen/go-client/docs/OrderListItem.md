# OrderListItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agency** | **string** |  | [optional] [default to null]
**ApproveStatus** | **string** | Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok) | [optional] [default to null]
**BookingDate** | **string** |  | [optional] [default to null]
**BookingType** | **string** |  | [optional] [default to null]
**CorporateID** | **string** | CorporateID for corporate orders | [optional] [default to null]
**DisruptionStatus** | **string** | Disruption status (ScheduledTimeChange/FlightCancellation) | [optional] [default to null]
**Flights** | [**[]Flight**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null]
**Id** | **string** | AirGateway order ID | [optional] [default to null]
**OrderID** | **string** |  | [optional] [default to null]
**Owner** | **string** |  | [optional] [default to null]
**Passengers** | [**[]Passenger**](Passenger.md) |  | [optional] [default to null]
**PaymentTimeLimit** | **string** | Payment time limit | [optional] [default to null]
**Pnr** | **string** | PNR | [optional] [default to null]
**Provider** | **string** |  | [optional] [default to null]
**Status** | **string** | Order status (Pending/Confirmed/Canceled/Voided/Refunded) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


