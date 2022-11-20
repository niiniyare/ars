Table "Address" {
  "cityName" TEXT [default: NULL]
  "countryCode" TEXT [default: NULL]
  "postalCode" TEXT [default: NULL]
  "street" TEXT [default: NULL]
}

Table "AgencyData" {
  "countryCode" TEXT [default: NULL]
  "iataCode" TEXT [default: NULL]
}

Table "AirDocIssuePayloadPayload" {
  "id" TEXT [not null]
  "payment" TEXT [not null]
}

Table "AirShoppingMedia" {
  "result" JSON [default: NULL]
}

Table "AirShoppingOffer" {
  "benefits" TEXT [default: NULL]
  "createdAt" BIGINT [default: NULL]
  "disclosures" JSON [default: NULL]
  "error" TEXT [default: NULL]
  "flights" JSON [default: NULL]
  "maxNumberOfStops" BIGINT [default: NULL]
  "offerID" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "priceBreakdown" TEXT [default: NULL]
}

Table "AirShoppingPayload" {
  "corporateDiscountCodes" JSON [default: NULL]
  "metadata" TEXT [default: NULL]
  "originDestinations" JSON [not null]
  "preferences" TEXT [default: NULL]
  "travelers" TEXT [not null]
}

Table "AllowedPaymentMethods" {
  "agencyCard" SMALLINT [not null]
  "agencyCash" SMALLINT [not null]
  "card" SMALLINT [not null]
  "none" SMALLINT [not null]
  "unusedTicket" SMALLINT [not null]
}

Table "AlternativePNR" {
  "id" TEXT [default: NULL]
  "providerID" TEXT [default: NULL]
}

Table "AncillariesToRebook" {
  "flightKey" TEXT [default: NULL]
  "rebook" SMALLINT [default: NULL]
}

Table "ArrivalASRQ" {
  "airportCode" CHAR(3) [not null]
  "date" TEXT [default: NULL]
}

Table "BaggageAllowance" {
  "carryOn" JSON [default: NULL]
  "checked" JSON [default: NULL]
}

Table "BaggageAllowanceItem" {
  "options" JSON [default: NULL]
  "passengerRefs" TEXT [default: NULL]
}

Table "BaggageAllowanceItemOption" {
  "properties" JSON [default: NULL]
  "quantity" BIGINT [default: NULL]
  "text" TEXT [default: NULL]
}

Table "Benefit" {
  "amount" TEXT [default: NULL]
  "application" TEXT [default: NULL]
  "description" TEXT [default: NULL]
  "term" TEXT [default: NULL]
}

Table "BookingReferenceResponse" {
  "airlineID" TEXT [default: NULL]
  "alternativeIDs" JSON [default: NULL]
  "id" TEXT [default: NULL]
  "otherID" TEXT [default: NULL]
}

Table "CarbonOffset" {
  "destination" TEXT [default: NULL]
  "footprint" "DECIMAL(20, 9)" [default: NULL]
  "origin" TEXT [default: NULL]
  "segmentKey" TEXT [default: NULL]
}

Table "CardInformation" {
  "cardCode" TEXT [default: NULL]
  "cardNumber" TEXT [default: NULL]
  "expirationDate" TEXT [default: NULL]
}

Table "Characteristics" {
  "code" TEXT [default: NULL]
  "definition" TEXT [default: NULL]
}

Table "ClassOfService" {
  "cabinDesignator" TEXT [default: NULL]
  "code" TEXT [default: NULL]
  "disclosureRefs" JSON [default: NULL]
  "fare" TEXT [default: NULL]
  "fareRules" JSON [default: NULL]
  "generalClassCode" TEXT [default: NULL]
  "refs" TEXT [default: NULL]
}

Table "DepartureASRQ" {
  "airportCode" CHAR(3) [not null]
  "date" TEXT [not null]
}

Table "Disclosure" {
  "descriptions" JSON [default: NULL]
  "listKey" TEXT [default: NULL]
}

Table "DisclosureDescription" {
  "category" TEXT [default: NULL]
  "item" TEXT [default: NULL]
  "media" TEXT [default: NULL]
  "metadataToken" TEXT [default: NULL]
  "originDestinationReference" TEXT [default: NULL]
  "properties" JSON [default: NULL]
  "text" TEXT [default: NULL]
  "units" TEXT [default: NULL]
}

