# Documentation for AirGateway NDC JSON API

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://proxy.airgateway.net/v1.2*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *NDCMethodsApi* | [**airDocIssuePost**](Apis/NDCMethodsApi.md#airdocissuepost) | **POST** /AirDocIssue | Post AirDocIssue |
*NDCMethodsApi* | [**airShoppingPost**](Apis/NDCMethodsApi.md#airshoppingpost) | **POST** /AirShopping | Post AirShopping |
*NDCMethodsApi* | [**offerPricePost**](Apis/NDCMethodsApi.md#offerpricepost) | **POST** /OfferPrice | Post OfferPrice |
*NDCMethodsApi* | [**orderCancelPost**](Apis/NDCMethodsApi.md#ordercancelpost) | **POST** /OrderCancel | Post OrderCancel |
*NDCMethodsApi* | [**orderChangePost**](Apis/NDCMethodsApi.md#orderchangepost) | **POST** /OrderChange | Post OrderChange |
*NDCMethodsApi* | [**orderCreatePost**](Apis/NDCMethodsApi.md#ordercreatepost) | **POST** /OrderCreate | Post OrderCreate |
*NDCMethodsApi* | [**orderReshopPost**](Apis/NDCMethodsApi.md#orderreshoppost) | **POST** /OrderReshop | Post OrderReshop |
*NDCMethodsApi* | [**orderReshopRefundPost**](Apis/NDCMethodsApi.md#orderreshoprefundpost) | **POST** /OrderReshopRefund | Post OrderReshopRefund |
*NDCMethodsApi* | [**orderReshopRepricePost**](Apis/NDCMethodsApi.md#orderreshoprepricepost) | **POST** /OrderReshopReprice | Post OrderReshopReprice |
*NDCMethodsApi* | [**orderRetrievePost**](Apis/NDCMethodsApi.md#orderretrievepost) | **POST** /OrderRetrieve | Post OrderRetrieve |
*NDCMethodsApi* | [**orderUpdatePost**](Apis/NDCMethodsApi.md#orderupdatepost) | **POST** /OrderUpdate | Post OrderUpdate |
*NDCMethodsApi* | [**seatAvailabilityPost**](Apis/NDCMethodsApi.md#seatavailabilitypost) | **POST** /SeatAvailability | Post SeatAvailability |
*NDCMethodsApi* | [**serviceListPost**](Apis/NDCMethodsApi.md#servicelistpost) | **POST** /ServiceList | Post ServiceList |
| *NonNDCMethodsApi* | [**itinShoppingPost**](Apis/NonNDCMethodsApi.md#itinshoppingpost) | **POST** /ItinShopping | Post ItinShopping |
*NonNDCMethodsApi* | [**orderCommentsPost**](Apis/NonNDCMethodsApi.md#ordercommentspost) | **POST** /OrderComments | Post OrderComments |
*NonNDCMethodsApi* | [**orderFileGET**](Apis/NonNDCMethodsApi.md#orderfileget) | **GET** /OrderFile | GET OrderFile |
*NonNDCMethodsApi* | [**orderHistoryGET**](Apis/NonNDCMethodsApi.md#orderhistoryget) | **GET** /OrderHistory | GET OrderHistory |
*NonNDCMethodsApi* | [**orderListGET**](Apis/NonNDCMethodsApi.md#orderlistget) | **GET** /OrderList | GET OrderList |
*NonNDCMethodsApi* | [**orderMetasPost**](Apis/NonNDCMethodsApi.md#ordermetaspost) | **POST** /OrderMetas | Post OrderMetas |
*NonNDCMethodsApi* | [**orderRemarksPost**](Apis/NonNDCMethodsApi.md#orderremarkspost) | **POST** /OrderRemarks | Post OrderRemarks |
*NonNDCMethodsApi* | [**orderReviewPost**](Apis/NonNDCMethodsApi.md#orderreviewpost) | **POST** /OrderReview | Post OrderReview |
*NonNDCMethodsApi* | [**providerListGET**](Apis/NonNDCMethodsApi.md#providerlistget) | **GET** /ProviderList | GET ProviderList |
*NonNDCMethodsApi* | [**statusGet**](Apis/NonNDCMethodsApi.md#statusget) | **GET** /status | Get Status |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Address](./Models/Address.md)
 - [AgencyData](./Models/AgencyData.md)
 - [AirDocIssuePayloadPayload](./Models/AirDocIssuePayloadPayload.md)
 - [AirShoppingMedia](./Models/AirShoppingMedia.md)
 - [AirShoppingOffer](./Models/AirShoppingOffer.md)
 - [AirShoppingPayload](./Models/AirShoppingPayload.md)
 - [AllowedPaymentMethods](./Models/AllowedPaymentMethods.md)
 - [AlternativePNR](./Models/AlternativePNR.md)
 - [AncillariesToRebook](./Models/AncillariesToRebook.md)
 - [ArrivalASRQ](./Models/ArrivalASRQ.md)
 - [BaggageAllowance](./Models/BaggageAllowance.md)
 - [BaggageAllowanceItem](./Models/BaggageAllowanceItem.md)
 - [BaggageAllowanceItemOption](./Models/BaggageAllowanceItemOption.md)
 - [Benefit](./Models/Benefit.md)
 - [BookingInstructions](./Models/BookingInstructions.md)
 - [BookingReferenceResponse](./Models/BookingReferenceResponse.md)
 - [CarbonOffset](./Models/CarbonOffset.md)
 - [CardInformation](./Models/CardInformation.md)
 - [Characteristics](./Models/Characteristics.md)
 - [ClassOfService](./Models/ClassOfService.md)
 - [DepartureASRQ](./Models/DepartureASRQ.md)
 - [Disclosure](./Models/Disclosure.md)
 - [DisclosureDescription](./Models/DisclosureDescription.md)
 - [DisclosureProperty](./Models/DisclosureProperty.md)
 - [DiscountPreferences](./Models/DiscountPreferences.md)
 - [Document](./Models/Document.md)
 - [Equipment](./Models/Equipment.md)
 - [ExitSeat](./Models/ExitSeat.md)
 - [FQTVAccount](./Models/FQTVAccount.md)
 - [FQTVInfo](./Models/FQTVInfo.md)
 - [Fare](./Models/Fare.md)
 - [FareRule](./Models/FareRule.md)
 - [Flight](./Models/Flight.md)
 - [FlightDetail](./Models/FlightDetail.md)
 - [FlightDetailFare](./Models/FlightDetailFare.md)
 - [FlightPointData](./Models/FlightPointData.md)
 - [FlightPointDataRSArrInner](./Models/FlightPointDataRSArrInner.md)
 - [FlightPointDataRSDepInner](./Models/FlightPointDataRSDepInner.md)
 - [FlightSegment](./Models/FlightSegment.md)
 - [Identity4Discount](./Models/Identity4Discount.md)
 - [ItinShoppingMedia](./Models/ItinShoppingMedia.md)
 - [ItinShoppingPayload](./Models/ItinShoppingPayload.md)
 - [ItineraryFlight](./Models/ItineraryFlight.md)
 - [ItineraryFlightSegment](./Models/ItineraryFlightSegment.md)
 - [ItineraryFlightSegmentDetail](./Models/ItineraryFlightSegmentDetail.md)
 - [ItineraryOption](./Models/ItineraryOption.md)
 - [ItineraryOptionFlight](./Models/ItineraryOptionFlight.md)
 - [ItineraryOptionFlightSegmentDetail](./Models/ItineraryOptionFlightSegmentDetail.md)
 - [ItineraryRQ](./Models/ItineraryRQ.md)
 - [ItineraryRS](./Models/ItineraryRS.md)
 - [MarketingCarrier](./Models/MarketingCarrier.md)
 - [MediaData](./Models/MediaData.md)
 - [OfferPriceAllowedRequests](./Models/OfferPriceAllowedRequests.md)
 - [OfferPriceMedia](./Models/OfferPriceMedia.md)
 - [OfferPricePayload](./Models/OfferPricePayload.md)
 - [OfferPriceRemarks](./Models/OfferPriceRemarks.md)
 - [OperatingCarrier](./Models/OperatingCarrier.md)
 - [OrderCancelMedia](./Models/OrderCancelMedia.md)
 - [OrderCancelPayload](./Models/OrderCancelPayload.md)
 - [OrderChangePayload](./Models/OrderChangePayload.md)
 - [OrderCommentsMedia](./Models/OrderCommentsMedia.md)
 - [OrderCommentsPayload](./Models/OrderCommentsPayload.md)
 - [OrderCreateAllowedRequests](./Models/OrderCreateAllowedRequests.md)
 - [OrderCreateAllowedRequestsPending](./Models/OrderCreateAllowedRequestsPending.md)
 - [OrderCreateAllowedRequestsStarted](./Models/OrderCreateAllowedRequestsStarted.md)
 - [OrderCreateAllowedRequestsTicketed](./Models/OrderCreateAllowedRequestsTicketed.md)
 - [OrderCreateMedia](./Models/OrderCreateMedia.md)
 - [OrderCreatePayload](./Models/OrderCreatePayload.md)
 - [OrderCreatePayment](./Models/OrderCreatePayment.md)
 - [OrderCreateRemarks](./Models/OrderCreateRemarks.md)
 - [OrderFile](./Models/OrderFile.md)
 - [OrderHistoryItem](./Models/OrderHistoryItem.md)
 - [OrderHistoryMedia](./Models/OrderHistoryMedia.md)
 - [OrderListCounters](./Models/OrderListCounters.md)
 - [OrderListItem](./Models/OrderListItem.md)
 - [OrderListMedia](./Models/OrderListMedia.md)
 - [OrderLog](./Models/OrderLog.md)
 - [OrderMetasMedia](./Models/OrderMetasMedia.md)
 - [OrderMetasPayload](./Models/OrderMetasPayload.md)
 - [OrderRemarkData](./Models/OrderRemarkData.md)
 - [OrderRemarkTemplate](./Models/OrderRemarkTemplate.md)
 - [OrderRemarks](./Models/OrderRemarks.md)
 - [OrderRemarksMedia](./Models/OrderRemarksMedia.md)
 - [OrderRemarksPayload](./Models/OrderRemarksPayload.md)
 - [OrderReshopMedia](./Models/OrderReshopMedia.md)
 - [OrderReshopMediaType](./Models/OrderReshopMediaType.md)
 - [OrderReshopPayload](./Models/OrderReshopPayload.md)
 - [OrderReshopRefundMedia](./Models/OrderReshopRefundMedia.md)
 - [OrderReshopRefundPayload](./Models/OrderReshopRefundPayload.md)
 - [OrderReshopRepriceMedia](./Models/OrderReshopRepriceMedia.md)
 - [OrderReshopRepricePayload](./Models/OrderReshopRepricePayload.md)
 - [OrderRetrievePayload](./Models/OrderRetrievePayload.md)
 - [OrderReviewMedia](./Models/OrderReviewMedia.md)
 - [OrderReviewPayload](./Models/OrderReviewPayload.md)
 - [OrderUpdatePayload](./Models/OrderUpdatePayload.md)
 - [OriginDestinationASRQ](./Models/OriginDestinationASRQ.md)
 - [OriginDestinationRS_Inner](./Models/OriginDestinationRS_Inner.md)
 - [Passenger](./Models/Passenger.md)
 - [PassengerData](./Models/PassengerData.md)
 - [Payment](./Models/Payment.md)
 - [PaymentVoucher](./Models/PaymentVoucher.md)
 - [Penalty](./Models/Penalty.md)
 - [PenaltyAmount](./Models/PenaltyAmount.md)
 - [Preferences](./Models/Preferences.md)
 - [PreferencesAS](./Models/PreferencesAS.md)
 - [Price](./Models/Price.md)
 - [PriceBreakdown](./Models/PriceBreakdown.md)
 - [PriceDetail](./Models/PriceDetail.md)
 - [PriceDetailBreakdown](./Models/PriceDetailBreakdown.md)
 - [PriceDetailTax](./Models/PriceDetailTax.md)
 - [PriceDetailTaxBreakdown](./Models/PriceDetailTaxBreakdown.md)
 - [ProviderListMedia](./Models/ProviderListMedia.md)
 - [Rows](./Models/Rows.md)
 - [SSR](./Models/SSR.md)
 - [Seat](./Models/Seat.md)
 - [SeatAvailabilityMedia](./Models/SeatAvailabilityMedia.md)
 - [SeatAvailabilityPayload](./Models/SeatAvailabilityPayload.md)
 - [SeatDisplay](./Models/SeatDisplay.md)
 - [SeatLocation](./Models/SeatLocation.md)
 - [Service](./Models/Service.md)
 - [ServiceListMedia](./Models/ServiceListMedia.md)
 - [ServiceListPayload](./Models/ServiceListPayload.md)
 - [ServiceRequest](./Models/ServiceRequest.md)
 - [StopLocation](./Models/StopLocation.md)
 - [TicketCoupon](./Models/TicketCoupon.md)
 - [TicketCouponAirlineInfo](./Models/TicketCouponAirlineInfo.md)
 - [TicketCouponAirlineInfoDepartureArrivalDateTime](./Models/TicketCouponAirlineInfoDepartureArrivalDateTime.md)
 - [TicketCouponValid](./Models/TicketCouponValid.md)
 - [TicketInfo](./Models/TicketInfo.md)
 - [Travelers](./Models/Travelers.md)
 - [error](./Models/error.md)
 - [metadata](./Models/metadata.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="key"></a>
### key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

