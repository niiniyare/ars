# PreferencesAs

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cabin** | **[]string** | Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All | [optional] [default to null]
**Discounts** | [***DiscountPreferences**](DiscountPreferences.md) |  | [optional] [default to null]
**Fare** | [***Fare**](Fare.md) |  | [optional] [default to null]
**FareList** | [**[]Fare**](Fare.md) | List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare | [optional] [default to null]
**MaxDuration** | **[]string** | Maximum duration of the flight per O&amp;D in ISO-8601 format | [optional] [default to null]
**MaxDurationRatio** | **[]float64** | Maximum duration ratio of the flight per O&amp;D in float number factor | [optional] [default to null]
**MaxStops** | **[]int64** | Maximum stops number per O&amp;D | [optional] [default to null]
**NonStop** | **bool** | NonStop preferences for search. If this is present, it will search flights without stops. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