Table "DisclosureProperty" {
  "UOM" TEXT [default: NULL]
  "type" TEXT [default: NULL]
  "value" TEXT [default: NULL]
}

Table "DiscountPreferences" {
  "largeFamily" TEXT [default: NULL]
  "residentCode" TEXT [default: NULL]
}

Table "Equipment" {
  "aircraftCode" TEXT [default: NULL]
  "name" TEXT [default: NULL]
}

Table "error" {
  "code" TEXT [default: NULL]
  "detail" TEXT [default: NULL]
  "id" TEXT [default: NULL]
  "meta" JSON [default: NULL]
  "status" TEXT [default: NULL]
}

Table "ExitSeat" {
  "position" TEXT [default: NULL]
  "row" BIGINT [default: NULL]
  "segmentID" TEXT [default: NULL]
}

Table "FQTVAccount" {
  "number" TEXT [default: NULL]
}

Table "FQTVInfo" {
  "account" TEXT [default: NULL]
  "airlineID" TEXT [default: NULL]
}

Table "Fare" {
  "Code" TEXT [default: NULL]
  "Definition" TEXT [default: NULL]
}

Table "FlightDetail" {
  "classOfService" TEXT [default: NULL]
  "duration" TEXT [default: NULL]
  "seatsLeft" TEXT [default: NULL]
  "segmentType" TEXT [default: NULL]
  "stopLocations" JSON [default: NULL]
  "stopQuantity" TEXT [default: NULL]
}

Table "FlightDetailFare" {
  "basisCode" TEXT [default: NULL]
  "cabin" TEXT [default: NULL]
  "code" TEXT [default: NULL]
  "marketingName" TEXT [default: NULL]
  "priceClassName" TEXT [default: NULL]
  "standardName" TEXT [default: NULL]
  "type" TEXT [default: NULL]
}

Table "FlightPointData" {
  "airportCode" TEXT [not null]
  "airportName" TEXT [default: NULL]
  "countryID" TEXT [default: NULL]
  "date" TEXT [default: NULL]
  "parentLocation" TEXT [default: NULL]
  "terminalName" TEXT [default: NULL]
  "time" TEXT [default: NULL]
}

Table "FlightPointDataRSArrInner" {
  "airportCode" TEXT [not null]
  "airportName" TEXT [default: NULL]
  "countryID" TEXT [default: NULL]
  "date" TEXT [default: NULL]
  "parentLocation" TEXT [default: NULL]
  "terminalName" TEXT [default: NULL]
  "time" TEXT [default: NULL]
}

Table "FlightPointDataRSDepInner" {
  "airportCode" TEXT [not null]
  "airportName" TEXT [default: NULL]
  "countryID" TEXT [default: NULL]
  "date" TEXT [default: NULL]
  "parentLocation" TEXT [default: NULL]
  "terminalName" TEXT [default: NULL]
  "time" TEXT [default: NULL]
}

Table "FlightSegment" {
  "ODRef" TEXT [default: NULL]
  "detail" TEXT [default: NULL]
  "equipment" TEXT [not null]
  "fareCode" TEXT [default: NULL]
  "flightNumber" TEXT [default: NULL]
  "marketingCarrier" TEXT [not null]
  "operatingCarrier" TEXT [default: NULL]
  "originDestination" TEXT [not null]
  "segmentID" TEXT [default: NULL]
}

Table "Identity4Discount" {
  "identityDocumentNumber" TEXT [default: NULL]
  "identityDocumentType" TEXT [default: NULL]
  "remark" TEXT [default: NULL]
}

Table "ItinShoppingMedia" {
  "itinerary" TEXT [default: NULL]
  "status" TEXT [default: NULL]
}

Table "ItinShoppingPayload" {
  "itinerary" JSON [not null]
  "metadata" TEXT [default: NULL]
  "travelers" TEXT [not null]
}

