# Seat

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Characteristics** | [**[]Characteristics**](Characteristics.md) | A list of characteristics about the seat | [optional] [default to null]
**Description** | **string** | Seat description | [optional] [default to null]
**ListKey** | **string** | This is an attribute for each seat. | [optional] [default to null]
**Location** | [***SeatLocation**](SeatLocation.md) |  | [optional] [default to null]
**PassengerRefs** | **string** | Reference to passenger which can select the seat. Sometimes the same seat has different price depending on the type of passenger, some other times two passengers of the same type are not allowed to get the same seats, for example when two adults travel with an infant, one of those adults will have a few specific seats. | [optional] [default to null]
**PassengerType** | **string** | Type of passenger which can select the seat (sometimes the same seat has different price depending on the type of passenger) | [optional] [default to null]
**Price** | [***Price**](Price.md) |  | [optional] [default to null]
**Refs** | **string** | This is an attribute for each seat. | [optional] [default to null]
**Remarks** | **[]string** | Some seats have restriction about the age, blindness, deafness, state of pregnancy, etc... | [optional] [default to null]
**Removable** | **bool** | Points when a seats is removable or not. Used only in OrderViewRS | [optional] [default to null]
**Segment** | **string** | Flight Segment Reference Key | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


