# OrderChangePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **string** | A flag used in some cases of the OrderChange like accept the disruption of an order or split the order | [optional] [default to null]
**Id** | **string** | AirGateway order ID | [default to null]
**LoyaltyProgramAccount** | **string** | Loyalty program account number for corporates | [optional] [default to null]
**PassengerUpdate** | [***Passenger**](Passenger.md) |  | [optional] [default to null]
**Passengers** | [**[]Passenger**](Passenger.md) | List of passengers | [optional] [default to null]
**Payment** | [***Payment**](Payment.md) |  | [optional] [default to null]
**ReshopOfferID** | **string** | Reshop offer ID from OrderReshop response | [optional] [default to null]
**Services** | [**[]ServiceRequest**](ServiceRequest.md) | List of service objects | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