Table "ItineraryFlight" {
  "arrival" TEXT [default: NULL]
  "departure" TEXT [default: NULL]
  "duration" TEXT [default: NULL]
  "key" TEXT [default: NULL]
  "segments" JSON [default: NULL]
}

Table "ItineraryFlightSegment" {
  "ODRef" TEXT [default: NULL]
  "detail" TEXT [default: NULL]
  "equipment" TEXT [default: NULL]
  "flightNumber" TEXT [default: NULL]
  "marketingCarrier" TEXT [default: NULL]
  "operatingCarrier" TEXT [default: NULL]
  "originDestination" TEXT [default: NULL]
  "segmentID" TEXT [default: NULL]
}

Table "ItineraryFlightSegmentDetail" {
  "duration" TEXT [default: NULL]
  "segmentType" TEXT [default: NULL]
  "stopLocations" JSON [default: NULL]
  "stopQuantity" TEXT [default: NULL]
}

Table "ItineraryOption" {
  "details" JSON [default: NULL]
  "disclosures" JSON [default: NULL]
  "offerID" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "priceBreakdown" TEXT [default: NULL]
}

Table "ItineraryOptionFlight" {
  "baggageAllowance" TEXT [default: NULL]
  "key" TEXT [default: NULL]
  "segments" JSON [default: NULL]
}

Table "ItineraryOptionFlightSegmentDetail" {
  "ODRef" TEXT [default: NULL]
  "cabinDesignator" TEXT [default: NULL]
  "code" TEXT [default: NULL]
  "disclosureRefs" JSON [default: NULL]
  "fare" TEXT [default: NULL]
  "fareRules" JSON [default: NULL]
  "generalClassCode" TEXT [default: NULL]
  "refs" TEXT [default: NULL]
  "seatsLeft" TEXT [default: NULL]
  "segmentID" TEXT [default: NULL]
}

Table "ItineraryRQ" {
  "arrival" CHAR(3) [not null]
  "date" TEXT [not null]
  "departure" CHAR(3) [not null]
  "flightNumbers" JSON [default: NULL]
}

Table "MarketingCarrier" {
  "airlineID" CHAR(2) [not null]
  "flightNumber" TEXT [not null]
  "name" TEXT [not null]
}

Table "MediaData" {
  "id" TEXT [default: NULL]
  "link" TEXT [default: NULL]
}

Table "metadata" {
  "country" CHAR(2) [not null]
  "currency" TEXT [not null]
  "locale" TEXT [not null]
}

Table "OfferPriceAllowedRequests" {
  "OrderCreateWithPayment" SMALLINT [default: NULL]
  "SeatAvailability" SMALLINT [default: NULL]
  "ServiceList" SMALLINT [default: NULL]
}

