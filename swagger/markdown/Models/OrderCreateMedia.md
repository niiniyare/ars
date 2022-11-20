# OrderCreateMedia
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **agency** | **String** | Agency name | [optional] [default to null] |
| **agencyData** | [**AgencyData**](AgencyData.md) |  | [optional] [default to null] |
| **allowedPaymentMethods** | [**AllowedPaymentMethods**](AllowedPaymentMethods.md) |  | [optional] [default to null] |
| **allowedRequests** | [**OrderCreateAllowedRequests**](OrderCreateAllowedRequests.md) |  | [optional] [default to null] |
| **approvalStatus** | **String** | Approval status | [optional] [default to null] |
| **approved** | **Boolean** | Approved status | [optional] [default to null] |
| **benefits** | [**Benefit**](Benefit.md) |  | [optional] [default to null] |
| **bookingDate** | **String** |  | [optional] [default to null] |
| **bookingReference** | [**BookingReferenceResponse**](BookingReferenceResponse.md) |  | [optional] [default to null] |
| **bookingType** | **String** |  | [optional] [default to null] |
| **carbonOffset** | [**List**](CarbonOffset.md) | Order flights carbon offset | [optional] [default to null] |
| **comments** | **String** |  | [optional] [default to null] |
| **corporateID** | **String** | CorporateID for corporate orders | [optional] [default to null] |
| **createdAt** | **String** |  | [optional] [default to null] |
| **disclosures** | [**List**](Disclosure.md) |  | [optional] [default to null] |
| **disruptionMessage** | **String** | Disruption notification message | [optional] [default to null] |
| **disruptionStatus** | **String** | Disruption status (FlightTimeChange/FlightNumberChange/FlightCancellation) | [optional] [default to null] |
| **externalOrderID** | **String** | External order ID | [optional] [default to null] |
| **files** | [**List**](OrderFile.md) | Files information | [optional] [default to null] |
| **flights** | [**List**](Flight.md) | Flight Segment information. Including departure, arrival and airline information. | [optional] [default to null] |
| **formOfPayment** | **String** |  | [optional] [default to null] |
| **history** | [**List**](OrderHistoryItem.md) |  | [optional] [default to null] |
| **id** | **String** | AirGateway order ID | [optional] [default to null] |
| **logs** | [**List**](OrderLog.md) |  | [optional] [default to null] |
| **metas** | [**Object**](.md) | Order metadata | [optional] [default to null] |
| **orderID** | **String** | External order ID (deprecated) | [optional] [default to null] |
| **passengers** | [**List**](Passenger.md) |  | [optional] [default to null] |
| **payment** | [**OrderCreatePayment**](OrderCreatePayment.md) |  | [optional] [default to null] |
| **paymentTimeLimit** | **String** | Payment time limit | [optional] [default to null] |
| **penalties** | [**List**](Penalty.md) | Type and the application (with the value for each application) for every penalties. | [optional] [default to null] |
| **pnr** | **String** | The unique identifier of the order used on the old system and respected by some providers to maintain compatibility. | [optional] [default to null] |
| **price** | [**Price**](Price.md) |  | [optional] [default to null] |
| **priceGuaranteeTimeLimit** | **String** | Time limit, for an on hold order, during which airline guarantee the price doesn&#39;t vary | [optional] [default to null] |
| **readyToTicketIssue** | **Boolean** | Ready To Ticket Issue flag | [optional] [default to null] |
| **refundType** | **String** | Refunds type can be: &#39;refund&#39;, &#39;voucher&#39; | [optional] [default to null] |
| **refundedAmount** | [**Price**](Price.md) |  | [optional] [default to null] |
| **remarks** | [**OrderRemarks**](OrderRemarks.md) |  | [optional] [default to null] |
| **seats** | [**List**](Seat.md) | List of seats | [optional] [default to null] |
| **sendForApprovalAllowed** | **Boolean** | Send for approval allowed | [optional] [default to null] |
| **services** | [**List**](Service.md) | List of services | [optional] [default to null] |
| **status** | **String** | Order status (Pending/Ticketed/Cancelled/Completed/Started/Expired) | [optional] [default to null] |
| **ticketIssue** | [**Object**](.md) | Ticket Issue object | [optional] [default to null] |
| **tickets** | [**List**](TicketInfo.md) | Tickets information | [optional] [default to null] |
| **updatedAt** | **String** |  | [optional] [default to null] |
| **viewMode** | **String** | View mode for order | [optional] [default to null] |
| **warnings** | [**List**](OrderLog.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

