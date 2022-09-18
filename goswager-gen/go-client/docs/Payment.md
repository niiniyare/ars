# Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CardCode** | **string** | VI (Visa), CA (MasterCard), JCB (JCB), AX (American Express), DC (Diners Club), CB (Carte blanche), TP (UATP/AIRPLUS), GK (Lufthansa GK Card), AU (Carte Aurore), not all credit cards are supported by all airlines, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**CardHolderEmail** | **string** |  | [optional] [default to null]
**CardHolderName** | **string** |  | [optional] [default to null]
**CardHolderSurname** | **string** |  | [optional] [default to null]
**CardHolderTitle** | **string** | Valid Values:  | [optional] [default to null]
**CardNumber** | **string** | CC Number, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**CardType** | **string** | CC (Credit)/DB (Debit), required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**CashEmail** | **string** |  | [optional] [default to null]
**CashName** | **string** |  | [optional] [default to null]
**CashSurname** | **string** |  | [optional] [default to null]
**CashTitle** | **string** | Valid Values:  | [optional] [default to null]
**CityName** | **string** | Card Holder Billing city, required if method &#x3D;&#x3D; \&quot;card\&quot;  | [optional] [default to null]
**CountryCode** | **string** | Card Holder Billing country code , required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**Expiration** | **string** |  | [optional] [default to null]
**Method** | **string** | Possible values: \&quot;card\&quot;, \&quot;agencyCard\&quot;, \&quot;agencyCash\&quot;. Set this to \&quot;card\&quot; if you pay with card. Contact us to setup cash on file and card on file | [default to null]
**PassengerType** | **string** |  | [optional] [default to null]
**Phone** | **string** | Phone number | [optional] [default to null]
**PostalCode** | **string** | Card Holder Billing postal code, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**Remark** | **string** | A code used for special types of paying. In case your agency is allowed to pay with this special remark we will send you more information. | [optional] [default to null]
**SeriesCode** | **string** | CVV/CVC code, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**StateProv** | **string** | The code of the state or province where the bank office issued the card, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**Street1** | **string** | Card Holder Billing address, required if method &#x3D;&#x3D; \&quot;card\&quot; | [optional] [default to null]
**Street2** | **string** |  | [optional] [default to null]
**Voucher** | [***PaymentVoucher**](PaymentVoucher.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


