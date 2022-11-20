# OrderChangePayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **action** | **String** | A flag used in some cases of the OrderChange like accept the disruption of an order or split the order | [optional] [default to null] |
| **id** | **String** | AirGateway order ID | [default to null] |
| **loyaltyProgramAccount** | **String** | Loyalty program account number for corporates | [optional] [default to null] |
| **passengerUpdate** | [**Passenger**](Passenger.md) |  | [optional] [default to null] |
| **passengers** | [**List**](Passenger.md) | List of passengers | [optional] [default to null] |
| **payment** | [**Payment**](Payment.md) |  | [optional] [default to null] |
| **reshopOfferID** | **String** | Reshop offer ID from OrderReshop response | [optional] [default to null] |
| **services** | [**List**](ServiceRequest.md) | List of service objects | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

