-- SQL dump generated using DBML (dbml-lang.org)
-- Database: PostgreSQL
-- Generated at: 2022-11-17T21:19:37.230Z

CREATE TABLE "Address" (
  "cityName" TEXT DEFAULT NULL,
  "countryCode" TEXT DEFAULT NULL,
  "postalCode" TEXT DEFAULT NULL,
  "street" TEXT DEFAULT NULL
);

CREATE TABLE "AgencyData" (
  "countryCode" TEXT DEFAULT NULL,
  "iataCode" TEXT DEFAULT NULL
);

CREATE TABLE "AirDocIssuePayloadPayload" (
  "id" TEXT NOT NULL,
  "payment" TEXT NOT NULL
);

CREATE TABLE "AirShoppingMedia" (
  "result" JSON DEFAULT NULL
);

CREATE TABLE "AirShoppingOffer" (
  "benefits" TEXT DEFAULT NULL,
  "createdAt" BIGINT DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "error" TEXT DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "maxNumberOfStops" BIGINT DEFAULT NULL,
  "offerID" TEXT DEFAULT NULL,
  "owner" CHAR(2) DEFAULT NULL,
  "paymentTimeLimit" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "priceBreakdown" TEXT DEFAULT NULL,
  "provider" CHAR(2) DEFAULT NULL
);

CREATE TABLE "AirShoppingPayload" (
  "corporateDiscountCodes" JSON DEFAULT NULL,
  "metadata" TEXT DEFAULT NULL,
  "originDestinations" JSON NOT NULL,
  "preferences" TEXT DEFAULT NULL,
  "travelers" TEXT NOT NULL
);

CREATE TABLE "AllowedPaymentMethods" (
  "agencyCard" TINYINT(1) NOT NULL,
  "agencyCash" TINYINT(1) NOT NULL,
  "card" TINYINT(1) NOT NULL,
  "none" TINYINT(1) NOT NULL,
  "unusedTicket" TINYINT(1) NOT NULL
);

CREATE TABLE "AlternativePNR" (
  "id" TEXT DEFAULT NULL,
  "providerID" TEXT DEFAULT NULL
);

