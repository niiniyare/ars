# OrderReshopRepriceMedia

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Benefits** | [***Benefit**](Benefit.md) |  | [optional] [default to null]
**CardSurcharges** | **interface{}** | A hash of surcharges indexed by the credit card type. | [optional] [default to null]
**Disclosures** | [**[]Disclosure**](Disclosure.md) |  | [optional] [default to null]
**Flights** | [**[]Flight**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null]
**OfferID** | **string** | The ID for this offer | [optional] [default to null]
**Owner** | **string** | The code of the provider that is really offering the flight | [optional] [default to null]
**Price** | [***Price**](Price.md) |  | [optional] [default to null]
**SeatsToRebook** | [**[]AncillariesToRebook**](AncillariesToRebook.md) | List of services that indicate for which segment the ancillaries must be re-booked | [optional] [default to null]
**ServicesToRebook** | [**[]AncillariesToRebook**](AncillariesToRebook.md) | List of services that indicate for which segment the ancillaries must be re-booked | [optional] [default to null]
**Warnings** | [**[]OrderLog**](OrderLog.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


