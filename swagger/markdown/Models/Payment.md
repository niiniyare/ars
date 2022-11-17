# Payment
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **cardCode** | **String** | VI (Visa), CA (MasterCard), JCB (JCB), AX (American Express), DC (Diners Club), CB (Carte blanche), TP (UATP/AIRPLUS), GK (Lufthansa GK Card), AU (Carte Aurore), not all credit cards are supported by all airlines, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **cardHolderEmail** | **String** |  | [optional] [default to null] |
| **cardHolderName** | **String** |  | [optional] [default to null] |
| **cardHolderSurname** | **String** |  | [optional] [default to null] |
| **cardHolderTitle** | **String** | Valid Values:  | [optional] [default to null] |
| **cardNumber** | **String** | CC Number, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **cardType** | **String** | CC (Credit)/DB (Debit), required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **cashEmail** | **String** |  | [optional] [default to null] |
| **cashName** | **String** |  | [optional] [default to null] |
| **cashSurname** | **String** |  | [optional] [default to null] |
| **cashTitle** | **String** | Valid Values:  | [optional] [default to null] |
| **cityName** | **String** | Card Holder Billing city, required if method &#x3D;&#x3D; \&quot;card\&quot;  | [optional] [default to null] |
| **countryCode** | **String** | Card Holder Billing country code , required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **expiration** | **String** |  | [optional] [default to null] |
| **method** | **String** | Possible values: \&quot;card\&quot;, \&quot;agencyCard\&quot;, \&quot;agencyCash\&quot;. Set this to \&quot;card\&quot; if you pay with card. Contact us to setup cash on file and card on file | [default to null] |
| **passengerType** | **String** |  | [optional] [default to null] |
| **phone** | **String** | Phone number | [optional] [default to null] |
| **postalCode** | **String** | Card Holder Billing postal code, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **remark** | **String** | A code used for special types of paying. In case your agency is allowed to pay with this special remark we will send you more information. | [optional] [default to null] |
| **seriesCode** | **String** | CVV/CVC code, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **stateProv** | **String** | The code of the state or province where the bank office issued the card, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **street1** | **String** | Card Holder Billing address, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null] |
| **street2** | **String** |  | [optional] [default to null] |
| **voucher** | [**PaymentVoucher**](PaymentVoucher.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

