# OrderReshopRepriceMedia
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **benefits** | [**Benefit**](Benefit.md) |  | [optional] [default to null] |
| **cardSurcharges** | [**Object**](.md) | A hash of surcharges indexed by the credit card type. | [optional] [default to null] |
| **disclosures** | [**List**](Disclosure.md) |  | [optional] [default to null] |
| **flights** | [**List**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null] |
| **offerID** | **String** | The ID for this offer | [optional] [default to null] |
| **owner** | **String** | The code of the provider that is really offering the flight | [optional] [default to null] |
| **price** | [**Price**](Price.md) |  | [optional] [default to null] |
| **seatsToRebook** | [**List**](AncillariesToRebook.md) | List of services that indicate for which segment the ancillaries must be re-booked | [optional] [default to null] |
| **servicesToRebook** | [**List**](AncillariesToRebook.md) | List of services that indicate for which segment the ancillaries must be re-booked | [optional] [default to null] |
| **warnings** | [**List**](OrderLog.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

