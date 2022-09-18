# OrderReshopRefundMedia

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Flights** | [**[]Flight**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null]
**OriginalOrder** | [***Price**](Price.md) |  | [optional] [default to null]
**Penalty** | [***Price**](Price.md) |  | [optional] [default to null]
**Refund** | [***Price**](Price.md) |  | [optional] [default to null]
**Seats** | [**[]Seat**](Seat.md) | List of seats | [optional] [default to null]
**Services** | [**[]Service**](Service.md) | List of services | [optional] [default to null]
**Tickets** | [**[]TicketInfo**](TicketInfo.md) | Tickets information | [optional] [default to null]
**VoidPermited** | **bool** | Some airlines returns the voiding option in the OrderReshop Refund. In this way, this field indicates if the OrderCancel will be executed. | [optional] [default to null]
**Warnings** | [**[]OrderLog**](OrderLog.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


