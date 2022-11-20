# OrderReshopRefundMedia
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **flights** | [**List**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null] |
| **originalOrder** | [**Price**](Price.md) |  | [optional] [default to null] |
| **penalty** | [**Price**](Price.md) |  | [optional] [default to null] |
| **refund** | [**Price**](Price.md) |  | [optional] [default to null] |
| **seats** | [**List**](Seat.md) | List of seats | [optional] [default to null] |
| **services** | [**List**](Service.md) | List of services | [optional] [default to null] |
| **tickets** | [**List**](TicketInfo.md) | Tickets information | [optional] [default to null] |
| **voidPermited** | **Boolean** | Some airlines returns the voiding option in the OrderReshop Refund. In this way, this field indicates if the OrderCancel will be executed. | [optional] [default to null] |
| **warnings** | [**List**](OrderLog.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