Table "OfferPriceMedia" {
  "agencyData" TEXT [default: NULL]
  "allowedPaymentMethods" TEXT [default: NULL]
  "allowedRequests" TEXT [default: NULL]
  "benefits" TEXT [default: NULL]
  "cardSurcharges" JSON [default: NULL]
  "createdAt" BIGINT [default: NULL]
  "disclosures" JSON [default: NULL]
  "discounts" TEXT [default: NULL]
  "extraInfoMandatory" JSON [default: NULL]
  "flights" JSON [default: NULL]
  "instantPayment" TEXT [default: NULL]
  "offerExpiration" TEXT [default: NULL]
  "offerID" TEXT [default: NULL]
  "owner" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "paymentTimeLimit" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "remarks" TEXT [default: NULL]
  "shoppingResponseID" TEXT [default: NULL]
  "specialServices" JSON [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OfferPricePayload" {
  "offerID" TEXT [default: NULL]
  "offerIDs" JSON [default: NULL]
  "reshopOfferID" TEXT [default: NULL]
  "services" JSON [default: NULL]
}

Table "OfferPriceRemarks" {
  "templates" JSON [default: NULL]
}

Table "OperatingCarrier" {
  "airlineID" CHAR(2) [not null]
  "flightNumber" TEXT [default: NULL]
  "name" TEXT [not null]
}

Table "OrderCancelMedia" {
  "orderID" TEXT [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OrderCancelPayload" {
  "id" TEXT [not null]
}

Table "OrderChangePayload" {
  "action" TEXT [default: NULL]
  "id" TEXT [not null]
  "loyaltyProgramAccount" TEXT [default: NULL]
  "passengerUpdate" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "payment" TEXT [default: NULL]
  "reshopOfferID" TEXT [default: NULL]
  "services" JSON [default: NULL]
}

Table "OrderCommentsMedia" {
  "ok" SMALLINT [default: NULL]
}

Table "OrderCommentsPayload" {
  "comments" TEXT [default: NULL]
  "id" TEXT [not null]
}

Table "OrderCreateAllowedRequests" {
  "pending" TEXT [default: NULL]
  "started" TEXT [default: NULL]
  "ticketed" TEXT [default: NULL]
}

Table "OrderCreateAllowedRequestsPending" {
  "OrderCancel" SMALLINT [default: NULL]
  "OrderReprice" SMALLINT [default: NULL]
  "OrderSplit" SMALLINT [default: NULL]
  "SeatAvailability" SMALLINT [default: NULL]
  "ServiceList" SMALLINT [default: NULL]
  "TicketIssue" SMALLINT [default: NULL]
}

Table "OrderCreateAllowedRequestsStarted" {
  "OrderCancel" SMALLINT [default: NULL]
  "OrderReshop" SMALLINT [default: NULL]
  "OrderReshopRefund" SMALLINT [default: NULL]
}

Table "OrderCreateAllowedRequestsTicketed" {
  "OrderCancel" SMALLINT [default: NULL]
  "OrderCancelToVoucher" SMALLINT [default: NULL]
  "OrderReshop" SMALLINT [default: NULL]
  "OrderReshopRefund" SMALLINT [default: NULL]
  "OrderReshopRouteChange" SMALLINT [default: NULL]
  "OrderSplit" SMALLINT [default: NULL]
  "OrderVoid" SMALLINT [default: NULL]
  "SeatAvailability" SMALLINT [default: NULL]
  "ServiceList" SMALLINT [default: NULL]
}

Table "OrderCreateMedia" {
  "agency" TEXT [default: NULL]
  "agencyData" TEXT [default: NULL]
  "allowedPaymentMethods" TEXT [default: NULL]
  "allowedRequests" TEXT [default: NULL]
  "approvalStatus" TEXT [default: NULL]
  "approved" SMALLINT [default: NULL]
  "benefits" TEXT [default: NULL]
  "bookingDate" TEXT [default: NULL]
  "bookingReference" TEXT [default: NULL]
  "bookingType" TEXT [default: NULL]
  "carbonOffset" JSON [default: NULL]
  "comments" TEXT [default: NULL]
  "corporateID" TEXT [default: NULL]
  "createdAt" TEXT [default: NULL]
  "disclosures" JSON [default: NULL]
  "disruptionMessage" TEXT [default: NULL]
  "disruptionStatus" TEXT [default: NULL]
  "externalOrderID" TEXT [default: NULL]
  "files" JSON [default: NULL]
  "flights" JSON [default: NULL]
  "formOfPayment" TEXT [default: NULL]
  "history" JSON [default: NULL]
  "id" TEXT [default: NULL]
  "logs" JSON [default: NULL]
  "metas" JSON [default: NULL]
  "orderID" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "payment" TEXT [default: NULL]
  "paymentTimeLimit" TEXT [default: NULL]
  "penalties" JSON [default: NULL]
  "pnr" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "priceGuaranteeTimeLimit" TEXT [default: NULL]
  "readyToTicketIssue" SMALLINT [default: NULL]
  "refundType" TEXT [default: NULL]
  "refundedAmount" TEXT [default: NULL]
  "remarks" TEXT [default: NULL]
  "seats" JSON [default: NULL]
  "sendForApprovalAllowed" SMALLINT [default: NULL]
  "services" JSON [default: NULL]
  "status" TEXT [default: NULL]
  "ticketIssue" JSON [default: NULL]
  "tickets" JSON [default: NULL]
  "updatedAt" TEXT [default: NULL]
  "viewMode" TEXT [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OrderCreatePayload" {
  "corporateID" TEXT [default: NULL]
  "loyaltyProgramAccount" TEXT [default: NULL]
  "metas" JSON [default: NULL]
  "passengers" JSON [not null]
  "payment" TEXT [default: NULL]
  "remarks" TEXT [default: NULL]
  "shoppingResponseID" TEXT [not null]
}

Table "OrderCreatePayment" {
  "amount" "DECIMAL(20, 9)" [default: NULL]
  "cardInformation" TEXT [default: NULL]
  "currency" TEXT [default: NULL]
  "status" TEXT [default: NULL]
  "type" TEXT [default: NULL]
}

Table "OrderCreateRemarks" {
  "data" TEXT [default: NULL]
  "result" TEXT [default: NULL]
}

Table "OrderFile" {
  "id" TEXT [default: NULL]
  "type" TEXT [default: NULL]
}

Table "OrderHistoryItem" {
  "agency" TEXT [default: NULL]
  "agent" TEXT [default: NULL]
  "details" JSON [default: NULL]
  "eventID" TEXT [default: NULL]
  "eventTime" TEXT [default: NULL]
  "id" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "tickets" JSON [default: NULL]
  "transactionType" TEXT [default: NULL]
}

Table "OrderHistoryMedia" {
  "count" BIGINT [not null]
  "history" JSON [not null]
}

Table "OrderListCounters" {
  "active" BIGINT [default: NULL]
  "approved" BIGINT [default: NULL]
  "cancelled" BIGINT [default: NULL]
  "disrupted" BIGINT [default: NULL]
  "pending" BIGINT [default: NULL]
  "refused" BIGINT [default: NULL]
  "ticketed" BIGINT [default: NULL]
  "underApproval" BIGINT [default: NULL]
  "unused" BIGINT [default: NULL]
  "voided" BIGINT [default: NULL]
}

Table "OrderListItem" {
  "agency" TEXT [default: NULL]
  "approveStatus" TEXT [default: NULL]
  "bookingDate" TEXT [default: NULL]
  "bookingType" TEXT [default: NULL]
  "corporateID" TEXT [default: NULL]
  "disruptionStatus" TEXT [default: NULL]
  "flights" JSON [default: NULL]
  "id" TEXT [default: NULL]
  "orderID" TEXT [default: NULL]
  "owner" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "paymentTimeLimit" TEXT [default: NULL]
  "pnr" TEXT [default: NULL]
  "provider" TEXT [default: NULL]
  "status" TEXT [default: NULL]
}

Table "OrderListMedia" {
  "agencies" JSON [default: NULL]
  "count" BIGINT [default: NULL]
  "counters" TEXT [default: NULL]
  "orders" JSON [default: NULL]
}

Table "OrderLog" {
  "severity" TEXT [default: NULL]
  "text" TEXT [default: NULL]
  "timestamp" TEXT [default: NULL]
  "type" TEXT [default: NULL]
}

Table "OrderMetasMedia" {
  "ok" SMALLINT [default: NULL]
}

Table "OrderMetasPayload" {
  "id" TEXT [not null]
  "metas" JSON [default: NULL]
}

Table "OrderRemarkData" {
  "template" TEXT [default: NULL]
  "variables" JSON [default: NULL]
}

Table "OrderRemarkTemplate" {
  "data" TEXT [default: NULL]
  "name" TEXT [default: NULL]
  "neededOnCreation" SMALLINT [default: NULL]
}

Table "OrderRemarks" {
  "data" TEXT [default: NULL]
  "result" TEXT [default: NULL]
  "templates" JSON [default: NULL]
}

Table "OrderRemarksMedia" {
  "ok" SMALLINT [default: NULL]
}

Table "OrderRemarksPayload" {
  "data" TEXT [default: NULL]
  "id" TEXT [not null]
  "result" TEXT [default: NULL]
}

Table "OrderReshopMedia" {
  "offers" JSON [default: NULL]
}

Table "OrderReshopMediaType" {
  "benefits" TEXT [default: NULL]
  "disclosures" JSON [default: NULL]
  "flights" JSON [default: NULL]
  "offerID" TEXT [default: NULL]
  "offerType" ENUM [default: NULL]
  "owner" CHAR(2) [default: NULL]
  "price" TEXT [default: NULL]
  "priceBreakdown" TEXT [default: NULL]
  "priceChange" SMALLINT [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OrderReshopPayload" {
  "id" TEXT [not null]
  "originDestinations" JSON [not null]
  "preferences" TEXT [default: NULL]
}

Table "OrderReshopRefundMedia" {
  "flights" JSON [default: NULL]
  "originalOrder" TEXT [default: NULL]
  "penalty" TEXT [default: NULL]
  "refund" TEXT [default: NULL]
  "seats" JSON [default: NULL]
  "services" JSON [default: NULL]
  "tickets" JSON [default: NULL]
  "voidPermited" SMALLINT [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OrderReshopRefundPayload" {
  "id" TEXT [not null]
  "type" TEXT
}

Table "OrderReshopRepriceMedia" {
  "benefits" TEXT [default: NULL]
  "cardSurcharges" JSON [default: NULL]
  "disclosures" JSON [default: NULL]
  "flights" JSON [default: NULL]
  "offerID" TEXT [default: NULL]
  "owner" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "seatsToRebook" JSON [default: NULL]
  "servicesToRebook" JSON [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "OrderReshopRepricePayload" {
  "id" TEXT [not null]
  "offerID" TEXT [default: NULL]
}

Table "OrderRetrievePayload" {
  "id" TEXT [not null]
}

Table "OrderReviewMedia" {
  "ok" SMALLINT [default: NULL]
}

Table "OrderReviewPayload" {
  "action" TEXT [not null]
  "id" TEXT [not null]
  "reason" TEXT [default: NULL]
}

Table "OriginDestinationASRQ" {
  "arrival" TEXT [not null]
  "departure" TEXT [not null]
}

Table "OriginDestinationRS_Inner" {
  "arrival" TEXT [default: NULL]
  "departure" TEXT [default: NULL]
}

Table "Passenger" {
  "data" TEXT [default: NULL]
  "document" TEXT [default: NULL]
  "fareBasisCodes" JSON [default: NULL]
  "identity4Discount" JSON [default: NULL]
  "infantReference" TEXT [default: NULL]
  "passengerType" TEXT [default: NULL]
  "seats" JSON [default: NULL]
  "services" JSON [default: NULL]
  "specialServices" JSON [default: NULL]
  "travelerReference" TEXT [not null]
}

Table "PassengerData" {
  "address" TEXT [default: NULL]
  "birthdate" TEXT [default: NULL]
  "email" TEXT [default: NULL]
  "fqtvInfo" TEXT [default: NULL]
  "name" TEXT [not null]
  "surname" TEXT [default: NULL]
}

Table "Payment" {
  "cardCode" TEXT [default: NULL]
  "cardHolderEmail" TEXT [default: NULL]
  "cardHolderName" TEXT [default: NULL]
  "cardHolderSurname" TEXT [default: NULL]
  "cardHolderTitle" TEXT [default: NULL]
  "cardNumber" TEXT [default: NULL]
  "cardType" TEXT [default: NULL]
  "cashEmail" TEXT [default: NULL]
  "cashName" TEXT [default: NULL]
  "cashSurname" TEXT [default: NULL]
  "cashTitle" TEXT [default: NULL]
  "cityName" TEXT [default: NULL]
  "countryCode" TEXT [default: NULL]
  "expiration" TEXT [default: NULL]
  "method" TEXT [not null]
  "passengerType" TEXT [default: NULL]
  "phone" TEXT [default: NULL]
  "postalCode" TEXT [default: NULL]
  "remark" TEXT [default: NULL]
  "seriesCode" TEXT [default: NULL]
  "stateProv" TEXT [default: NULL]
  "street1" TEXT [default: NULL]
  "street2" TEXT [default: NULL]
  "voucher" TEXT [default: NULL]
}

Table "PaymentVoucher" {
  "amount" "DECIMAL(20, 9)" [default: NULL]
  "currency" TEXT [default: NULL]
  "email" TEXT [default: NULL]
  "number" TEXT [default: NULL]
  "surname" TEXT [default: NULL]
}

Table "Penalty" {
  "amounts" JSON [default: NULL]
  "description" TEXT [default: NULL]
  "type" TEXT [default: NULL]
}

Table "PenaltyAmount" {
  "amount" "DECIMAL(20, 9)" [default: NULL]
  "currency" TEXT [default: NULL]
  "providerAmount" "DECIMAL(20, 9)" [default: NULL]
  "providerCurrency" TEXT [default: NULL]
  "remark" TEXT [default: NULL]
}

Table "Preferences" {
  "cabin" JSON [default: NULL]
  "discounts" TEXT [default: NULL]
  "fare" TEXT [default: NULL]
  "fareList" JSON [default: NULL]
  "nonStop" SMALLINT [default: NULL]
}

Table "PreferencesAS" {
  "cabin" JSON [default: NULL]
  "discounts" TEXT [default: NULL]
  "fare" TEXT [default: NULL]
  "fareList" JSON [default: NULL]
  "maxDuration" JSON [default: NULL]
  "maxDurationRatio" JSON [default: NULL]
  "maxStops" JSON [default: NULL]
  "nonStop" SMALLINT [default: NULL]
}

Table "Price" {
  "consumer" TEXT [default: NULL]
  "provider" TEXT [default: NULL]
}

Table "PriceBreakdown" {
  "inbound" TEXT [default: NULL]
  "outbound" TEXT [default: NULL]
}

Table "PriceDetail" {
  "base" "DECIMAL(20, 9)" [default: NULL]
  "breakdown" JSON [default: NULL]
  "currency" TEXT [default: NULL]
  "surcharge" "DECIMAL(20, 9)" [default: NULL]
  "tax" TEXT [default: NULL]
  "total" "DECIMAL(20, 9)" [default: NULL]
}

Table "PriceDetailBreakdown" {
  "base" "DECIMAL(20, 9)" [default: NULL]
  "offerItemID" TEXT [default: NULL]
  "passengerRefs" TEXT [default: NULL]
  "passengerType" TEXT [default: NULL]
  "surcharge" "DECIMAL(20, 9)" [default: NULL]
  "tax" TEXT [default: NULL]
}

Table "PriceDetailTax" {
  "breakdown" JSON [default: NULL]
  "total" "DECIMAL(20, 9)" [default: NULL]
}

Table "PriceDetailTaxBreakdown" {
  "code" TEXT [default: NULL]
  "currency" TEXT [default: NULL]
  "description" TEXT [default: NULL]
  "total" "DECIMAL(20, 9)" [default: NULL]
}

Table "ProviderListMedia" {
  "providers" JSON [default: NULL]
}

Table "Rows" {
  "first" BIGINT [default: NULL]
  "last" BIGINT [default: NULL]
}

Table "SSR" {
  "bookingInstructions" TEXT [default: NULL]
  "code" TEXT [default: NULL]
  "desc" TEXT [default: NULL]
  "passengerType" TEXT [default: NULL]
  "text_required" SMALLINT [default: NULL]
}

Table "Seat" {
  "characteristics" JSON [default: NULL]
  "description" TEXT [default: NULL]
  "listKey" TEXT [default: NULL]
  "location" TEXT [default: NULL]
  "passengerRefs" TEXT [default: NULL]
  "passengerType" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "refs" TEXT [default: NULL]
  "remarks" JSON [default: NULL]
  "removable" SMALLINT [default: NULL]
  "segment" TEXT [default: NULL]
}

Table "SeatAvailabilityMedia" {
  "disclosures" JSON [default: NULL]
  "exits" JSON [default: NULL]
  "owner" TEXT [default: NULL]
  "seatDisplay" JSON [default: NULL]
  "seatList" JSON [default: NULL]
  "segments" JSON [default: NULL]
}

Table "SeatAvailabilityPayload" {
  "id" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "reshopOfferID" TEXT [default: NULL]
  "segmentID" TEXT [default: NULL]
  "shoppingResponseID" TEXT [default: NULL]
}

Table "SeatDisplay" {
  "columns" TEXT [default: NULL]
  "rows" TEXT [default: NULL]
  "segment" TEXT [default: NULL]
}

Table "SeatLocation" {
  "column" TEXT [default: NULL]
  "row" BIGINT [default: NULL]
}

Table "Service" {
  "bookingInstructions" TEXT [default: NULL]
  "descriptions" JSON [default: NULL]
  "maximumQuantity" BIGINT [default: NULL]
  "minimumQuantity" BIGINT [default: NULL]
  "name" TEXT [default: NULL]
  "objectKey" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "properties" JSON [default: NULL]
  "ref" TEXT [default: NULL]
  "removable" SMALLINT [default: NULL]
  "segmentReferences" TEXT [default: NULL]
  "serviceID" TEXT [default: NULL]
  "travelerReferences" TEXT [default: NULL]
}

Table "ServiceListMedia" {
  "disclosures" JSON [default: NULL]
  "passengers" JSON [default: NULL]
  "segments" JSON [default: NULL]
  "services" JSON [default: NULL]
  "warnings" JSON [default: NULL]
}

Table "ServiceListPayload" {
  "id" TEXT [default: NULL]
  "passengers" JSON [default: NULL]
  "reshopOfferID" TEXT [default: NULL]
  "shoppingResponseID" TEXT [default: NULL]
}

Table "ServiceRequest" {
  "action" ENUM [not null]
  "owner" TEXT [default: NULL]
  "quantity" "DECIMAL(20, 9)" [default: NULL]
  "seatLocation" TEXT [default: NULL]
  "segmentReference" TEXT [default: NULL]
  "serviceID" TEXT [default: NULL]
  "text" TEXT [default: NULL]
  "travelerReference" TEXT [default: NULL]
}

Table "StopLocation" {
  "airportCode" TEXT [default: NULL]
  "airportName" TEXT [default: NULL]
  "arrivalDate" TEXT [default: NULL]
  "arrivalTime" TEXT [default: NULL]
  "departureDate" TEXT [default: NULL]
  "departureTime" TEXT [default: NULL]
}

Table "TicketCoupon" {
  "dateOfService" TEXT [default: NULL]
  "fareBasisCode" TEXT [default: NULL]
  "media" TEXT [default: NULL]
  "number" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "reference" TEXT [default: NULL]
  "remark" TEXT [default: NULL]
  "segment" TEXT [default: NULL]
  "serviceReferences" TEXT [default: NULL]
  "status" TEXT [default: NULL]
  "statusDefinition" TEXT [default: NULL]
  "valid" TEXT [default: NULL]
  "validatingAirline" TEXT [default: NULL]
}

Table "TicketCouponAirlineInfo" {
  "arrival" TEXT [default: NULL]
  "arrivalDateTime" TEXT [default: NULL]
  "departure" TEXT [default: NULL]
  "departureDateTime" TEXT [default: NULL]
  "equipment" TEXT [default: NULL]
  "marketingCarrier" TEXT [default: NULL]
  "status" TEXT [default: NULL]
}

Table "TicketCouponAirlineInfoDepartureArrivalDateTime" {
  "date" TEXT [default: NULL]
  "time" TEXT [default: NULL]
}

Table "TicketCouponValid" {
  "effective" TEXT [default: NULL]
  "expiration" TEXT [default: NULL]
}

Table "TicketInfo" {
  "coupons" JSON [default: NULL]
  "dateOfIssue" TEXT [default: NULL]
  "numberOfBooklets" BIGINT [default: NULL]
  "passengerRef" TEXT [default: NULL]
  "price" TEXT [default: NULL]
  "remark" TEXT [default: NULL]
  "ticketNumber" TEXT [default: NULL]
  "timeOfIssue" TEXT [default: NULL]
  "typeCode" TEXT [default: NULL]
  "typeCodeDefinition" TEXT [default: NULL]
}

Table "Travelers" {
  "ADT" "DECIMAL(20, 9)" [not null]
  "CHD" "DECIMAL(20, 9)" [default: NULL]
  "INF" "DECIMAL(20, 9)" [default: NULL]
  "V14" "DECIMAL(20, 9)" [default: NULL]
  "VFR" "DECIMAL(20, 9)" [default: NULL]
  "VNF" "DECIMAL(20, 9)" [default: NULL]
  "VNN" "DECIMAL(20, 9)" [default: NULL]
  "YAD" "DECIMAL(20, 9)" [default: NULL]
}