CREATE TABLE "AncillariesToRebook" (
  "flightKey" TEXT DEFAULT NULL,
  "rebook" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "ArrivalASRQ" (
  "airportCode" CHAR(3) NOT NULL,
  "date" TEXT DEFAULT NULL
);

CREATE TABLE "BaggageAllowance" (
  "carryOn" JSON DEFAULT NULL,
  "checked" JSON DEFAULT NULL
);

CREATE TABLE "BaggageAllowanceItem" (
  "options" JSON DEFAULT NULL,
  "passengerRefs" TEXT DEFAULT NULL
);

CREATE TABLE "BaggageAllowanceItemOption" (
  "properties" JSON DEFAULT NULL,
  "quantity" BIGINT DEFAULT NULL,
  "text" TEXT DEFAULT NULL
);

CREATE TABLE "Benefit" (
  "amount" TEXT DEFAULT NULL,
  "application" TEXT DEFAULT NULL,
  "description" TEXT DEFAULT NULL,
  "term" TEXT DEFAULT NULL
);

CREATE TABLE "BookingInstructions" (
  "pattern" TEXT DEFAULT NULL,
  "placeHolder" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "BookingReferenceResponse" (
  "airlineID" TEXT DEFAULT NULL,
  "alternativeIDs" JSON DEFAULT NULL,
  "id" TEXT DEFAULT NULL,
  "otherID" TEXT DEFAULT NULL
);

CREATE TABLE "CarbonOffset" (
  "destination" TEXT DEFAULT NULL,
  "footprint" DECIMAL(20,9) DEFAULT NULL,
  "origin" TEXT DEFAULT NULL,
  "segmentKey" TEXT DEFAULT NULL
);

CREATE TABLE "CardInformation" (
  "cardCode" TEXT DEFAULT NULL,
  "cardNumber" TEXT DEFAULT NULL,
  "expirationDate" TEXT DEFAULT NULL
);

CREATE TABLE "Characteristics" (
  "code" TEXT DEFAULT NULL,
  "definition" TEXT DEFAULT NULL
);

CREATE TABLE "ClassOfService" (
  "cabinDesignator" TEXT DEFAULT NULL,
  "code" TEXT DEFAULT NULL,
  "disclosureRefs" JSON DEFAULT NULL,
  "fare" TEXT DEFAULT NULL,
  "fareRules" JSON DEFAULT NULL,
  "generalClassCode" TEXT DEFAULT NULL,
  "refs" TEXT DEFAULT NULL
);

CREATE TABLE "DepartureASRQ" (
  "airportCode" CHAR(3) NOT NULL,
  "date" TEXT NOT NULL
);

CREATE TABLE "Disclosure" (
  "descriptions" JSON DEFAULT NULL,
  "listKey" TEXT DEFAULT NULL
);

CREATE TABLE "DisclosureDescription" (
  "category" TEXT DEFAULT NULL,
  "item" TEXT DEFAULT NULL,
  "media" TEXT DEFAULT NULL,
  "metadataToken" TEXT DEFAULT NULL,
  "originDestinationReference" TEXT DEFAULT NULL,
  "properties" JSON DEFAULT NULL,
  "text" TEXT DEFAULT NULL,
  "units" TEXT DEFAULT NULL
);

CREATE TABLE "DisclosureProperty" (
  "UOM" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL,
  "value" TEXT DEFAULT NULL
);

CREATE TABLE "DiscountPreferences" (
  "largeFamily" TEXT DEFAULT NULL,
  "residentCode" TEXT DEFAULT NULL
);

CREATE TABLE "Document" (
  "documentID" TEXT NOT NULL,
  "expirationDate" TEXT DEFAULT NULL
);

CREATE TABLE "Equipment" (
  "aircraftCode" TEXT DEFAULT NULL,
  "name" TEXT DEFAULT NULL
);

CREATE TABLE "error" (
  "code" TEXT DEFAULT NULL,
  "detail" TEXT DEFAULT NULL,
  "id" TEXT DEFAULT NULL,
  "meta" JSON DEFAULT NULL,
  "status" TEXT DEFAULT NULL
);

CREATE TABLE "ExitSeat" (
  "position" TEXT DEFAULT NULL,
  "row" BIGINT DEFAULT NULL,
  "segmentID" TEXT DEFAULT NULL
);

CREATE TABLE "FQTVAccount" (
  "number" TEXT DEFAULT NULL
);

CREATE TABLE "FQTVInfo" (
  "account" TEXT DEFAULT NULL,
  "airlineID" TEXT DEFAULT NULL
);

CREATE TABLE "Fare" (
  "Code" TEXT DEFAULT NULL,
  "Definition" TEXT DEFAULT NULL
);

CREATE TABLE "FareRule" (
  "passengerRef" TEXT DEFAULT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "penalties" JSON DEFAULT NULL
);

CREATE TABLE "Flight" (
  "arrival" TEXT DEFAULT NULL,
  "baggageAllowance" TEXT DEFAULT NULL,
  "departure" TEXT DEFAULT NULL,
  "duration" TEXT DEFAULT NULL,
  "key" TEXT DEFAULT NULL,
  "segments" JSON DEFAULT NULL
);

CREATE TABLE "FlightDetail" (
  "classOfService" TEXT DEFAULT NULL,
  "duration" TEXT DEFAULT NULL,
  "seatsLeft" TEXT DEFAULT NULL,
  "segmentType" TEXT DEFAULT NULL,
  "stopLocations" JSON DEFAULT NULL,
  "stopQuantity" TEXT DEFAULT NULL
);

CREATE TABLE "FlightDetailFare" (
  "basisCode" TEXT DEFAULT NULL,
  "cabin" TEXT DEFAULT NULL,
  "code" TEXT DEFAULT NULL,
  "marketingName" TEXT DEFAULT NULL,
  "priceClassName" TEXT DEFAULT NULL,
  "standardName" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "FlightPointData" (
  "airportCode" TEXT NOT NULL,
  "airportName" TEXT DEFAULT NULL,
  "countryID" TEXT DEFAULT NULL,
  "date" TEXT DEFAULT NULL,
  "parentLocation" TEXT DEFAULT NULL,
  "terminalName" TEXT DEFAULT NULL,
  "time" TEXT DEFAULT NULL
);

CREATE TABLE "FlightPointDataRSArrInner" (
  "airportCode" TEXT NOT NULL,
  "airportName" TEXT DEFAULT NULL,
  "countryID" TEXT DEFAULT NULL,
  "date" TEXT DEFAULT NULL,
  "parentLocation" TEXT DEFAULT NULL,
  "terminalName" TEXT DEFAULT NULL,
  "time" TEXT DEFAULT NULL
);

CREATE TABLE "FlightPointDataRSDepInner" (
  "airportCode" TEXT NOT NULL,
  "airportName" TEXT DEFAULT NULL,
  "countryID" TEXT DEFAULT NULL,
  "date" TEXT DEFAULT NULL,
  "parentLocation" TEXT DEFAULT NULL,
  "terminalName" TEXT DEFAULT NULL,
  "time" TEXT DEFAULT NULL
);

CREATE TABLE "FlightSegment" (
  "ODRef" TEXT DEFAULT NULL,
  "detail" TEXT DEFAULT NULL,
  "equipment" TEXT NOT NULL,
  "fareCode" TEXT DEFAULT NULL,
  "flightNumber" TEXT DEFAULT NULL,
  "marketingCarrier" TEXT NOT NULL,
  "operatingCarrier" TEXT DEFAULT NULL,
  "originDestination" TEXT NOT NULL,
  "segmentID" TEXT DEFAULT NULL
);

CREATE TABLE "Identity4Discount" (
  "identityDocumentNumber" TEXT DEFAULT NULL,
  "identityDocumentType" TEXT DEFAULT NULL,
  "remark" TEXT DEFAULT NULL
);

CREATE TABLE "ItinShoppingMedia" (
  "itinerary" TEXT DEFAULT NULL,
  "status" TEXT DEFAULT NULL
);

CREATE TABLE "ItinShoppingPayload" (
  "itinerary" JSON NOT NULL,
  "metadata" TEXT DEFAULT NULL,
  "travelers" TEXT NOT NULL
);

CREATE TABLE "ItineraryFlight" (
  "arrival" TEXT DEFAULT NULL,
  "departure" TEXT DEFAULT NULL,
  "duration" TEXT DEFAULT NULL,
  "key" TEXT DEFAULT NULL,
  "segments" JSON DEFAULT NULL
);

CREATE TABLE "ItineraryFlightSegment" (
  "ODRef" TEXT DEFAULT NULL,
  "detail" TEXT DEFAULT NULL,
  "equipment" TEXT DEFAULT NULL,
  "flightNumber" TEXT DEFAULT NULL,
  "marketingCarrier" TEXT DEFAULT NULL,
  "operatingCarrier" TEXT DEFAULT NULL,
  "originDestination" TEXT DEFAULT NULL,
  "segmentID" TEXT DEFAULT NULL
);

CREATE TABLE "ItineraryFlightSegmentDetail" (
  "duration" TEXT DEFAULT NULL,
  "segmentType" TEXT DEFAULT NULL,
  "stopLocations" JSON DEFAULT NULL,
  "stopQuantity" TEXT DEFAULT NULL
);

CREATE TABLE "ItineraryOption" (
  "details" JSON DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "offerID" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "priceBreakdown" TEXT DEFAULT NULL
);

CREATE TABLE "ItineraryOptionFlight" (
  "baggageAllowance" TEXT DEFAULT NULL,
  "key" TEXT DEFAULT NULL,
  "segments" JSON DEFAULT NULL
);

CREATE TABLE "ItineraryOptionFlightSegmentDetail" (
  "ODRef" TEXT DEFAULT NULL,
  "cabinDesignator" TEXT DEFAULT NULL,
  "code" TEXT DEFAULT NULL,
  "disclosureRefs" JSON DEFAULT NULL,
  "fare" TEXT DEFAULT NULL,
  "fareRules" JSON DEFAULT NULL,
  "generalClassCode" TEXT DEFAULT NULL,
  "refs" TEXT DEFAULT NULL,
  "seatsLeft" TEXT DEFAULT NULL,
  "segmentID" TEXT DEFAULT NULL
);

CREATE TABLE "ItineraryRQ" (
  "arrival" CHAR(3) NOT NULL,
  "date" TEXT NOT NULL,
  "departure" CHAR(3) NOT NULL,
  "flightNumbers" JSON DEFAULT NULL
);

CREATE TABLE "ItineraryRS" (
  "createdAt" BIGINT DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "maxNumberOfStops" BIGINT DEFAULT NULL,
  "options" JSON DEFAULT NULL,
  "owner" CHAR(2) DEFAULT NULL,
  "paymentTimeLimit" TEXT DEFAULT NULL
);

CREATE TABLE "MarketingCarrier" (
  "airlineID" CHAR(2) NOT NULL,
  "flightNumber" TEXT NOT NULL,
  "name" TEXT NOT NULL
);

CREATE TABLE "MediaData" (
  "id" TEXT DEFAULT NULL,
  "link" TEXT DEFAULT NULL
);

CREATE TABLE "metadata" (
  "country" CHAR(2) NOT NULL,
  "currency" TEXT NOT NULL,
  "locale" TEXT NOT NULL
);

CREATE TABLE "OfferPriceAllowedRequests" (
  "OrderCreateWithPayment" TINYINT(1) DEFAULT NULL,
  "SeatAvailability" TINYINT(1) DEFAULT NULL,
  "ServiceList" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OfferPriceMedia" (
  "agencyData" TEXT DEFAULT NULL,
  "allowedPaymentMethods" TEXT DEFAULT NULL,
  "allowedRequests" TEXT DEFAULT NULL,
  "benefits" TEXT DEFAULT NULL,
  "cardSurcharges" JSON DEFAULT NULL,
  "createdAt" BIGINT DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "discounts" TEXT DEFAULT NULL,
  "extraInfoMandatory" JSON DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "instantPayment" TEXT DEFAULT NULL,
  "offerExpiration" TEXT DEFAULT NULL,
  "offerID" TEXT DEFAULT NULL,
  "owner" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "paymentTimeLimit" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "remarks" TEXT DEFAULT NULL,
  "shoppingResponseID" TEXT DEFAULT NULL,
  "specialServices" JSON DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OfferPricePayload" (
  "offerID" TEXT DEFAULT NULL,
  "offerIDs" JSON DEFAULT NULL,
  "reshopOfferID" TEXT DEFAULT NULL,
  "services" JSON DEFAULT NULL
);

CREATE TABLE "OfferPriceRemarks" (
  "templates" JSON DEFAULT NULL
);

CREATE TABLE "OperatingCarrier" (
  "airlineID" CHAR(2) NOT NULL,
  "flightNumber" TEXT DEFAULT NULL,
  "name" TEXT NOT NULL
);

CREATE TABLE "OrderCancelMedia" (
  "orderID" TEXT DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OrderCancelPayload" (
  "id" TEXT NOT NULL
);

CREATE TABLE "OrderChangePayload" (
  "action" TEXT DEFAULT NULL,
  "id" TEXT NOT NULL,
  "loyaltyProgramAccount" TEXT DEFAULT NULL,
  "passengerUpdate" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "payment" TEXT DEFAULT NULL,
  "reshopOfferID" TEXT DEFAULT NULL,
  "services" JSON DEFAULT NULL
);

CREATE TABLE "OrderCommentsMedia" (
  "ok" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderCommentsPayload" (
  "comments" TEXT DEFAULT NULL,
  "id" TEXT NOT NULL
);

CREATE TABLE "OrderCreateAllowedRequests" (
  "pending" TEXT DEFAULT NULL,
  "started" TEXT DEFAULT NULL,
  "ticketed" TEXT DEFAULT NULL
);

CREATE TABLE "OrderCreateAllowedRequestsPending" (
  "OrderCancel" TINYINT(1) DEFAULT NULL,
  "OrderReprice" TINYINT(1) DEFAULT NULL,
  "OrderSplit" TINYINT(1) DEFAULT NULL,
  "SeatAvailability" TINYINT(1) DEFAULT NULL,
  "ServiceList" TINYINT(1) DEFAULT NULL,
  "TicketIssue" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderCreateAllowedRequestsStarted" (
  "OrderCancel" TINYINT(1) DEFAULT NULL,
  "OrderReshop" TINYINT(1) DEFAULT NULL,
  "OrderReshopRefund" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderCreateAllowedRequestsTicketed" (
  "OrderCancel" TINYINT(1) DEFAULT NULL,
  "OrderCancelToVoucher" TINYINT(1) DEFAULT NULL,
  "OrderReshop" TINYINT(1) DEFAULT NULL,
  "OrderReshopRefund" TINYINT(1) DEFAULT NULL,
  "OrderReshopRouteChange" TINYINT(1) DEFAULT NULL,
  "OrderSplit" TINYINT(1) DEFAULT NULL,
  "OrderVoid" TINYINT(1) DEFAULT NULL,
  "SeatAvailability" TINYINT(1) DEFAULT NULL,
  "ServiceList" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderCreateMedia" (
  "agency" TEXT DEFAULT NULL,
  "agencyData" TEXT DEFAULT NULL,
  "allowedPaymentMethods" TEXT DEFAULT NULL,
  "allowedRequests" TEXT DEFAULT NULL,
  "approvalStatus" TEXT DEFAULT NULL,
  "approved" TINYINT(1) DEFAULT NULL,
  "benefits" TEXT DEFAULT NULL,
  "bookingDate" TEXT DEFAULT NULL,
  "bookingReference" TEXT DEFAULT NULL,
  "bookingType" TEXT DEFAULT NULL,
  "carbonOffset" JSON DEFAULT NULL,
  "comments" TEXT DEFAULT NULL,
  "corporateID" TEXT DEFAULT NULL,
  "createdAt" TEXT DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "disruptionMessage" TEXT DEFAULT NULL,
  "disruptionStatus" TEXT DEFAULT NULL,
  "externalOrderID" TEXT DEFAULT NULL,
  "files" JSON DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "formOfPayment" TEXT DEFAULT NULL,
  "history" JSON DEFAULT NULL,
  "id" TEXT DEFAULT NULL,
  "logs" JSON DEFAULT NULL,
  "metas" JSON DEFAULT NULL,
  "orderID" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "payment" TEXT DEFAULT NULL,
  "paymentTimeLimit" TEXT DEFAULT NULL,
  "penalties" JSON DEFAULT NULL,
  "pnr" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "priceGuaranteeTimeLimit" TEXT DEFAULT NULL,
  "readyToTicketIssue" TINYINT(1) DEFAULT NULL,
  "refundType" TEXT DEFAULT NULL,
  "refundedAmount" TEXT DEFAULT NULL,
  "remarks" TEXT DEFAULT NULL,
  "seats" JSON DEFAULT NULL,
  "sendForApprovalAllowed" TINYINT(1) DEFAULT NULL,
  "services" JSON DEFAULT NULL,
  "status" TEXT DEFAULT NULL,
  "ticketIssue" JSON DEFAULT NULL,
  "tickets" JSON DEFAULT NULL,
  "updatedAt" TEXT DEFAULT NULL,
  "viewMode" TEXT DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OrderCreatePayload" (
  "corporateID" TEXT DEFAULT NULL,
  "loyaltyProgramAccount" TEXT DEFAULT NULL,
  "metas" JSON DEFAULT NULL,
  "passengers" JSON NOT NULL,
  "payment" TEXT DEFAULT NULL,
  "remarks" TEXT DEFAULT NULL,
  "shoppingResponseID" TEXT NOT NULL
);

CREATE TABLE "OrderCreatePayment" (
  "amount" DECIMAL(20,9) DEFAULT NULL,
  "cardInformation" TEXT DEFAULT NULL,
  "currency" TEXT DEFAULT NULL,
  "status" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "OrderCreateRemarks" (
  "data" TEXT DEFAULT NULL,
  "result" TEXT DEFAULT NULL
);

CREATE TABLE "OrderFile" (
  "id" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "OrderHistoryItem" (
  "agency" TEXT DEFAULT NULL,
  "agent" TEXT DEFAULT NULL,
  "details" JSON DEFAULT NULL,
  "eventID" TEXT DEFAULT NULL,
  "eventTime" TEXT DEFAULT NULL,
  "id" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "tickets" JSON DEFAULT NULL,
  "transactionType" TEXT DEFAULT NULL
);

CREATE TABLE "OrderHistoryMedia" (
  "count" BIGINT NOT NULL,
  "history" JSON NOT NULL
);

CREATE TABLE "OrderListCounters" (
  "active" BIGINT DEFAULT NULL,
  "approved" BIGINT DEFAULT NULL,
  "cancelled" BIGINT DEFAULT NULL,
  "disrupted" BIGINT DEFAULT NULL,
  "pending" BIGINT DEFAULT NULL,
  "refused" BIGINT DEFAULT NULL,
  "ticketed" BIGINT DEFAULT NULL,
  "underApproval" BIGINT DEFAULT NULL,
  "unused" BIGINT DEFAULT NULL,
  "voided" BIGINT DEFAULT NULL
);

CREATE TABLE "OrderListItem" (
  "agency" TEXT DEFAULT NULL,
  "approveStatus" TEXT DEFAULT NULL,
  "bookingDate" TEXT DEFAULT NULL,
  "bookingType" TEXT DEFAULT NULL,
  "corporateID" TEXT DEFAULT NULL,
  "disruptionStatus" TEXT DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "id" TEXT DEFAULT NULL,
  "orderID" TEXT DEFAULT NULL,
  "owner" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "paymentTimeLimit" TEXT DEFAULT NULL,
  "pnr" TEXT DEFAULT NULL,
  "provider" TEXT DEFAULT NULL,
  "status" TEXT DEFAULT NULL
);

CREATE TABLE "OrderListMedia" (
  "agencies" JSON DEFAULT NULL,
  "count" BIGINT DEFAULT NULL,
  "counters" TEXT DEFAULT NULL,
  "orders" JSON DEFAULT NULL
);

CREATE TABLE "OrderLog" (
  "severity" TEXT DEFAULT NULL,
  "text" TEXT DEFAULT NULL,
  "timestamp" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "OrderMetasMedia" (
  "ok" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderMetasPayload" (
  "id" TEXT NOT NULL,
  "metas" JSON DEFAULT NULL
);

CREATE TABLE "OrderRemarkData" (
  "template" TEXT DEFAULT NULL,
  "variables" JSON DEFAULT NULL
);

CREATE TABLE "OrderRemarkTemplate" (
  "data" TEXT DEFAULT NULL,
  "name" TEXT DEFAULT NULL,
  "neededOnCreation" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderRemarks" (
  "data" TEXT DEFAULT NULL,
  "result" TEXT DEFAULT NULL,
  "templates" JSON DEFAULT NULL
);

CREATE TABLE "OrderRemarksMedia" (
  "ok" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderRemarksPayload" (
  "data" TEXT DEFAULT NULL,
  "id" TEXT NOT NULL,
  "result" TEXT DEFAULT NULL
);

CREATE TABLE "OrderReshopMedia" (
  "offers" JSON DEFAULT NULL
);

CREATE TABLE "OrderReshopMediaType" (
  "benefits" TEXT DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "offerID" TEXT DEFAULT NULL,
  "owner" CHAR(2) DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "priceBreakdown" TEXT DEFAULT NULL,
  "priceChange" TINYINT(1) DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OrderReshopPayload" (
  "id" TEXT NOT NULL,
  "originDestinations" JSON NOT NULL,
  "preferences" TEXT DEFAULT NULL
);

CREATE TABLE "OrderReshopRefundMedia" (
  "flights" JSON DEFAULT NULL,
  "originalOrder" TEXT DEFAULT NULL,
  "penalty" TEXT DEFAULT NULL,
  "refund" TEXT DEFAULT NULL,
  "seats" JSON DEFAULT NULL,
  "services" JSON DEFAULT NULL,
  "tickets" JSON DEFAULT NULL,
  "voidPermited" TINYINT(1) DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OrderReshopRefundPayload" (
  "id" TEXT NOT NULL,
  "type" TEXT
);

CREATE TABLE "OrderReshopRepriceMedia" (
  "benefits" TEXT DEFAULT NULL,
  "cardSurcharges" JSON DEFAULT NULL,
  "disclosures" JSON DEFAULT NULL,
  "flights" JSON DEFAULT NULL,
  "offerID" TEXT DEFAULT NULL,
  "owner" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "seatsToRebook" JSON DEFAULT NULL,
  "servicesToRebook" JSON DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "OrderReshopRepricePayload" (
  "id" TEXT NOT NULL,
  "offerID" TEXT DEFAULT NULL
);

CREATE TABLE "OrderRetrievePayload" (
  "id" TEXT NOT NULL
);

CREATE TABLE "OrderReviewMedia" (
  "ok" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "OrderReviewPayload" (
  "action" TEXT NOT NULL,
  "id" TEXT NOT NULL,
  "reason" TEXT DEFAULT NULL
);

CREATE TABLE "OrderUpdatePayload" (
  "id" TEXT NOT NULL,
  "passengersUpdate" JSON NOT NULL
);

CREATE TABLE "OriginDestinationASRQ" (
  "arrival" TEXT NOT NULL,
  "departure" TEXT NOT NULL
);

CREATE TABLE "OriginDestinationRS_Inner" (
  "arrival" TEXT DEFAULT NULL,
  "departure" TEXT DEFAULT NULL
);

CREATE TABLE "Passenger" (
  "data" TEXT DEFAULT NULL,
  "document" TEXT DEFAULT NULL,
  "fareBasisCodes" JSON DEFAULT NULL,
  "identity4Discount" JSON DEFAULT NULL,
  "infantReference" TEXT DEFAULT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "seats" JSON DEFAULT NULL,
  "services" JSON DEFAULT NULL,
  "specialServices" JSON DEFAULT NULL,
  "travelerReference" TEXT NOT NULL
);

CREATE TABLE "PassengerData" (
  "address" TEXT DEFAULT NULL,
  "birthdate" TEXT DEFAULT NULL,
  "email" TEXT DEFAULT NULL,
  "fqtvInfo" TEXT DEFAULT NULL,
  "name" TEXT NOT NULL,
  "phone" TEXT DEFAULT NULL,
  "surname" TEXT DEFAULT NULL
);

CREATE TABLE "Payment" (
  "cardCode" TEXT DEFAULT NULL,
  "cardHolderEmail" TEXT DEFAULT NULL,
  "cardHolderName" TEXT DEFAULT NULL,
  "cardHolderSurname" TEXT DEFAULT NULL,
  "cardHolderTitle" TEXT DEFAULT NULL,
  "cardNumber" TEXT DEFAULT NULL,
  "cardType" TEXT DEFAULT NULL,
  "cashEmail" TEXT DEFAULT NULL,
  "cashName" TEXT DEFAULT NULL,
  "cashSurname" TEXT DEFAULT NULL,
  "cashTitle" TEXT DEFAULT NULL,
  "cityName" TEXT DEFAULT NULL,
  "countryCode" TEXT DEFAULT NULL,
  "expiration" TEXT DEFAULT NULL,
  "method" TEXT NOT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "phone" TEXT DEFAULT NULL,
  "postalCode" TEXT DEFAULT NULL,
  "remark" TEXT DEFAULT NULL,
  "seriesCode" TEXT DEFAULT NULL,
  "stateProv" TEXT DEFAULT NULL,
  "street1" TEXT DEFAULT NULL,
  "street2" TEXT DEFAULT NULL,
  "voucher" TEXT DEFAULT NULL
);

CREATE TABLE "PaymentVoucher" (
  "amount" DECIMAL(20,9) DEFAULT NULL,
  "currency" TEXT DEFAULT NULL,
  "email" TEXT DEFAULT NULL,
  "number" TEXT DEFAULT NULL,
  "surname" TEXT DEFAULT NULL
);

CREATE TABLE "Penalty" (
  "amounts" JSON DEFAULT NULL,
  "description" TEXT DEFAULT NULL,
  "type" TEXT DEFAULT NULL
);

CREATE TABLE "PenaltyAmount" (
  "amount" DECIMAL(20,9) DEFAULT NULL,
  "currency" TEXT DEFAULT NULL,
  "providerAmount" DECIMAL(20,9) DEFAULT NULL,
  "providerCurrency" TEXT DEFAULT NULL,
  "remark" TEXT DEFAULT NULL
);

CREATE TABLE "Preferences" (
  "cabin" JSON DEFAULT NULL,
  "discounts" TEXT DEFAULT NULL,
  "fare" TEXT DEFAULT NULL,
  "fareList" JSON DEFAULT NULL,
  "nonStop" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "PreferencesAS" (
  "cabin" JSON DEFAULT NULL,
  "discounts" TEXT DEFAULT NULL,
  "fare" TEXT DEFAULT NULL,
  "fareList" JSON DEFAULT NULL,
  "maxDuration" JSON DEFAULT NULL,
  "maxDurationRatio" JSON DEFAULT NULL,
  "maxStops" JSON DEFAULT NULL,
  "nonStop" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "Price" (
  "consumer" TEXT DEFAULT NULL,
  "provider" TEXT DEFAULT NULL
);

CREATE TABLE "PriceBreakdown" (
  "inbound" TEXT DEFAULT NULL,
  "outbound" TEXT DEFAULT NULL
);

CREATE TABLE "PriceDetail" (
  "base" DECIMAL(20,9) DEFAULT NULL,
  "breakdown" JSON DEFAULT NULL,
  "currency" TEXT DEFAULT NULL,
  "surcharge" DECIMAL(20,9) DEFAULT NULL,
  "tax" TEXT DEFAULT NULL,
  "total" DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE "PriceDetailBreakdown" (
  "base" DECIMAL(20,9) DEFAULT NULL,
  "offerItemID" TEXT DEFAULT NULL,
  "passengerRefs" TEXT DEFAULT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "surcharge" DECIMAL(20,9) DEFAULT NULL,
  "tax" TEXT DEFAULT NULL
);

CREATE TABLE "PriceDetailTax" (
  "breakdown" JSON DEFAULT NULL,
  "total" DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE "PriceDetailTaxBreakdown" (
  "code" TEXT DEFAULT NULL,
  "currency" TEXT DEFAULT NULL,
  "description" TEXT DEFAULT NULL,
  "total" DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE "ProviderListMedia" (
  "providers" JSON DEFAULT NULL
);

CREATE TABLE "Rows" (
  "first" BIGINT DEFAULT NULL,
  "last" BIGINT DEFAULT NULL
);

CREATE TABLE "SSR" (
  "bookingInstructions" TEXT DEFAULT NULL,
  "code" TEXT DEFAULT NULL,
  "desc" TEXT DEFAULT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "text_required" TINYINT(1) DEFAULT NULL
);

CREATE TABLE "Seat" (
  "characteristics" JSON DEFAULT NULL,
  "description" TEXT DEFAULT NULL,
  "listKey" TEXT DEFAULT NULL,
  "location" TEXT DEFAULT NULL,
  "passengerRefs" TEXT DEFAULT NULL,
  "passengerType" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "refs" TEXT DEFAULT NULL,
  "remarks" JSON DEFAULT NULL,
  "removable" TINYINT(1) DEFAULT NULL,
  "segment" TEXT DEFAULT NULL
);

CREATE TABLE "SeatAvailabilityMedia" (
  "disclosures" JSON DEFAULT NULL,
  "exits" JSON DEFAULT NULL,
  "owner" TEXT DEFAULT NULL,
  "seatDisplay" JSON DEFAULT NULL,
  "seatList" JSON DEFAULT NULL,
  "segments" JSON DEFAULT NULL
);

CREATE TABLE "SeatAvailabilityPayload" (
  "id" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "reshopOfferID" TEXT DEFAULT NULL,
  "segmentID" TEXT DEFAULT NULL,
  "shoppingResponseID" TEXT DEFAULT NULL
);

CREATE TABLE "SeatDisplay" (
  "columns" TEXT DEFAULT NULL,
  "rows" TEXT DEFAULT NULL,
  "segment" TEXT DEFAULT NULL
);

CREATE TABLE "SeatLocation" (
  "column" TEXT DEFAULT NULL,
  "row" BIGINT DEFAULT NULL
);

CREATE TABLE "Service" (
  "bookingInstructions" TEXT DEFAULT NULL,
  "descriptions" JSON DEFAULT NULL,
  "maximumQuantity" BIGINT DEFAULT NULL,
  "minimumQuantity" BIGINT DEFAULT NULL,
  "name" TEXT DEFAULT NULL,
  "objectKey" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "properties" JSON DEFAULT NULL,
  "ref" TEXT DEFAULT NULL,
  "removable" TINYINT(1) DEFAULT NULL,
  "segmentReferences" TEXT DEFAULT NULL,
  "serviceID" TEXT DEFAULT NULL,
  "travelerReferences" TEXT DEFAULT NULL
);

CREATE TABLE "ServiceListMedia" (
  "disclosures" JSON DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "segments" JSON DEFAULT NULL,
  "services" JSON DEFAULT NULL,
  "warnings" JSON DEFAULT NULL
);

CREATE TABLE "ServiceListPayload" (
  "id" TEXT DEFAULT NULL,
  "passengers" JSON DEFAULT NULL,
  "reshopOfferID" TEXT DEFAULT NULL,
  "shoppingResponseID" TEXT DEFAULT NULL
);

CREATE TABLE "ServiceRequest" (
  "owner" TEXT DEFAULT NULL,
  "quantity" DECIMAL(20,9) DEFAULT NULL,
  "seatLocation" TEXT DEFAULT NULL,
  "segmentReference" TEXT DEFAULT NULL,
  "serviceID" TEXT DEFAULT NULL,
  "text" TEXT DEFAULT NULL,
  "travelerReference" TEXT DEFAULT NULL
);

CREATE TABLE "StopLocation" (
  "airportCode" TEXT DEFAULT NULL,
  "airportName" TEXT DEFAULT NULL,
  "arrivalDate" TEXT DEFAULT NULL,
  "arrivalTime" TEXT DEFAULT NULL,
  "departureDate" TEXT DEFAULT NULL,
  "departureTime" TEXT DEFAULT NULL
);

CREATE TABLE "TicketCoupon" (
  "dateOfService" TEXT DEFAULT NULL,
  "fareBasisCode" TEXT DEFAULT NULL,
  "media" TEXT DEFAULT NULL,
  "number" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "reference" TEXT DEFAULT NULL,
  "remark" TEXT DEFAULT NULL,
  "segment" TEXT DEFAULT NULL,
  "serviceReferences" TEXT DEFAULT NULL,
  "status" TEXT DEFAULT NULL,
  "statusDefinition" TEXT DEFAULT NULL,
  "valid" TEXT DEFAULT NULL,
  "validatingAirline" TEXT DEFAULT NULL
);

CREATE TABLE "TicketCouponAirlineInfo" (
  "arrival" TEXT DEFAULT NULL,
  "arrivalDateTime" TEXT DEFAULT NULL,
  "departure" TEXT DEFAULT NULL,
  "departureDateTime" TEXT DEFAULT NULL,
  "equipment" TEXT DEFAULT NULL,
  "marketingCarrier" TEXT DEFAULT NULL,
  "status" TEXT DEFAULT NULL
);

CREATE TABLE "TicketCouponAirlineInfoDepartureArrivalDateTime" (
  "date" TEXT DEFAULT NULL,
  "time" TEXT DEFAULT NULL
);

CREATE TABLE "TicketCouponValid" (
  "effective" TEXT DEFAULT NULL,
  "expiration" TEXT DEFAULT NULL
);

CREATE TABLE "TicketInfo" (
  "coupons" JSON DEFAULT NULL,
  "dateOfIssue" TEXT DEFAULT NULL,
  "numberOfBooklets" BIGINT DEFAULT NULL,
  "passengerRef" TEXT DEFAULT NULL,
  "price" TEXT DEFAULT NULL,
  "remark" TEXT DEFAULT NULL,
  "ticketNumber" TEXT DEFAULT NULL,
  "timeOfIssue" TEXT DEFAULT NULL,
  "typeCode" TEXT DEFAULT NULL,
  "typeCodeDefinition" TEXT DEFAULT NULL
);

CREATE TABLE "Travelers" (
  "ADT" DECIMAL(20,9) NOT NULL,
  "CHD" DECIMAL(20,9) DEFAULT NULL,
  "INF" DECIMAL(20,9) DEFAULT NULL,
  "V14" DECIMAL(20,9) DEFAULT NULL,
  "VFR" DECIMAL(20,9) DEFAULT NULL,
  "VNF" DECIMAL(20,9) DEFAULT NULL,
  "VNN" DECIMAL(20,9) DEFAULT NULL,
  "YAD" DECIMAL(20,9) DEFAULT NULL
);

COMMENT ON COLUMN "Address"."cityName" IS 'City name.';

COMMENT ON COLUMN "Address"."countryCode" IS 'Country code.';

COMMENT ON COLUMN "Address"."postalCode" IS 'Postal code.';

COMMENT ON COLUMN "Address"."street" IS 'Street.';

COMMENT ON COLUMN "AgencyData"."countryCode" IS 'Country code';

COMMENT ON COLUMN "AgencyData"."iataCode" IS 'IATA Number';

COMMENT ON COLUMN "AirDocIssuePayloadPayload"."id" IS 'AirGateway order ID';

COMMENT ON TABLE "AirShoppingMedia" IS 'AirShoppingMedia media type (default view)';

COMMENT ON COLUMN "AirShoppingOffer"."createdAt" IS 'Offer created at unix time';

COMMENT ON COLUMN "AirShoppingOffer"."disclosures" IS 'List of disclosures corresponding to offer.';

COMMENT ON COLUMN "AirShoppingOffer"."error" IS 'Error from provider';

COMMENT ON COLUMN "AirShoppingOffer"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "AirShoppingOffer"."maxNumberOfStops" IS 'Max number of stops';

COMMENT ON COLUMN "AirShoppingOffer"."offerID" IS 'Offer identifier';

COMMENT ON COLUMN "AirShoppingOffer"."owner" IS '2 letter abbreviation of airline';

COMMENT ON COLUMN "AirShoppingOffer"."paymentTimeLimit" IS 'Offer payment time limit, after this time created order will become expired';

COMMENT ON COLUMN "AirShoppingOffer"."provider" IS '2 letter abbreviation of airline';

COMMENT ON TABLE "AirShoppingPayload" IS 'AirShoppingPayload is the type for AirShopping endpoint request body';

COMMENT ON COLUMN "AirShoppingPayload"."corporateDiscountCodes" IS 'Corporate Discount Codes Map';

COMMENT ON COLUMN "AirShoppingPayload"."originDestinations" IS 'Origin/Destination pair in a shopping search scenario';

COMMENT ON TABLE "AllowedPaymentMethods" IS 'Allowed payment methods';

COMMENT ON TABLE "AlternativePNR" IS 'Struct returned to the alternative pnrs not owner by the airlines, but for 3th parties.';

COMMENT ON COLUMN "AlternativePNR"."id" IS 'The value of the PNR';

COMMENT ON COLUMN "AlternativePNR"."providerID" IS 'The id of the third party';

COMMENT ON TABLE "ArrivalASRQ" IS 'AirShopping request arrival';

COMMENT ON COLUMN "ArrivalASRQ"."airportCode" IS 'Departure/Arrival airport IATA three letter code.';

COMMENT ON COLUMN "ArrivalASRQ"."date" IS 'Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "BaggageAllowanceItem"."options" IS 'options to choose';

COMMENT ON COLUMN "BaggageAllowanceItem"."passengerRefs" IS 'Passenger references that access this baggage condition';

COMMENT ON TABLE "BaggageAllowanceItemOption" IS 'Baggage Allowance Item Option';

COMMENT ON COLUMN "BaggageAllowanceItemOption"."properties" IS 'Properties';

COMMENT ON COLUMN "BaggageAllowanceItemOption"."quantity" IS 'baggage quantity';

COMMENT ON COLUMN "BaggageAllowanceItemOption"."text" IS 'description ';

COMMENT ON COLUMN "Benefit"."application" IS 'The reason of the discount';

COMMENT ON COLUMN "Benefit"."description" IS 'A brief description of the discount';

COMMENT ON TABLE "BookingInstructions" IS 'Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.';

COMMENT ON COLUMN "BookingInstructions"."pattern" IS 'The pattern that the text introduced by the customer should match to. This value can be empty';

COMMENT ON COLUMN "BookingInstructions"."placeHolder" IS 'The text in the input or the textarea which helps the customers knows what should write';

COMMENT ON COLUMN "BookingInstructions"."type" IS 'The type for the input used to be filled by the customer, it can be number or text';

COMMENT ON TABLE "BookingReferenceResponse" IS 'BookingReferenceResponse';

COMMENT ON COLUMN "BookingReferenceResponse"."airlineID" IS 'Airline ID';

COMMENT ON COLUMN "BookingReferenceResponse"."id" IS 'Booking reference';

COMMENT ON COLUMN "BookingReferenceResponse"."otherID" IS 'Other ID';

COMMENT ON COLUMN "CarbonOffset"."destination" IS 'Flight destination point';

COMMENT ON COLUMN "CarbonOffset"."footprint" IS 'Footprint in kgs per passenger';

COMMENT ON COLUMN "CarbonOffset"."origin" IS 'Flight origin point';

COMMENT ON COLUMN "CarbonOffset"."segmentKey" IS 'Segment key';

COMMENT ON COLUMN "CardInformation"."cardCode" IS 'The type of the card';

COMMENT ON COLUMN "CardInformation"."cardNumber" IS 'The last four numbers of the card';

COMMENT ON COLUMN "CardInformation"."expirationDate" IS 'The month and year of the expiration of the card';

COMMENT ON TABLE "Characteristics" IS 'Characteristics info';

COMMENT ON TABLE "ClassOfService" IS 'Class of the service offered';

COMMENT ON COLUMN "ClassOfService"."cabinDesignator" IS 'Cabin Type';

COMMENT ON COLUMN "ClassOfService"."code" IS 'Code for class';

COMMENT ON COLUMN "ClassOfService"."disclosureRefs" IS 'Disclosures';

COMMENT ON COLUMN "ClassOfService"."fareRules" IS 'Fare rules for cancelability, changeability and the penalties.';

COMMENT ON COLUMN "ClassOfService"."refs" IS 'Reference of class';

COMMENT ON TABLE "DepartureASRQ" IS 'AirShopping request departure';

COMMENT ON COLUMN "DepartureASRQ"."airportCode" IS 'Departure/Arrival airport IATA three letter code.';

COMMENT ON COLUMN "DepartureASRQ"."date" IS 'Departure/Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "Disclosure"."descriptions" IS 'Disclosure details';

COMMENT ON COLUMN "Disclosure"."listKey" IS 'Disclosure Reference';

COMMENT ON TABLE "DisclosureDescription" IS 'Disclosure description';

COMMENT ON COLUMN "DisclosureDescription"."category" IS 'Category';

COMMENT ON COLUMN "DisclosureDescription"."item" IS 'Item';

COMMENT ON COLUMN "DisclosureDescription"."metadataToken" IS 'MetadataToken';

COMMENT ON COLUMN "DisclosureDescription"."originDestinationReference" IS 'A reference to the origin-destination';

COMMENT ON COLUMN "DisclosureDescription"."properties" IS 'Properties';

COMMENT ON COLUMN "DisclosureDescription"."text" IS 'Text';

COMMENT ON COLUMN "DisclosureDescription"."units" IS 'Units';

COMMENT ON TABLE "DisclosureProperty" IS 'Disclosure properties';

COMMENT ON COLUMN "DisclosureProperty"."UOM" IS 'Units of measurement';

COMMENT ON COLUMN "DisclosureProperty"."type" IS 'Type';

COMMENT ON COLUMN "DisclosureProperty"."value" IS 'Value';

COMMENT ON COLUMN "DiscountPreferences"."largeFamily" IS 'IB Large Family Discount Code';

COMMENT ON COLUMN "DiscountPreferences"."residentCode" IS 'IB Resident Code';

COMMENT ON COLUMN "Document"."expirationDate" IS 'The expiration date of the document using format YYYY-MM-DD.';

COMMENT ON TABLE "error" IS 'Error response media type (default view)';

COMMENT ON COLUMN "error"."code" IS 'an application-specific error code, expressed as a string value.';

COMMENT ON COLUMN "error"."detail" IS 'a human-readable explanation specific to this occurrence of the problem.';

COMMENT ON COLUMN "error"."id" IS 'a unique identifier for this particular occurrence of the problem.';

COMMENT ON COLUMN "error"."meta" IS 'a meta object containing non-standard meta-information about the error.';

COMMENT ON COLUMN "error"."status" IS 'the HTTP status code applicable to this problem, expressed as a string value.';

COMMENT ON COLUMN "ExitSeat"."position" IS 'If the exit is on the right or in the left of the plane';

COMMENT ON COLUMN "ExitSeat"."row" IS 'The row where the exit in placed';

COMMENT ON COLUMN "ExitSeat"."segmentID" IS 'The resference to the segment ';

COMMENT ON TABLE "FQTVAccount" IS 'Frequent traveler account';

COMMENT ON COLUMN "FQTVAccount"."number" IS 'Frequent traveler account number';

COMMENT ON TABLE "FQTVInfo" IS 'Frequent traveler information';

COMMENT ON COLUMN "FQTVInfo"."airlineID" IS 'Airline ID';

COMMENT ON COLUMN "Fare"."Code" IS 'Fare code';

COMMENT ON COLUMN "Fare"."Definition" IS 'Fare Definition Code';

COMMENT ON TABLE "FareRule" IS 'Fare Rules per segment and per each passenger type.';

COMMENT ON COLUMN "FareRule"."passengerRef" IS 'The references tot the passengers involved in the group of FareReules.';

COMMENT ON COLUMN "FareRule"."passengerType" IS 'The type of the passengers related to this group of FareRule.';

COMMENT ON COLUMN "FareRule"."penalties" IS 'Fare rule penalties.';

COMMENT ON COLUMN "Flight"."duration" IS 'Flight duration';

COMMENT ON COLUMN "Flight"."key" IS 'Key identificator';

COMMENT ON COLUMN "FlightDetail"."duration" IS 'Flight duration';

COMMENT ON COLUMN "FlightDetail"."seatsLeft" IS 'How many seats left';

COMMENT ON COLUMN "FlightDetail"."segmentType" IS 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.';

COMMENT ON COLUMN "FlightDetail"."stopLocations" IS 'Stop locations';

COMMENT ON COLUMN "FlightDetail"."stopQuantity" IS 'Number of extra stops from Origin to Destination';

COMMENT ON COLUMN "FlightDetailFare"."basisCode" IS 'Fare Basis Code';

COMMENT ON COLUMN "FlightDetailFare"."code" IS 'Fare information for this flight segment';

COMMENT ON COLUMN "FlightDetailFare"."marketingName" IS 'Marketing name';

COMMENT ON COLUMN "FlightDetailFare"."priceClassName" IS 'Price class name';

COMMENT ON COLUMN "FlightDetailFare"."type" IS 'Fare type';

COMMENT ON COLUMN "FlightPointData"."airportCode" IS 'Departure/Arrival airport IATA three letter code.';

COMMENT ON COLUMN "FlightPointData"."airportName" IS 'Departure/Arrival airport name.';

COMMENT ON COLUMN "FlightPointData"."countryID" IS 'Country ID data';

COMMENT ON COLUMN "FlightPointData"."date" IS 'Departure/Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "FlightPointData"."parentLocation" IS 'Parent Location data';

COMMENT ON COLUMN "FlightPointData"."terminalName" IS 'Departure/Arrival terminal name.';

COMMENT ON COLUMN "FlightPointData"."time" IS 'Preferred departure time in format HH:MM 24h.';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."airportCode" IS 'Departure/Arrival airport IATA three letter code.';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."airportName" IS 'Departure/Arrival airport name.';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."countryID" IS 'Country ID data';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."date" IS 'Departure/Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."parentLocation" IS 'Parent Location data';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."terminalName" IS 'Departure/Arrival terminal.';

COMMENT ON COLUMN "FlightPointDataRSArrInner"."time" IS 'Preferred departure time in format HH:MM 24h.';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."airportCode" IS 'Departure/Arrival airport IATA three letter code.';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."airportName" IS 'Departure/Arrival airport name.';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."countryID" IS 'Country ID data';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."date" IS 'Departure/Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."parentLocation" IS 'Parent Location data';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."terminalName" IS 'Departure/Arrival terminal.';

COMMENT ON COLUMN "FlightPointDataRSDepInner"."time" IS 'Preferred departure time in format HH:MM 24h.';

COMMENT ON COLUMN "FlightSegment"."ODRef" IS 'Origin destination reference';

COMMENT ON COLUMN "FlightSegment"."fareCode" IS 'The code of the fare';

COMMENT ON COLUMN "FlightSegment"."flightNumber" IS 'Flight number of airline';

COMMENT ON COLUMN "FlightSegment"."segmentID" IS 'Segment ID';

COMMENT ON TABLE "ItinShoppingMedia" IS 'ItinShoppingMedia media type (default view)';

COMMENT ON COLUMN "ItinShoppingMedia"."status" IS 'Status of request: &#39;itinerary-found&#39;, &#39;itinerary-not-found&#39;';

COMMENT ON TABLE "ItinShoppingPayload" IS 'ItinShoppingPayload is the type for ItinShopping endpoint request body';

COMMENT ON COLUMN "ItinShoppingPayload"."itinerary" IS 'List of itinerary routes';

COMMENT ON COLUMN "ItineraryFlight"."duration" IS 'Flight duration';

COMMENT ON COLUMN "ItineraryFlight"."key" IS 'Key identificator';

COMMENT ON COLUMN "ItineraryFlightSegment"."ODRef" IS 'Origin destination reference';

COMMENT ON COLUMN "ItineraryFlightSegment"."flightNumber" IS 'Flight number of airline';

COMMENT ON COLUMN "ItineraryFlightSegment"."segmentID" IS 'Segment ID';

COMMENT ON COLUMN "ItineraryFlightSegmentDetail"."duration" IS 'Flight duration';

COMMENT ON COLUMN "ItineraryFlightSegmentDetail"."segmentType" IS 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.';

COMMENT ON COLUMN "ItineraryFlightSegmentDetail"."stopLocations" IS 'Stop locations';

COMMENT ON COLUMN "ItineraryFlightSegmentDetail"."stopQuantity" IS 'Number of extra stops from Origin to Destination';

COMMENT ON COLUMN "ItineraryOption"."disclosures" IS 'List of disclosures corresponding to offer.';

COMMENT ON COLUMN "ItineraryOption"."offerID" IS 'Offer identifier';

COMMENT ON COLUMN "ItineraryOptionFlight"."key" IS 'Key identificator';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."ODRef" IS 'Origin destination reference';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."cabinDesignator" IS 'Cabin Type';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."code" IS 'Code for class';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."disclosureRefs" IS 'Disclosures';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."fareRules" IS 'Fare rules for cancelability, changeability and the penalties.';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."refs" IS 'Reference of class';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."seatsLeft" IS 'How many seats left';

COMMENT ON COLUMN "ItineraryOptionFlightSegmentDetail"."segmentID" IS 'Segment ID';

COMMENT ON TABLE "ItineraryRQ" IS 'ItineraryRQ is an object for flight';

COMMENT ON COLUMN "ItineraryRQ"."arrival" IS 'Departure airport IATA 3-letter code';

COMMENT ON COLUMN "ItineraryRQ"."date" IS 'Departure/Arrival date in format YYYY-MM-DD.';

COMMENT ON COLUMN "ItineraryRQ"."departure" IS 'Departure airport IATA 3-letter code';

COMMENT ON COLUMN "ItineraryRQ"."flightNumbers" IS 'Flight numbers for itinerary';

COMMENT ON COLUMN "ItineraryRS"."createdAt" IS 'Created at unix time';

COMMENT ON COLUMN "ItineraryRS"."flights" IS 'route details';

COMMENT ON COLUMN "ItineraryRS"."maxNumberOfStops" IS 'Max number of stops';

COMMENT ON COLUMN "ItineraryRS"."options" IS 'possible fare options for itinerary';

COMMENT ON COLUMN "ItineraryRS"."owner" IS '2-letter code of provider';

COMMENT ON COLUMN "ItineraryRS"."paymentTimeLimit" IS 'Payment time limit, after this time created order will become expired';

COMMENT ON COLUMN "MarketingCarrier"."airlineID" IS 'Two letter airline code';

COMMENT ON COLUMN "MarketingCarrier"."name" IS 'Airline Name';

COMMENT ON TABLE "MediaData" IS 'Some Disclosures have media types';

COMMENT ON COLUMN "MediaData"."id" IS 'ID';

COMMENT ON COLUMN "MediaData"."link" IS 'Link';

COMMENT ON COLUMN "metadata"."country" IS 'Country code preference for the shopping ISO';

COMMENT ON COLUMN "metadata"."currency" IS 'Currency for results in ISO format';

COMMENT ON COLUMN "metadata"."locale" IS 'Language preferences';

COMMENT ON TABLE "OfferPriceMedia" IS 'OfferPriceMedia media type (default view)';

COMMENT ON COLUMN "OfferPriceMedia"."cardSurcharges" IS 'A hash of surcharges indexed by the credit card type.';

COMMENT ON COLUMN "OfferPriceMedia"."createdAt" IS 'Unix time of created datetime';

COMMENT ON COLUMN "OfferPriceMedia"."extraInfoMandatory" IS 'A Bundle of fields which are not mandatory for all airlines, in that way, the API will check the airline config and return them.';

COMMENT ON COLUMN "OfferPriceMedia"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OfferPriceMedia"."instantPayment" IS 'Instant payment field indicates agency has auto-issuing with &#39;agencyCash&#39; or &#39;agencyCard&#39; enabled. If this field is presented, payment method will be automatically selected';

COMMENT ON COLUMN "OfferPriceMedia"."offerExpiration" IS 'Offer expiration time';

COMMENT ON COLUMN "OfferPriceMedia"."offerID" IS 'The ID for this offer';

COMMENT ON COLUMN "OfferPriceMedia"."owner" IS 'The code of the provider that is really offering the flight';

COMMENT ON COLUMN "OfferPriceMedia"."passengers" IS 'List of referenced travelers';

COMMENT ON COLUMN "OfferPriceMedia"."paymentTimeLimit" IS 'Payment time limit';

COMMENT ON COLUMN "OfferPriceMedia"."shoppingResponseID" IS 'The ID of the response. Usually needed on the OrderCreate request (few providers don´t need it).';

COMMENT ON COLUMN "OfferPriceMedia"."specialServices" IS 'List of ancillaries allowed on pre-booking stage';

COMMENT ON COLUMN "OfferPricePayload"."reshopOfferID" IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used on the rebooking flow and order has services or seats to get the final real price of the re-offer and the services/seats.';

COMMENT ON COLUMN "OfferPricePayload"."services" IS 'List of service objects (used on the rebooking flow only with some airlines)';

COMMENT ON COLUMN "OfferPriceRemarks"."templates" IS 'Offer Price remark templates';

COMMENT ON COLUMN "OperatingCarrier"."airlineID" IS 'Two letter airline code';

COMMENT ON COLUMN "OperatingCarrier"."name" IS 'Airline Name';

COMMENT ON TABLE "OrderCancelMedia" IS 'OrderCancelMedia media type (default view)';

COMMENT ON COLUMN "OrderCancelMedia"."orderID" IS 'The unique identifier of the order.';

COMMENT ON COLUMN "OrderCancelMedia"."warnings" IS 'Order cancel response warnings';

COMMENT ON COLUMN "OrderCancelPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderChangePayload"."action" IS 'A flag used in some cases of the OrderChange like accept the disruption of an order or split the order';

COMMENT ON COLUMN "OrderChangePayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderChangePayload"."loyaltyProgramAccount" IS 'Loyalty program account number for corporates';

COMMENT ON COLUMN "OrderChangePayload"."passengers" IS 'List of passengers';

COMMENT ON COLUMN "OrderChangePayload"."reshopOfferID" IS 'Reshop offer ID from OrderReshop response';

COMMENT ON COLUMN "OrderChangePayload"."services" IS 'List of service objects';

COMMENT ON TABLE "OrderCommentsMedia" IS 'OrderCommentsMedia media type (default view)';

COMMENT ON COLUMN "OrderCommentsMedia"."ok" IS 'API status';

COMMENT ON TABLE "OrderCommentsPayload" IS 'OrderCommentsPayload is the type for OrderComments endpoint request body';

COMMENT ON COLUMN "OrderCommentsPayload"."id" IS 'AirGateway order ID';

COMMENT ON TABLE "OrderCreateMedia" IS 'OrderCreateMedia media type (default view)';

COMMENT ON COLUMN "OrderCreateMedia"."agency" IS 'Agency name';

COMMENT ON COLUMN "OrderCreateMedia"."approvalStatus" IS 'Approval status';

COMMENT ON COLUMN "OrderCreateMedia"."approved" IS 'Approved status';

COMMENT ON COLUMN "OrderCreateMedia"."carbonOffset" IS 'Order flights carbon offset';

COMMENT ON COLUMN "OrderCreateMedia"."corporateID" IS 'CorporateID for corporate orders';

COMMENT ON COLUMN "OrderCreateMedia"."disruptionMessage" IS 'Disruption notification message';

COMMENT ON COLUMN "OrderCreateMedia"."disruptionStatus" IS 'Disruption status (FlightTimeChange/FlightNumberChange/FlightCancellation)';

COMMENT ON COLUMN "OrderCreateMedia"."externalOrderID" IS 'External order ID';

COMMENT ON COLUMN "OrderCreateMedia"."files" IS 'Files information';

COMMENT ON COLUMN "OrderCreateMedia"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OrderCreateMedia"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderCreateMedia"."metas" IS 'Order metadata';

COMMENT ON COLUMN "OrderCreateMedia"."orderID" IS 'External order ID (deprecated)';

COMMENT ON COLUMN "OrderCreateMedia"."paymentTimeLimit" IS 'Payment time limit';

COMMENT ON COLUMN "OrderCreateMedia"."penalties" IS 'Type and the application (with the value for each application) for every penalties.';

COMMENT ON COLUMN "OrderCreateMedia"."pnr" IS 'The unique identifier of the order used on the old system and respected by some providers to maintain compatibility.';

COMMENT ON COLUMN "OrderCreateMedia"."priceGuaranteeTimeLimit" IS 'Time limit, for an on hold order, during which airline guarantee the price doesn&#39;t vary';

COMMENT ON COLUMN "OrderCreateMedia"."readyToTicketIssue" IS 'Ready To Ticket Issue flag';

COMMENT ON COLUMN "OrderCreateMedia"."refundType" IS 'Refunds type can be: &#39;refund&#39;, &#39;voucher&#39;';

COMMENT ON COLUMN "OrderCreateMedia"."seats" IS 'List of seats';

COMMENT ON COLUMN "OrderCreateMedia"."sendForApprovalAllowed" IS 'Send for approval allowed';

COMMENT ON COLUMN "OrderCreateMedia"."services" IS 'List of services';

COMMENT ON COLUMN "OrderCreateMedia"."status" IS 'Order status (Pending/Ticketed/Cancelled/Completed/Started/Expired)';

COMMENT ON COLUMN "OrderCreateMedia"."ticketIssue" IS 'Ticket Issue object';

COMMENT ON COLUMN "OrderCreateMedia"."tickets" IS 'Tickets information';

COMMENT ON COLUMN "OrderCreateMedia"."viewMode" IS 'View mode for order';

COMMENT ON COLUMN "OrderCreatePayload"."corporateID" IS 'CorporateID for corporate orders';

COMMENT ON COLUMN "OrderCreatePayload"."loyaltyProgramAccount" IS 'Loyalty program account number for corporates';

COMMENT ON COLUMN "OrderCreatePayload"."metas" IS 'Order metadata';

COMMENT ON COLUMN "OrderCreatePayload"."shoppingResponseID" IS 'The responseID provided in OfferPrice response';

COMMENT ON COLUMN "OrderCreatePayment"."amount" IS 'Payment amount (1000 or 1000.50)';

COMMENT ON COLUMN "OrderCreatePayment"."currency" IS 'Payment currency';

COMMENT ON COLUMN "OrderCreatePayment"."status" IS 'Payment status';

COMMENT ON COLUMN "OrderCreatePayment"."type" IS 'Payment type';

COMMENT ON COLUMN "OrderCreateRemarks"."result" IS 'generated remarks text';

COMMENT ON COLUMN "OrderFile"."id" IS 'File ID';

COMMENT ON COLUMN "OrderFile"."type" IS 'File Type';

COMMENT ON COLUMN "OrderHistoryItem"."agency" IS 'Agency';

COMMENT ON COLUMN "OrderHistoryItem"."agent" IS 'Agent';

COMMENT ON COLUMN "OrderHistoryItem"."details" IS 'Generic details object';

COMMENT ON COLUMN "OrderHistoryItem"."eventID" IS 'Event ID';

COMMENT ON COLUMN "OrderHistoryItem"."eventTime" IS 'Event time';

COMMENT ON COLUMN "OrderHistoryItem"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderHistoryItem"."tickets" IS 'Newly added tickets';

COMMENT ON COLUMN "OrderHistoryItem"."transactionType" IS 'Transaction type';

COMMENT ON TABLE "OrderHistoryMedia" IS 'OrderHistoryMedia media type (default view)';

COMMENT ON COLUMN "OrderListItem"."approveStatus" IS 'Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok)';

COMMENT ON COLUMN "OrderListItem"."corporateID" IS 'CorporateID for corporate orders';

COMMENT ON COLUMN "OrderListItem"."disruptionStatus" IS 'Disruption status (ScheduledTimeChange/FlightCancellation)';

COMMENT ON COLUMN "OrderListItem"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OrderListItem"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderListItem"."paymentTimeLimit" IS 'Payment time limit';

COMMENT ON COLUMN "OrderListItem"."pnr" IS 'PNR';

COMMENT ON COLUMN "OrderListItem"."status" IS 'Order status (Pending/Confirmed/Canceled/Voided/Refunded)';

COMMENT ON TABLE "OrderListMedia" IS 'OrderListMedia media type (default view)';

COMMENT ON TABLE "OrderLog" IS 'Order warning';

COMMENT ON COLUMN "OrderLog"."severity" IS 'Severity level';

COMMENT ON COLUMN "OrderLog"."text" IS 'Warning text';

COMMENT ON COLUMN "OrderLog"."timestamp" IS 'Warning timestamp';

COMMENT ON COLUMN "OrderLog"."type" IS 'Type of request which warning came from (FP, OC)';

COMMENT ON TABLE "OrderMetasMedia" IS 'OrderMetasMedia media type (default view)';

COMMENT ON COLUMN "OrderMetasMedia"."ok" IS 'Order Metas save status';

COMMENT ON TABLE "OrderMetasPayload" IS 'OrderMetasPayload is the type for OrderMetas endpoint request body';

COMMENT ON COLUMN "OrderMetasPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderMetasPayload"."metas" IS 'Metas object';

COMMENT ON TABLE "OrderRemarkData" IS 'Order remarks data';

COMMENT ON COLUMN "OrderRemarkData"."template" IS 'Selected template';

COMMENT ON COLUMN "OrderRemarkData"."variables" IS 'template variables';

COMMENT ON TABLE "OrderRemarkTemplate" IS 'Order remarks template';

COMMENT ON COLUMN "OrderRemarkTemplate"."data" IS 'multiline template string';

COMMENT ON COLUMN "OrderRemarkTemplate"."name" IS 'Name';

COMMENT ON COLUMN "OrderRemarkTemplate"."neededOnCreation" IS 'Needed on creation';

COMMENT ON TABLE "OrderRemarks" IS 'Order remarks object. Created plain text is used in air files';

COMMENT ON COLUMN "OrderRemarks"."result" IS 'generated remarks text';

COMMENT ON TABLE "OrderRemarksMedia" IS 'OrderRemarksMedia media type (default view)';

COMMENT ON COLUMN "OrderRemarksMedia"."ok" IS 'API status';

COMMENT ON TABLE "OrderRemarksPayload" IS 'OrderRemarksPayload is the type for OrderRemarks endpoint request body';

COMMENT ON COLUMN "OrderRemarksPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderRemarksPayload"."result" IS 'generated remarks text';

COMMENT ON TABLE "OrderReshopMedia" IS 'OrderReshopMedia media type (default view)';

COMMENT ON COLUMN "OrderReshopMediaType"."disclosures" IS 'List of disclosures corresponding to offer.';

COMMENT ON COLUMN "OrderReshopMediaType"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OrderReshopMediaType"."offerID" IS 'Offer identifier';

COMMENT ON COLUMN "OrderReshopMediaType"."owner" IS '2 letter abbreviation of airline';

COMMENT ON COLUMN "OrderReshopMediaType"."priceChange" IS 'Indicates if the price has change from the original in the hold order.';

COMMENT ON COLUMN "OrderReshopPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderReshopPayload"."originDestinations" IS 'Origin/Destination pair in a shopping search scenario';

COMMENT ON TABLE "OrderReshopRefundMedia" IS 'OrderReshopRefundMedia media type (default view)';

COMMENT ON COLUMN "OrderReshopRefundMedia"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OrderReshopRefundMedia"."seats" IS 'List of seats';

COMMENT ON COLUMN "OrderReshopRefundMedia"."services" IS 'List of services';

COMMENT ON COLUMN "OrderReshopRefundMedia"."tickets" IS 'Tickets information';

COMMENT ON COLUMN "OrderReshopRefundMedia"."voidPermited" IS 'Some airlines returns the voiding option in the OrderReshop Refund. In this way, this field indicates if the OrderCancel will be executed.';

COMMENT ON COLUMN "OrderReshopRefundPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderReshopRefundPayload"."type" IS 'Refund type, can be: \&quot;refund\&quot;, \&quot;voucher\&quot;';

COMMENT ON TABLE "OrderReshopRepriceMedia" IS 'OrderReshopRepriceMedia media type (default view)';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."cardSurcharges" IS 'A hash of surcharges indexed by the credit card type.';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."flights" IS 'Flight Segment information. Including departure, arrival and airline information.';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."offerID" IS 'The ID for this offer';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."owner" IS 'The code of the provider that is really offering the flight';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."seatsToRebook" IS 'List of services that indicate for which segment the ancillaries must be re-booked';

COMMENT ON COLUMN "OrderReshopRepriceMedia"."servicesToRebook" IS 'List of services that indicate for which segment the ancillaries must be re-booked';

COMMENT ON COLUMN "OrderReshopRepricePayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderReshopRepricePayload"."offerID" IS 'OrderReshop offer ID for Reprice request';

COMMENT ON TABLE "OrderRetrievePayload" IS 'OrderRetrievePayload is the type for OrderRetrieve endpoint request body';

COMMENT ON COLUMN "OrderRetrievePayload"."id" IS 'AirGateway order ID';

COMMENT ON TABLE "OrderReviewMedia" IS 'OrderReviewMedia media type (default view)';

COMMENT ON COLUMN "OrderReviewMedia"."ok" IS 'result';

COMMENT ON TABLE "OrderReviewPayload" IS 'OrderReviewPayload is the type for OrderReview endpoint request body';

COMMENT ON COLUMN "OrderReviewPayload"."action" IS 'Review action';

COMMENT ON COLUMN "OrderReviewPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderReviewPayload"."reason" IS 'Reason';

COMMENT ON COLUMN "OrderUpdatePayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "OrderUpdatePayload"."passengersUpdate" IS 'Passengers details to update for';

COMMENT ON TABLE "OriginDestinationASRQ" IS 'Origin/Destination pair in a shopping search scenario';

COMMENT ON COLUMN "Passenger"."fareBasisCodes" IS 'FareBasisCodes';

COMMENT ON COLUMN "Passenger"."infantReference" IS 'Infant reference (if any)';

COMMENT ON COLUMN "Passenger"."travelerReference" IS 'Traveler reference from ServiceList response';

COMMENT ON COLUMN "PassengerData"."birthdate" IS 'Birthdate using format YYYY-MM-DD.';

COMMENT ON COLUMN "PassengerData"."phone" IS 'Phone number';

COMMENT ON COLUMN "Payment"."cardCode" IS 'VI (Visa), CA (MasterCard), JCB (JCB), AX (American Express), DC (Diners Club), CB (Carte blanche), TP (UATP/AIRPLUS), GK (Lufthansa GK Card), AU (Carte Aurore), not all credit cards are supported by all airlines, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."cardHolderTitle" IS 'Valid Values: ';

COMMENT ON COLUMN "Payment"."cardNumber" IS 'CC Number, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."cardType" IS 'CC (Credit)/DB (Debit), required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."cashTitle" IS 'Valid Values: ';

COMMENT ON COLUMN "Payment"."cityName" IS 'Card Holder Billing city, required if method &#x3D;&#x3D; \&quot;card\&quot; ';

COMMENT ON COLUMN "Payment"."countryCode" IS 'Card Holder Billing country code , required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."method" IS 'Possible values: \&quot;card\&quot;, \&quot;agencyCard\&quot;, \&quot;agencyCash\&quot;. Set this to \&quot;card\&quot; if you pay with card. Contact us to setup cash on file and card on file';

COMMENT ON COLUMN "Payment"."phone" IS 'Phone number';

COMMENT ON COLUMN "Payment"."postalCode" IS 'Card Holder Billing postal code, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."remark" IS 'A code used for special types of paying. In case your agency is allowed to pay with this special remark we will send you more information.';

COMMENT ON COLUMN "Payment"."seriesCode" IS 'CVV/CVC code, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."stateProv" IS 'The code of the state or province where the bank office issued the card, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "Payment"."street1" IS 'Card Holder Billing address, required if method &#x3D;&#x3D; \&quot;card\&quot;';

COMMENT ON COLUMN "PaymentVoucher"."amount" IS 'The amount paid with voucher (12 or 12.09)';

COMMENT ON COLUMN "PaymentVoucher"."currency" IS 'Voucher currency';

COMMENT ON COLUMN "PaymentVoucher"."email" IS 'Voucher owner&#39;s email';

COMMENT ON COLUMN "PaymentVoucher"."number" IS 'Voucher number';

COMMENT ON COLUMN "PaymentVoucher"."surname" IS 'Voucher owner&#39;s surname';

COMMENT ON COLUMN "Penalty"."amounts" IS 'Value and the application of this value for the penalty.';

COMMENT ON COLUMN "Penalty"."description" IS 'A more extensive and explicit explanation of the penalty';

COMMENT ON COLUMN "Penalty"."type" IS 'The code of the penalty';

COMMENT ON COLUMN "PenaltyAmount"."amount" IS 'The homogenised value of the penalty for the application case (35 or 30.65)';

COMMENT ON COLUMN "PenaltyAmount"."currency" IS 'The consumer currency of this value';

COMMENT ON COLUMN "PenaltyAmount"."providerAmount" IS 'The provider value of the penalty for the application case (30 or 30.70)';

COMMENT ON COLUMN "PenaltyAmount"."providerCurrency" IS 'The provider currency of this value';

COMMENT ON COLUMN "PenaltyAmount"."remark" IS 'Penalty remark.';

COMMENT ON COLUMN "Preferences"."cabin" IS 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All';

COMMENT ON COLUMN "Preferences"."fareList" IS 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare';

COMMENT ON COLUMN "Preferences"."nonStop" IS 'NonStop preferences for search. If this is present, it will search flights without stops.';

COMMENT ON COLUMN "PreferencesAS"."cabin" IS 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All';

COMMENT ON COLUMN "PreferencesAS"."fareList" IS 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare';

COMMENT ON COLUMN "PreferencesAS"."maxDuration" IS 'Maximum duration of the flight per O&amp;D in ISO-8601 format';

COMMENT ON COLUMN "PreferencesAS"."maxDurationRatio" IS 'Maximum duration ratio of the flight per O&amp;D in float number factor';

COMMENT ON COLUMN "PreferencesAS"."maxStops" IS 'Maximum stops number per O&amp;D';

COMMENT ON COLUMN "PreferencesAS"."nonStop" IS 'NonStop preferences for search. If this is present, it will search flights without stops.';

COMMENT ON TABLE "PriceBreakdown" IS 'Airline Offer price breakdown of combined round trip offers';

COMMENT ON COLUMN "PriceDetail"."base" IS '670 or 670.41';

COMMENT ON COLUMN "PriceDetail"."breakdown" IS 'The price for each flight offer. There is an offer for each passenger (ADT, CHD, INF).';

COMMENT ON COLUMN "PriceDetail"."surcharge" IS 'The surcharges for the whole flight offer (6 or 6.05).';

COMMENT ON COLUMN "PriceDetail"."total" IS '720 or 720.62';

COMMENT ON COLUMN "PriceDetailBreakdown"."base" IS 'The base price, without any taxes (300 or 300.32)';

COMMENT ON COLUMN "PriceDetailBreakdown"."offerItemID" IS 'The ID for each offer';

COMMENT ON COLUMN "PriceDetailBreakdown"."passengerRefs" IS 'Passenger references';

COMMENT ON COLUMN "PriceDetailBreakdown"."passengerType" IS 'The passenger type';

COMMENT ON COLUMN "PriceDetailBreakdown"."surcharge" IS 'The total sum of all surcharges (6 or 6.05)';

COMMENT ON COLUMN "PriceDetailTax"."breakdown" IS 'The value price, currency, code and description for each tax for each AirlineOffer';

COMMENT ON COLUMN "PriceDetailTax"."total" IS '120 or 120.62';

COMMENT ON COLUMN "PriceDetailTaxBreakdown"."code" IS 'The code used for each tax';

COMMENT ON COLUMN "PriceDetailTaxBreakdown"."currency" IS 'The currency code used for each tax';

COMMENT ON COLUMN "PriceDetailTaxBreakdown"."description" IS 'The description of each tax';

COMMENT ON COLUMN "PriceDetailTaxBreakdown"."total" IS 'The price (12 or 12.09)';

COMMENT ON TABLE "ProviderListMedia" IS 'ProviderListMedia media type (default view)';

COMMENT ON COLUMN "Rows"."first" IS 'First row';

COMMENT ON COLUMN "Rows"."last" IS 'Last row';

COMMENT ON COLUMN "SSR"."code" IS 'Special service request code';

COMMENT ON COLUMN "SSR"."desc" IS 'Special service request description';

COMMENT ON COLUMN "SSR"."passengerType" IS 'Passenger type SSR applies to';

COMMENT ON COLUMN "SSR"."text_required" IS 'Special service request text required flag';

COMMENT ON COLUMN "Seat"."characteristics" IS 'A list of characteristics about the seat';

COMMENT ON COLUMN "Seat"."description" IS 'Seat description';

COMMENT ON COLUMN "Seat"."listKey" IS 'This is an attribute for each seat.';

COMMENT ON COLUMN "Seat"."passengerRefs" IS 'Reference to passenger which can select the seat. Sometimes the same seat has different price depending on the type of passenger, some other times two passengers of the same type are not allowed to get the same seats, for example when two adults travel with an infant, one of those adults will have a few specific seats.';

COMMENT ON COLUMN "Seat"."passengerType" IS 'Type of passenger which can select the seat (sometimes the same seat has different price depending on the type of passenger)';

COMMENT ON COLUMN "Seat"."refs" IS 'This is an attribute for each seat.';

COMMENT ON COLUMN "Seat"."remarks" IS 'Some seats have restriction about the age, blindness, deafness, state of pregnancy, etc...';

COMMENT ON COLUMN "Seat"."removable" IS 'Points when a seats is removable or not. Used only in OrderViewRS';

COMMENT ON COLUMN "Seat"."segment" IS 'Flight Segment Reference Key';

COMMENT ON TABLE "SeatAvailabilityMedia" IS 'SeatAvailabilityMedia media type (default view)';

COMMENT ON COLUMN "SeatAvailabilityMedia"."exits" IS 'Exit rows position';

COMMENT ON COLUMN "SeatAvailabilityMedia"."owner" IS 'The owner of the segment flight that the SeatAvailability is requesting';

COMMENT ON COLUMN "SeatAvailabilityMedia"."seatDisplay" IS 'Info about seat display (rows and columns)';

COMMENT ON COLUMN "SeatAvailabilityMedia"."seatList" IS 'Info about seats location, description, characteristics, price...';

COMMENT ON COLUMN "SeatAvailabilityMedia"."segments" IS 'Info about flight segments';

COMMENT ON TABLE "SeatAvailabilityPayload" IS 'SeatAvailability data';

COMMENT ON COLUMN "SeatAvailabilityPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "SeatAvailabilityPayload"."reshopOfferID" IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request SeatAvailable is called on the rebooking stage because order has seats.';

COMMENT ON COLUMN "SeatAvailabilityPayload"."segmentID" IS 'Segment ID. Use when need to fetch a certain segment of flight';

COMMENT ON COLUMN "SeatAvailabilityPayload"."shoppingResponseID" IS 'The responseID provided in OfferPrice response. Use when request SeatAvailability on Pre-Booking stage';

COMMENT ON COLUMN "SeatDisplay"."columns" IS 'All available seat columns';

COMMENT ON COLUMN "SeatDisplay"."segment" IS 'Flight Segment Reference Key';

COMMENT ON COLUMN "SeatLocation"."column" IS 'Column of the seat';

COMMENT ON COLUMN "SeatLocation"."row" IS 'Row of the seat';

COMMENT ON TABLE "Service" IS 'Service List';

COMMENT ON COLUMN "Service"."descriptions" IS 'List of service descriptions';

COMMENT ON COLUMN "Service"."maximumQuantity" IS 'Maximum quantity of services';

COMMENT ON COLUMN "Service"."minimumQuantity" IS 'Minimum quantity of services';

COMMENT ON COLUMN "Service"."name" IS 'Service name';

COMMENT ON COLUMN "Service"."objectKey" IS 'Service object key';

COMMENT ON COLUMN "Service"."properties" IS 'Properties';

COMMENT ON COLUMN "Service"."ref" IS 'Service reference';

COMMENT ON COLUMN "Service"."removable" IS 'Points when a service is removable or not. Used only in OrderViewRS';

COMMENT ON COLUMN "Service"."segmentReferences" IS 'Segment references';

COMMENT ON COLUMN "Service"."serviceID" IS 'Service ID';

COMMENT ON COLUMN "Service"."travelerReferences" IS 'Traveler references';

COMMENT ON TABLE "ServiceListMedia" IS 'ServiceListMedia media type (default view)';

COMMENT ON COLUMN "ServiceListMedia"."disclosures" IS 'List of disclosures';

COMMENT ON COLUMN "ServiceListMedia"."passengers" IS 'List of referenced travelers';

COMMENT ON COLUMN "ServiceListMedia"."services" IS 'List of services';

COMMENT ON TABLE "ServiceListPayload" IS 'ServiceListPayload is the type for ServiceList endpoint request body';

COMMENT ON COLUMN "ServiceListPayload"."id" IS 'AirGateway order ID';

COMMENT ON COLUMN "ServiceListPayload"."reshopOfferID" IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request ServiceList is called on the rebooking stage and order has services.';

COMMENT ON COLUMN "ServiceListPayload"."shoppingResponseID" IS 'The responseID provided in OfferPrice response. Use when request ServiceList on Pre-Booking stage';

COMMENT ON TABLE "ServiceRequest" IS 'Service Request';

COMMENT ON COLUMN "ServiceRequest"."owner" IS 'Service owner';

COMMENT ON COLUMN "ServiceRequest"."quantity" IS 'Baggage type (deprecated)';

COMMENT ON COLUMN "ServiceRequest"."segmentReference" IS 'Segment reference';

COMMENT ON COLUMN "ServiceRequest"."serviceID" IS 'Type of service (ID)';

COMMENT ON COLUMN "ServiceRequest"."text" IS 'Used in some services to indicate the quantity of some extra kilos in the baggage, the type of pet, etc...';

COMMENT ON COLUMN "ServiceRequest"."travelerReference" IS 'Traveler reference';

COMMENT ON TABLE "StopLocation" IS 'Stop location details';

COMMENT ON COLUMN "StopLocation"."airportCode" IS 'Airport code';

COMMENT ON COLUMN "StopLocation"."airportName" IS 'Airport name';

COMMENT ON COLUMN "StopLocation"."arrivalDate" IS 'Arrival date';

COMMENT ON COLUMN "StopLocation"."arrivalTime" IS 'Arrival time';

COMMENT ON COLUMN "StopLocation"."departureDate" IS 'Departure date';

COMMENT ON COLUMN "StopLocation"."departureTime" IS 'Departure time';

COMMENT ON COLUMN "TicketCoupon"."dateOfService" IS 'Coupon date of service';

COMMENT ON COLUMN "TicketCoupon"."fareBasisCode" IS 'Coupon fareBasisCode';

COMMENT ON COLUMN "TicketCoupon"."media" IS 'Coupon media';

COMMENT ON COLUMN "TicketCoupon"."number" IS 'Coupon number';

COMMENT ON COLUMN "TicketCoupon"."reference" IS 'Coupon ref';

COMMENT ON COLUMN "TicketCoupon"."remark" IS 'Coupon remark';

COMMENT ON COLUMN "TicketCoupon"."serviceReferences" IS 'Coupon service references';

COMMENT ON COLUMN "TicketCoupon"."status" IS 'Coupon status code';

COMMENT ON COLUMN "TicketCoupon"."statusDefinition" IS 'Coupon status description';

COMMENT ON COLUMN "TicketCoupon"."validatingAirline" IS 'Coupon validating airline';

COMMENT ON COLUMN "TicketCouponAirlineInfo"."status" IS 'Flight Segment status';

COMMENT ON COLUMN "TicketCouponAirlineInfoDepartureArrivalDateTime"."date" IS 'Flight Segment status';

COMMENT ON COLUMN "TicketCouponAirlineInfoDepartureArrivalDateTime"."time" IS 'Flight Segment status';

COMMENT ON COLUMN "TicketCouponValid"."effective" IS 'Coupon effective date';

COMMENT ON COLUMN "TicketCouponValid"."expiration" IS 'Coupon expiration date';

COMMENT ON COLUMN "TicketInfo"."coupons" IS 'Ticket coupons&#39; details';

COMMENT ON COLUMN "TicketInfo"."dateOfIssue" IS 'Ticket issue date';

COMMENT ON COLUMN "TicketInfo"."numberOfBooklets" IS 'Number of tickets for passenger';

COMMENT ON COLUMN "TicketInfo"."passengerRef" IS 'Passenger reference';

COMMENT ON COLUMN "TicketInfo"."remark" IS 'Remark text';

COMMENT ON COLUMN "TicketInfo"."ticketNumber" IS 'Ticket number of passenger';

COMMENT ON COLUMN "TicketInfo"."timeOfIssue" IS 'Ticket issue time';

COMMENT ON COLUMN "TicketInfo"."typeCode" IS 'Type of ticket';

COMMENT ON COLUMN "TicketInfo"."typeCodeDefinition" IS 'The meaning of the type of ticket';

COMMENT ON COLUMN "Travelers"."ADT" IS 'Number of adult passengers - older than 12 yo';

COMMENT ON COLUMN "Travelers"."CHD" IS 'Number of children - older than 2 yo';

COMMENT ON COLUMN "Travelers"."INF" IS 'Number of infants - younger than 2 yo';

COMMENT ON COLUMN "Travelers"."V14" IS 'Number of young adults for Tour Operators - 12-16 yo';

COMMENT ON COLUMN "Travelers"."VFR" IS 'Number of adult passengers for Tour Operators - older than 12 yo';

COMMENT ON COLUMN "Travelers"."VNF" IS 'Number of infants for Tour Operators - younger than 2 yo';

COMMENT ON COLUMN "Travelers"."VNN" IS 'Number of children for Tour Operators - older than 2 yo';

COMMENT ON COLUMN "Travelers"."YAD" IS 'Number of young adults - 12-16 yo';
