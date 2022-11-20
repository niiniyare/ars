
CREATE TABLE IF NOT EXISTS Address (
  cityName TEXT DEFAULT NULL ,
  countryCode TEXT DEFAULT NULL ,
  postalCode TEXT DEFAULT NULL ,
  street TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `AgencyData` generated from model 'AgencyData'
--


CREATE TABLE IF NOT EXISTS AgencyData (
  countryCode TEXT DEFAULT NULL ,
  iataCode TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `AirDocIssuePayloadPayload` generated from model 'AirDocIssuePayloadPayload'
--


CREATE TABLE IF NOT EXISTS AirDocIssuePayloadPayload (
  id TEXT NOT NULL ,
  payment TEXT NOT NULL
)  ;

--
-- SQLINES DEMO *** or table `AirShoppingMedia` generated from model 'AirShoppingMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS AirShoppingMedia (
  result JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `AirShoppingOffer` generated from model 'AirShoppingOffer'
--


CREATE TABLE IF NOT EXISTS AirShoppingOffer (
  benefits TEXT DEFAULT NULL,
  createdAt BIGINT DEFAULT NULL ,
  disclosures JSON DEFAULT NULL ,
  error TEXT DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  maxNumberOfStops BIGINT DEFAULT NULL ,
  offerID TEXT DEFAULT NULL ,
  -- offerType ENUM('oneWay', 'roundTrip', 'multiCity') DEFAULT NULL COMMENT 'Offer type',
  -- owner CHAR(2) DEFAULT NULL COMMENT '2 letter abbreviation of airline',
  -- paymentTimeLimit TEXT DEFAULT NULL COMMENT 'Offer payment time limit, after this time created order will become expired',
  price TEXT DEFAULT NULL,
  priceBreakdown TEXT DEFAULT NULL
  -- provider CHAR(2) DEFAULT NULL COMMENT '2 letter abbreviation of airline'
) ;

--
-- SQLINES DEMO *** or table `AirShoppingPayload` generated from model 'AirShoppingPayload'
-- SQLINES DEMO *** d is the type for AirShopping endpoint request body
--


CREATE TABLE IF NOT EXISTS AirShoppingPayload (
  corporateDiscountCodes JSON DEFAULT NULL ,
  metadata TEXT DEFAULT NULL,
  originDestinations JSON NOT NULL ,
  preferences TEXT DEFAULT NULL,
  travelers TEXT NOT NULL
);

--
-- SQLINES DEMO *** or table `AllowedPaymentMethods` generated from model 'AllowedPaymentMethods'
-- SQLINES DEMO *** ethods
--


CREATE TABLE IF NOT EXISTS AllowedPaymentMethods (
  agencyCard SMALLINT NOT NULL,
  agencyCash SMALLINT NOT NULL,
  card SMALLINT NOT NULL,
  none SMALLINT NOT NULL,
  unusedTicket SMALLINT NOT NULL
);

--
-- SQLINES DEMO *** or table `AlternativePNR` generated from model 'AlternativePNR'
-- SQLINES DEMO *** o the alternative pnrs not owner by the airlines, but for 3th parties.
--


CREATE TABLE IF NOT EXISTS AlternativePNR (
  id TEXT DEFAULT NULL ,
  providerID TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `AncillariesToRebook` generated from model 'AncillariesToRebook'
--


CREATE TABLE IF NOT EXISTS AncillariesToRebook (
  flightKey TEXT DEFAULT NULL,
  rebook SMALLINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `ArrivalASRQ` generated from model 'ArrivalASRQ'
-- SQLINES DEMO *** st arrival
--


CREATE TABLE IF NOT EXISTS ArrivalASRQ (
  airportCode CHAR(3) NOT NULL ,
  date TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `BaggageAllowance` generated from model 'BaggageAllowance'
--


CREATE TABLE IF NOT EXISTS BaggageAllowance (
  carryOn JSON DEFAULT NULL,
  checked JSON DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `BaggageAllowanceItem` generated from model 'BaggageAllowanceItem'
--


CREATE TABLE IF NOT EXISTS BaggageAllowanceItem (
  -- chooseType ENUM('one', 'many') DEFAULT NULL ,
  options JSON DEFAULT NULL ,
  passengerRefs TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `BaggageAllowanceItemOption` generated from model 'BaggageAllowanceItemOption'
-- SQLINES DEMO ***  Item Option
--


CREATE TABLE IF NOT EXISTS BaggageAllowanceItemOption (
  properties JSON DEFAULT NULL ,
  quantity BIGINT DEFAULT NULL ,
  text TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `Benefit` generated from model 'Benefit'
--


CREATE TABLE IF NOT EXISTS Benefit (
  amount TEXT DEFAULT NULL,
  application TEXT DEFAULT NULL ,
  description TEXT DEFAULT NULL ,
  term TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `BookingInstructions` generated from model 'BookingInstructions'
-- SQLINES DEMO *** e is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.
--


--CREATE TABLE IF NOT EXISTS BookingInstructions (
  -- mandatoryText ENUM('not_allowed', 'mandatory', 'optional') DEFAULT NULL COMMENT 'This attribute indicates the optional, mandatory or not allowed need for the text',
 -- pattern TEXT DEFAULT NULL COMMENT 'The pattern that the text introduced by the customer should match to. This value can be empty',
 -- placeHolder TEXT DEFAULT NULL COMMENT 'The text in the input or the textarea which helps the customers knows what should write',
 -- type TEXT DEFAULT NULL COMMENT 'The type for the input used to be filled by the customer, it can be number or text'
--)  COMMENT='Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.';

--
-- SQLINES DEMO *** or table `BookingReferenceResponse` generated from model 'BookingReferenceResponse'
-- SQLINES DEMO *** esponse
--


CREATE TABLE IF NOT EXISTS BookingReferenceResponse (
  airlineID TEXT DEFAULT NULL ,
  alternativeIDs JSON DEFAULT NULL,
  id TEXT DEFAULT NULL ,
  otherID TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `CarbonOffset` generated from model 'CarbonOffset'
--


CREATE TABLE IF NOT EXISTS CarbonOffset (
  destination TEXT DEFAULT NULL ,
  footprint DECIMAL(20, 9) DEFAULT NULL ,
  origin TEXT DEFAULT NULL ,
  segmentKey TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `CardInformation` generated from model 'CardInformation'
--


CREATE TABLE IF NOT EXISTS CardInformation (
  cardCode TEXT DEFAULT NULL ,
  cardNumber TEXT DEFAULT NULL ,
  expirationDate TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Characteristics` generated from model 'Characteristics'
-- SQLINES DEMO *** nfo
--


CREATE TABLE IF NOT EXISTS Characteristics (
  code TEXT DEFAULT NULL,
  definition TEXT DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `ClassOfService` generated from model 'ClassOfService'
-- SQLINES DEMO *** ice offered
--


CREATE TABLE IF NOT EXISTS ClassOfService (
  cabinDesignator TEXT DEFAULT NULL ,
  code TEXT DEFAULT NULL ,
  disclosureRefs JSON DEFAULT NULL ,
  fare TEXT DEFAULT NULL,
  fareRules JSON DEFAULT NULL ,
  generalClassCode TEXT DEFAULT NULL,
  refs TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `DepartureASRQ` generated from model 'DepartureASRQ'
-- SQLINES DEMO *** st departure
--


CREATE TABLE IF NOT EXISTS DepartureASRQ (
  airportCode CHAR(3) NOT NULL ,
  date TEXT NOT NULL 
);

--
-- SQLINES DEMO *** or table `Disclosure` generated from model 'Disclosure'
--


CREATE TABLE IF NOT EXISTS Disclosure (
  descriptions JSON DEFAULT NULL ,
  listKey TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `DisclosureDescription` generated from model 'DisclosureDescription'
-- SQLINES DEMO *** ption
--


CREATE TABLE IF NOT EXISTS DisclosureDescription (
  category TEXT DEFAULT NULL ,
  item TEXT DEFAULT NULL ,
  media TEXT DEFAULT NULL,
  metadataToken TEXT DEFAULT NULL ,
  originDestinationReference TEXT DEFAULT NULL ,
  properties JSON DEFAULT NULL ,
  text TEXT DEFAULT NULL ,
  units TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `DisclosureProperty` generated from model 'DisclosureProperty'
-- SQLINES DEMO *** ties
--


CREATE TABLE IF NOT EXISTS DisclosureProperty (
  UOM TEXT DEFAULT NULL ,
  type TEXT DEFAULT NULL ,
  value TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `DiscountPreferences` generated from model 'DiscountPreferences'
--


CREATE TABLE IF NOT EXISTS DiscountPreferences (
  largeFamily TEXT DEFAULT NULL ,
  residentCode TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Document` generated from model 'Document'
--


--CREATE TABLE IF NOT EXISTS Document (
  --documentID TEXT NOT NULL,
-- documentType ENUM('PP', 'NI', '') NOT NULL COMMENT 'Valid values: ',
 -- expirationDate TEXT DEFAULT NULL COMMENT 'The expiration date of the document using format YYYY-MM-DD.') ;

--
-- SQLINES DEMO *** or table `Equipment` generated from model 'Equipment'
--


CREATE TABLE IF NOT EXISTS Equipment (
  aircraftCode TEXT DEFAULT NULL,
  name TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `error` generated from model 'error'
-- SQLINES DEMO *** dia type (default view)
--


CREATE TABLE IF NOT EXISTS error (
  code TEXT DEFAULT NULL ,
  detail TEXT DEFAULT NULL ,
  id TEXT DEFAULT NULL ,
  meta JSON DEFAULT NULL ,
  status TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `ExitSeat` generated from model 'ExitSeat'
--


CREATE TABLE IF NOT EXISTS ExitSeat (
  position TEXT DEFAULT NULL ,
  row BIGINT DEFAULT NULL ,
  segmentID TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FQTVAccount` generated from model 'FQTVAccount'
-- SQLINES DEMO ***  account
--


CREATE TABLE IF NOT EXISTS FQTVAccount (
  number TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `FQTVInfo` generated from model 'FQTVInfo'
-- SQLINES DEMO ***  information
--


CREATE TABLE IF NOT EXISTS FQTVInfo (
  account TEXT DEFAULT NULL,
  airlineID TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `Fare` generated from model 'Fare'
--


CREATE TABLE IF NOT EXISTS Fare (
  Code TEXT DEFAULT NULL ,
  Definition TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FareRule` generated from model 'FareRule'
-- SQLINES DEMO *** gment and per each passenger type.
--

/*
CREATE TABLE IF NOT EXISTS FareRule (
  cancel ENUM( 'Allowed', 'For Fee', 'Not Allowed') DEFAULT NULL COMMENT 'The fare rule for the cancelability.',
  cancelEnum ENUM( 'allowed', 'for_fee', 'not_allowed') DEFAULT NULL COMMENT 'The fare rule for the cancelability with a very structure format.',
  change ENUM( 'Allowed', 'For Fee', 'Not Allowed') DEFAULT NULL COMMENT 'The fare rule for the changeability.',
  changeEnum ENUM( 'allowed', 'for_fee', 'not_allowed') DEFAULT NULL COMMENT 'The fare rule for the changeability with a very structure format.',
  passengerRef TEXT DEFAULT NULL COMMENT 'The references tot the passengers involved in the group of FareReules.',
  passengerType TEXT DEFAULT NULL COMMENT 'The type of the passengers related to this group of FareRule.',
  penalties JSON DEFAULT NULL COMMENT 'Fare rule penalties.'
)  COMMENT='Fare Rules per segment and per each passenger type.';
*/
--
-- SQLINES DEMO *** or table `Flight` generated from model 'Flight'
--

/*
CREATE TABLE IF NOT EXISTS Flight (
  arrival TEXT DEFAULT NULL,
  baggageAllowance TEXT DEFAULT NULL,
  departure TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL ,
  key TEXT DEFAULT NULL ,
  segments JSON DEFAULT NULL
)  ;

--*/
-- SQLINES DEMO *** or table `FlightDetail` generated from model 'FlightDetail'
--


CREATE TABLE IF NOT EXISTS FlightDetail (
  classOfService TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL ,
  seatsLeft TEXT DEFAULT NULL ,
  segmentType TEXT DEFAULT NULL ,
  stopLocations JSON DEFAULT NULL ,
  stopQuantity TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FlightDetailFare` generated from model 'FlightDetailFare'
--


CREATE TABLE IF NOT EXISTS FlightDetailFare (
  basisCode TEXT DEFAULT NULL ,
  cabin TEXT DEFAULT NULL,
  code TEXT DEFAULT NULL ,
  marketingName TEXT DEFAULT NULL ,
  priceClassName TEXT DEFAULT NULL ,
  standardName TEXT DEFAULT NULL,
  type TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FlightPointData` generated from model 'FlightPointData'
--


CREATE TABLE IF NOT EXISTS FlightPointData (
  airportCode TEXT NOT NULL ,
  airportName TEXT DEFAULT NULL ,
  countryID TEXT DEFAULT NULL ,
  date TEXT DEFAULT NULL ,
  parentLocation TEXT DEFAULT NULL ,
  terminalName TEXT DEFAULT NULL ,
  time TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FlightPointDataRSArrInner` generated from model 'FlightPointDataRSArrInner'
--


CREATE TABLE IF NOT EXISTS FlightPointDataRSArrInner (
  airportCode TEXT NOT NULL ,
  airportName TEXT DEFAULT NULL ,
  countryID TEXT DEFAULT NULL ,
  date TEXT DEFAULT NULL ,
  parentLocation TEXT DEFAULT NULL ,
  terminalName TEXT DEFAULT NULL ,
  time TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FlightPointDataRSDepInner` generated from model 'FlightPointDataRSDepInner'
--


CREATE TABLE IF NOT EXISTS FlightPointDataRSDepInner (
  airportCode TEXT NOT NULL ,
  airportName TEXT DEFAULT NULL ,
  countryID TEXT DEFAULT NULL ,
  date TEXT DEFAULT NULL ,
  parentLocation TEXT DEFAULT NULL ,
  terminalName TEXT DEFAULT NULL ,
  time TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `FlightSegment` generated from model 'FlightSegment'
--


CREATE TABLE IF NOT EXISTS FlightSegment (
  ODRef TEXT DEFAULT NULL ,
  detail TEXT DEFAULT NULL,
  equipment TEXT NOT NULL,
  fareCode TEXT DEFAULT NULL ,
  flightNumber TEXT DEFAULT NULL ,
  marketingCarrier TEXT NOT NULL,
  operatingCarrier TEXT DEFAULT NULL,
  originDestination TEXT NOT NULL,
  segmentID TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Identity4Discount` generated from model 'Identity4Discount'
--


CREATE TABLE IF NOT EXISTS Identity4Discount (
  identityDocumentNumber TEXT DEFAULT NULL,
  identityDocumentType TEXT DEFAULT NULL,
  remark TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `ItinShoppingMedia` generated from model 'ItinShoppingMedia'
-- SQLINES DEMO ***  media type (default view)
--


CREATE TABLE IF NOT EXISTS ItinShoppingMedia (
  itinerary TEXT DEFAULT NULL,
  status TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `ItinShoppingPayload` generated from model 'ItinShoppingPayload'
-- SQLINES DEMO *** ad is the type for ItinShopping endpoint request body
--


CREATE TABLE IF NOT EXISTS ItinShoppingPayload (
  itinerary JSON NOT NULL ,
  metadata TEXT DEFAULT NULL,
  travelers TEXT NOT NULL
);

--
-- SQLINES DEMO *** or table `ItineraryFlight` generated from model 'ItineraryFlight'
--


CREATE TABLE IF NOT EXISTS ItineraryFlight (
  arrival TEXT DEFAULT NULL,
  departure TEXT DEFAULT NULL,
  duration TEXT DEFAULT NULL ,
  key TEXT DEFAULT NULL ,
  segments JSON DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `ItineraryFlightSegment` generated from model 'ItineraryFlightSegment'
--


CREATE TABLE IF NOT EXISTS ItineraryFlightSegment (
  ODRef TEXT DEFAULT NULL ,
  detail TEXT DEFAULT NULL,
  equipment TEXT DEFAULT NULL,
  flightNumber TEXT DEFAULT NULL ,
  marketingCarrier TEXT DEFAULT NULL,
  operatingCarrier TEXT DEFAULT NULL,
  originDestination TEXT DEFAULT NULL,
  segmentID TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `ItineraryFlightSegmentDetail` generated from model 'ItineraryFlightSegmentDetail'
--


CREATE TABLE IF NOT EXISTS ItineraryFlightSegmentDetail (
  duration TEXT DEFAULT NULL ,
  segmentType TEXT DEFAULT NULL ,
  stopLocations JSON DEFAULT NULL ,
  stopQuantity TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `ItineraryOption` generated from model 'ItineraryOption'
--


CREATE TABLE IF NOT EXISTS ItineraryOption (
  details JSON DEFAULT NULL,
  disclosures JSON DEFAULT NULL ,
  offerID TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  priceBreakdown TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `ItineraryOptionFlight` generated from model 'ItineraryOptionFlight'
--


CREATE TABLE IF NOT EXISTS ItineraryOptionFlight (
  baggageAllowance TEXT DEFAULT NULL,
  key TEXT DEFAULT NULL ,
  segments JSON DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `ItineraryOptionFlightSegmentDetail` generated from model 'ItineraryOptionFlightSegmentDetail'
--


CREATE TABLE IF NOT EXISTS ItineraryOptionFlightSegmentDetail (
  ODRef TEXT DEFAULT NULL ,
  cabinDesignator TEXT DEFAULT NULL ,
  code TEXT DEFAULT NULL ,
  disclosureRefs JSON DEFAULT NULL ,
  fare TEXT DEFAULT NULL,
  fareRules JSON DEFAULT NULL ,
  generalClassCode TEXT DEFAULT NULL,
  refs TEXT DEFAULT NULL ,
  seatsLeft TEXT DEFAULT NULL ,
  segmentID TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `ItineraryRQ` generated from model 'ItineraryRQ'
-- SQLINES DEMO ***  object for flight
--


CREATE TABLE IF NOT EXISTS ItineraryRQ (
  arrival CHAR(3) NOT NULL ,
  date TEXT NOT NULL ,
  departure CHAR(3) NOT NULL ,
  flightNumbers JSON DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `ItineraryRS` generated from model 'ItineraryRS'
--

/*
CREATE TABLE IF NOT EXISTS ItineraryRS (
  createdAt BIGINT DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  maxNumberOfStops BIGINT DEFAULT NULL ,
  offerType ENUM('oneWay', 'roundTrip', 'multiCity') DEFAULT NULL COMMENT 'Offer type',
  options JSON DEFAULT NULL COMMENT 'possible fare options for itinerary',
  owner CHAR(2) DEFAULT NULL COMMENT '2-letter code of provider',
  paymentTimeLimit TEXT DEFAULT NULL COMMENT 'Payment time limit, after this time created order will become expired'
) ;

-*/-
-- SQLINES DEMO *** or table `MarketingCarrier` generated from model 'MarketingCarrier'
--


CREATE TABLE IF NOT EXISTS MarketingCarrier (
  airlineID CHAR(2) NOT NULL ,
  flightNumber TEXT NOT NULL,
  name TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `MediaData` generated from model 'MediaData'
-- SQLINES DEMO *** have media types
--


CREATE TABLE IF NOT EXISTS MediaData (
  id TEXT DEFAULT NULL ,
  link TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `metadata` generated from model 'metadata'
--


CREATE TABLE IF NOT EXISTS metadata (
  country CHAR(2) NOT NULL ,
  currency TEXT NOT NULL ,
  locale TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OfferPriceAllowedRequests` generated from model 'OfferPriceAllowedRequests'
--


CREATE TABLE IF NOT EXISTS OfferPriceAllowedRequests (
  OrderCreateWithPayment SMALLINT DEFAULT NULL,
  SeatAvailability SMALLINT DEFAULT NULL,
  ServiceList SMALLINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OfferPriceMedia` generated from model 'OfferPriceMedia'
-- SQLINES DEMO *** edia type (default view)
--


CREATE TABLE IF NOT EXISTS OfferPriceMedia (
  agencyData TEXT DEFAULT NULL,
  allowedPaymentMethods TEXT DEFAULT NULL,
  allowedRequests TEXT DEFAULT NULL,
  benefits TEXT DEFAULT NULL,
  cardSurcharges JSON DEFAULT NULL ,
  createdAt BIGINT DEFAULT NULL ,
  disclosures JSON DEFAULT NULL,
  discounts TEXT DEFAULT NULL,
  extraInfoMandatory JSON DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  instantPayment TEXT DEFAULT NULL ,
  offerExpiration TEXT DEFAULT NULL ,
  offerID TEXT DEFAULT NULL ,
  owner TEXT DEFAULT NULL ,
  passengers JSON DEFAULT NULL ,
  paymentTimeLimit TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  remarks TEXT DEFAULT NULL,
  shoppingResponseID TEXT DEFAULT NULL ,
  specialServices JSON DEFAULT NULL ,
  warnings JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OfferPricePayload` generated from model 'OfferPricePayload'
--


CREATE TABLE IF NOT EXISTS OfferPricePayload (
  offerID TEXT DEFAULT NULL,
  offerIDs JSON DEFAULT NULL,
  reshopOfferID TEXT DEFAULT NULL ,
  services JSON DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OfferPriceRemarks` generated from model 'OfferPriceRemarks'
--


CREATE TABLE IF NOT EXISTS OfferPriceRemarks (
  templates JSON DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OperatingCarrier` generated from model 'OperatingCarrier'
--


CREATE TABLE IF NOT EXISTS OperatingCarrier (
  airlineID CHAR(2) NOT NULL ,
  flightNumber TEXT DEFAULT NULL,
  name TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderCancelMedia` generated from model 'OrderCancelMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderCancelMedia (
  orderID TEXT DEFAULT NULL ,
  warnings JSON DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderCancelPayload` generated from model 'OrderCancelPayload'
--


CREATE TABLE IF NOT EXISTS OrderCancelPayload (
  id TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderChangePayload` generated from model 'OrderChangePayload'
--


CREATE TABLE IF NOT EXISTS OrderChangePayload (
  action TEXT DEFAULT NULL ,
  id TEXT NOT NULL ,
  loyaltyProgramAccount TEXT DEFAULT NULL ,
  passengerUpdate TEXT DEFAULT NULL,
  passengers JSON DEFAULT NULL ,
  payment TEXT DEFAULT NULL,
  reshopOfferID TEXT DEFAULT NULL ,
  services JSON DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderCommentsMedia` generated from model 'OrderCommentsMedia'
-- SQLINES DEMO *** a media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderCommentsMedia (
  ok SMALLINT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderCommentsPayload` generated from model 'OrderCommentsPayload'
-- SQLINES DEMO *** oad is the type for OrderComments endpoint request body
--


CREATE TABLE IF NOT EXISTS OrderCommentsPayload (
  comments TEXT DEFAULT NULL,
  id TEXT NOT NULL 
);

--
-- SQLINES DEMO *** or table `OrderCreateAllowedRequests` generated from model 'OrderCreateAllowedRequests'
--


CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequests (
  pending TEXT DEFAULT NULL,
  started TEXT DEFAULT NULL,
  ticketed TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderCreateAllowedRequestsPending` generated from model 'OrderCreateAllowedRequestsPending'
--


CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsPending (
  OrderCancel SMALLINT DEFAULT NULL,
  OrderReprice SMALLINT DEFAULT NULL,
  OrderSplit SMALLINT DEFAULT NULL,
  SeatAvailability SMALLINT DEFAULT NULL,
  ServiceList SMALLINT DEFAULT NULL,
  TicketIssue SMALLINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderCreateAllowedRequestsStarted` generated from model 'OrderCreateAllowedRequestsStarted'
--


CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsStarted (
  OrderCancel SMALLINT DEFAULT NULL,
  OrderReshop SMALLINT DEFAULT NULL,
  OrderReshopRefund SMALLINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderCreateAllowedRequestsTicketed` generated from model 'OrderCreateAllowedRequestsTicketed'
--


CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsTicketed (
  OrderCancel SMALLINT DEFAULT NULL,
  OrderCancelToVoucher SMALLINT DEFAULT NULL,
  OrderReshop SMALLINT DEFAULT NULL,
  OrderReshopRefund SMALLINT DEFAULT NULL,
  OrderReshopRouteChange SMALLINT DEFAULT NULL,
  OrderSplit SMALLINT DEFAULT NULL,
  OrderVoid SMALLINT DEFAULT NULL,
  SeatAvailability SMALLINT DEFAULT NULL,
  ServiceList SMALLINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderCreateMedia` generated from model 'OrderCreateMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderCreateMedia (
  agency TEXT DEFAULT NULL ,
  agencyData TEXT DEFAULT NULL,
  allowedPaymentMethods TEXT DEFAULT NULL,
  allowedRequests TEXT DEFAULT NULL,
  approvalStatus TEXT DEFAULT NULL ,
  approved SMALLINT DEFAULT NULL ,
  benefits TEXT DEFAULT NULL,
  bookingDate TEXT DEFAULT NULL,
  bookingReference TEXT DEFAULT NULL,
  bookingType TEXT DEFAULT NULL,
  carbonOffset JSON DEFAULT NULL ,
  comments TEXT DEFAULT NULL,
  corporateID TEXT DEFAULT NULL ,
  createdAt TEXT DEFAULT NULL,
  disclosures JSON DEFAULT NULL,
  disruptionMessage TEXT DEFAULT NULL ,
  disruptionStatus TEXT DEFAULT NULL ,
  externalOrderID TEXT DEFAULT NULL ,
  files JSON DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  formOfPayment TEXT DEFAULT NULL,
  history JSON DEFAULT NULL,
  id TEXT DEFAULT NULL ,
  logs JSON DEFAULT NULL,
  metas JSON DEFAULT NULL ,
  orderID TEXT DEFAULT NULL ,
  passengers JSON DEFAULT NULL,
  payment TEXT DEFAULT NULL,
  paymentTimeLimit TEXT DEFAULT NULL ,
  penalties JSON DEFAULT NULL ,
  pnr TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  priceGuaranteeTimeLimit TEXT DEFAULT NULL ,
  readyToTicketIssue SMALLINT DEFAULT NULL ,
  refundType TEXT DEFAULT NULL ,
  refundedAmount TEXT DEFAULT NULL,
  remarks TEXT DEFAULT NULL,
  seats JSON DEFAULT NULL ,
  sendForApprovalAllowed SMALLINT DEFAULT NULL ,
  services JSON DEFAULT NULL ,
  status TEXT DEFAULT NULL ,
  ticketIssue JSON DEFAULT NULL ,
  tickets JSON DEFAULT NULL ,
  updatedAt TEXT DEFAULT NULL,
  viewMode TEXT DEFAULT NULL ,
  warnings JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderCreatePayload` generated from model 'OrderCreatePayload'
--


CREATE TABLE IF NOT EXISTS OrderCreatePayload (
  corporateID TEXT DEFAULT NULL ,
  loyaltyProgramAccount TEXT DEFAULT NULL ,
  metas JSON DEFAULT NULL ,
  passengers JSON NOT NULL,
  payment TEXT DEFAULT NULL,
  remarks TEXT DEFAULT NULL,
  shoppingResponseID TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderCreatePayment` generated from model 'OrderCreatePayment'
--


CREATE TABLE IF NOT EXISTS OrderCreatePayment (
  amount DECIMAL(20, 9) DEFAULT NULL ,
  cardInformation TEXT DEFAULT NULL,
  currency TEXT DEFAULT NULL ,
  status TEXT DEFAULT NULL ,
  type TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderCreateRemarks` generated from model 'OrderCreateRemarks'
--


CREATE TABLE IF NOT EXISTS OrderCreateRemarks (
  data TEXT DEFAULT NULL,
  result TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderFile` generated from model 'OrderFile'
--


CREATE TABLE IF NOT EXISTS OrderFile (
  id TEXT DEFAULT NULL ,
  type TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderHistoryItem` generated from model 'OrderHistoryItem'
--


CREATE TABLE IF NOT EXISTS OrderHistoryItem (
  agency TEXT DEFAULT NULL ,
  agent TEXT DEFAULT NULL ,
  details JSON DEFAULT NULL ,
  eventID TEXT DEFAULT NULL ,
  eventTime TEXT DEFAULT NULL ,
  id TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  tickets JSON DEFAULT NULL ,
  transactionType TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderHistoryMedia` generated from model 'OrderHistoryMedia'
-- SQLINES DEMO ***  media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderHistoryMedia (
  count BIGINT NOT NULL,
  history JSON NOT NULL
);

--
-- SQLINES DEMO *** or table `OrderListCounters` generated from model 'OrderListCounters'
--


CREATE TABLE IF NOT EXISTS OrderListCounters (
  active BIGINT DEFAULT NULL,
  approved BIGINT DEFAULT NULL,
  cancelled BIGINT DEFAULT NULL,
  disrupted BIGINT DEFAULT NULL,
  pending BIGINT DEFAULT NULL,
  refused BIGINT DEFAULT NULL,
  ticketed BIGINT DEFAULT NULL,
  underApproval BIGINT DEFAULT NULL,
  unused BIGINT DEFAULT NULL,
  voided BIGINT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderListItem` generated from model 'OrderListItem'
--


CREATE TABLE IF NOT EXISTS OrderListItem (
  agency TEXT DEFAULT NULL,
  approveStatus TEXT DEFAULT NULL ,
  bookingDate TEXT DEFAULT NULL,
  bookingType TEXT DEFAULT NULL,
  corporateID TEXT DEFAULT NULL ,
  disruptionStatus TEXT DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  id TEXT DEFAULT NULL ,
  orderID TEXT DEFAULT NULL,
  owner TEXT DEFAULT NULL,
  passengers JSON DEFAULT NULL,
  paymentTimeLimit TEXT DEFAULT NULL ,
  pnr TEXT DEFAULT NULL ,
  provider TEXT DEFAULT NULL,
  status TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderListMedia` generated from model 'OrderListMedia'
-- SQLINES DEMO *** dia type (default view)
--


CREATE TABLE IF NOT EXISTS OrderListMedia (
  agencies JSON DEFAULT NULL,
  count BIGINT DEFAULT NULL,
  counters TEXT DEFAULT NULL,
  orders JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderLog` generated from model 'OrderLog'
-- Order warning
--


CREATE TABLE IF NOT EXISTS OrderLog (
  severity TEXT DEFAULT NULL ,
  text TEXT DEFAULT NULL ,
  timestamp TEXT DEFAULT NULL ,
  type TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderMetasMedia` generated from model 'OrderMetasMedia'
-- SQLINES DEMO *** edia type (default view)
--


CREATE TABLE IF NOT EXISTS OrderMetasMedia (
  ok SMALLINT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderMetasPayload` generated from model 'OrderMetasPayload'
-- SQLINES DEMO ***  is the type for OrderMetas endpoint request body
--


CREATE TABLE IF NOT EXISTS OrderMetasPayload (
  id TEXT NOT NULL ,
  metas JSON DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderRemarkData` generated from model 'OrderRemarkData'
-- Order remarks data
--


CREATE TABLE IF NOT EXISTS OrderRemarkData (
  template TEXT DEFAULT NULL ,
  variables JSON DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderRemarkTemplate` generated from model 'OrderRemarkTemplate'
-- SQLINES DEMO *** plate
--


CREATE TABLE IF NOT EXISTS OrderRemarkTemplate (
  data TEXT DEFAULT NULL ,
  name TEXT DEFAULT NULL ,
  neededOnCreation SMALLINT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderRemarks` generated from model 'OrderRemarks'
-- SQLINES DEMO *** ect. Created plain text is used in air files
--


CREATE TABLE IF NOT EXISTS OrderRemarks (
  data TEXT DEFAULT NULL,
  result TEXT DEFAULT NULL ,
  templates JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderRemarksMedia` generated from model 'OrderRemarksMedia'
-- SQLINES DEMO ***  media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderRemarksMedia (
  ok SMALLINT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderRemarksPayload` generated from model 'OrderRemarksPayload'
-- SQLINES DEMO *** ad is the type for OrderRemarks endpoint request body
--


CREATE TABLE IF NOT EXISTS OrderRemarksPayload (
  data TEXT DEFAULT NULL,
  id TEXT NOT NULL ,
  result TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderReshopMedia` generated from model 'OrderReshopMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderReshopMedia (
  offers JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderReshopMediaType` generated from model 'OrderReshopMediaType'
--


CREATE TABLE IF NOT EXISTS OrderReshopMediaType (
  benefits TEXT DEFAULT NULL,
  disclosures JSON DEFAULT NULL ,
  flights JSON DEFAULT NULL ,
  offerID TEXT DEFAULT NULL ,
  offerType ENUM('oneWay', 'roundTrip', 'outbound', 'return') DEFAULT NULL ,
  owner CHAR(2) DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  priceBreakdown TEXT DEFAULT NULL,
  priceChange SMALLINT DEFAULT NULL ,
  warnings JSON DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderReshopPayload` generated from model 'OrderReshopPayload'
--


CREATE TABLE IF NOT EXISTS OrderReshopPayload (
  id TEXT NOT NULL ,
  originDestinations JSON NOT NULL ,
  preferences TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `OrderReshopRefundMedia` generated from model 'OrderReshopRefundMedia'
-- SQLINES DEMO *** Media media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderReshopRefundMedia (
  flights JSON DEFAULT NULL ,
  originalOrder TEXT DEFAULT NULL,
  penalty TEXT DEFAULT NULL,
  refund TEXT DEFAULT NULL,
  seats JSON DEFAULT NULL ,
  services JSON DEFAULT NULL ,
  tickets JSON DEFAULT NULL ,
  voidPermited SMALLINT DEFAULT NULL ,
  warnings JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderReshopRefundPayload` generated from model 'OrderReshopRefundPayload'
--


CREATE TABLE IF NOT EXISTS OrderReshopRefundPayload (
  id TEXT NOT NULL ,
  type TEXT 
)  ;

--
-- SQLINES DEMO *** or table `OrderReshopRepriceMedia` generated from model 'OrderReshopRepriceMedia'
-- SQLINES DEMO *** eMedia media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderReshopRepriceMedia (
  benefits TEXT DEFAULT NULL,
  cardSurcharges JSON DEFAULT NULL ,
  disclosures JSON DEFAULT NULL,
  flights JSON DEFAULT NULL ,
  offerID TEXT DEFAULT NULL ,
  owner TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  seatsToRebook JSON DEFAULT NULL ,
  servicesToRebook JSON DEFAULT NULL ,
  warnings JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `OrderReshopRepricePayload` generated from model 'OrderReshopRepricePayload'
--


CREATE TABLE IF NOT EXISTS OrderReshopRepricePayload (
  id TEXT NOT NULL ,
  offerID TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `OrderRetrievePayload` generated from model 'OrderRetrievePayload'
-- SQLINES DEMO *** oad is the type for OrderRetrieve endpoint request body
--


CREATE TABLE IF NOT EXISTS OrderRetrievePayload (
  id TEXT NOT NULL 
);

--
-- SQLINES DEMO *** or table `OrderReviewMedia` generated from model 'OrderReviewMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS OrderReviewMedia (
  ok SMALLINT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderReviewPayload` generated from model 'OrderReviewPayload'
-- SQLINES DEMO *** d is the type for OrderReview endpoint request body
--


CREATE TABLE IF NOT EXISTS OrderReviewPayload (
  action TEXT NOT NULL ,
  id TEXT NOT NULL ,
  reason TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `OrderUpdatePayload` generated from model 'OrderUpdatePayload'
--


CREATE TABLE IF NOT EXISTS OrderUpdatePayload (
  action ENUM('add_fqtv', 'name_correction', 'add_contact_details') DEFAULT NULL COMMENT 'A flag used to indicate qhet type of update is being made',
  id TEXT NOT NULL COMMENT 'AirGateway order ID',
  passengersUpdate JSON NOT NULL COMMENT 'Passengers details to update for'
) ;

--
-- SQLINES DEMO *** or table `OriginDestinationASRQ` generated from model 'OriginDestinationASRQ'
-- SQLINES DEMO *** n pair in a shopping search scenario
--


CREATE TABLE IF NOT EXISTS OriginDestinationASRQ (
  arrival TEXT NOT NULL,
  departure TEXT NOT NULL,
  type ENUM( 'keep') DEFAULT NULL COMMENT 'To be used in the OrederReshop, on the Rebooking process. If &#39;keep&#39; is set the OD will be retained.'
)  COMMENT='Origin/Destination pair in a shopping search scenario';

--
-- SQLINES DEMO *** or table `OriginDestinationRS_Inner` generated from model 'OriginDestinationRSUnderscoreInner'
--


CREATE TABLE IF NOT EXISTS OriginDestinationRS_Inner (
  arrival TEXT DEFAULT NULL,
  departure TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `Passenger` generated from model 'Passenger'
--


CREATE TABLE IF NOT EXISTS Passenger (
  data TEXT DEFAULT NULL,
  document TEXT DEFAULT NULL,
  fareBasisCodes JSON DEFAULT NULL ,
  identity4Discount JSON DEFAULT NULL,
  infantReference TEXT DEFAULT NULL ,
  passengerType TEXT DEFAULT NULL,
  seats JSON DEFAULT NULL,
  services JSON DEFAULT NULL,
  specialServices JSON DEFAULT NULL,
  travelerReference TEXT NOT NULL 
)  ;

--
-- SQLINES DEMO *** or table `PassengerData` generated from model 'PassengerData'
--


CREATE TABLE IF NOT EXISTS PassengerData (
  address TEXT DEFAULT NULL,
  birthdate TEXT DEFAULT NULL ,
  email TEXT DEFAULT NULL,
  fqtvInfo TEXT DEFAULT NULL,
  gender ENUM('Male', 'Female', '') DEFAULT NULL COMMENT 'Valid values: ',
  name TEXT NOT NULL,
  phone TEXT DEFAULT NULL COMMENT 'Phone number',
  surname TEXT DEFAULT NULL,
  title ENUM('MR', 'MS', 'MRS', 'MSTR') DEFAULT NULL COMMENT 'Valid Values: '
) ;

--
-- SQLINES DEMO *** or table `Payment` generated from model 'Payment'
--


CREATE TABLE IF NOT EXISTS Payment (
  cardCode TEXT DEFAULT NULL ,
  cardHolderEmail TEXT DEFAULT NULL,
  cardHolderName TEXT DEFAULT NULL,
  cardHolderSurname TEXT DEFAULT NULL,
  cardHolderTitle TEXT DEFAULT NULL ,
  cardNumber TEXT DEFAULT NULL ,
  cardType TEXT DEFAULT NULL ,
  cashEmail TEXT DEFAULT NULL,
  cashName TEXT DEFAULT NULL,
  cashSurname TEXT DEFAULT NULL,
  cashTitle TEXT DEFAULT NULL ,
  cityName TEXT DEFAULT NULL ,
  countryCode TEXT DEFAULT NULL ,
  expiration TEXT DEFAULT NULL,
  method TEXT NOT NULL ,
  passengerType TEXT DEFAULT NULL,
  phone TEXT DEFAULT NULL ,
  postalCode TEXT DEFAULT NULL ,
  remark TEXT DEFAULT NULL ,
  seriesCode TEXT DEFAULT NULL ,
  stateProv TEXT DEFAULT NULL ,
  street1 TEXT DEFAULT NULL ,
  street2 TEXT DEFAULT NULL,
  voucher TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `PaymentVoucher` generated from model 'PaymentVoucher'
--


CREATE TABLE IF NOT EXISTS PaymentVoucher (
  amount DECIMAL(20, 9) DEFAULT NULL ,
  currency TEXT DEFAULT NULL ,
  email TEXT DEFAULT NULL ,
  number TEXT DEFAULT NULL ,
  surname TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Penalty` generated from model 'Penalty'
--


CREATE TABLE IF NOT EXISTS Penalty (
  amounts JSON DEFAULT NULL ,
  description TEXT DEFAULT NULL ,
  type TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `PenaltyAmount` generated from model 'PenaltyAmount'
--


CREATE TABLE IF NOT EXISTS PenaltyAmount (
  amount DECIMAL(20, 9) DEFAULT NULL ,
  currency TEXT DEFAULT NULL ,
  providerAmount DECIMAL(20, 9) DEFAULT NULL ,
  providerCurrency TEXT DEFAULT NULL ,
  remark TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Preferences` generated from model 'Preferences'
--


CREATE TABLE IF NOT EXISTS Preferences (
  cabin JSON DEFAULT NULL ,
  discounts TEXT DEFAULT NULL,
  fare TEXT DEFAULT NULL,
  fareList JSON DEFAULT NULL ,
  nonStop SMALLINT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `PreferencesAS` generated from model 'PreferencesAS'
--


CREATE TABLE IF NOT EXISTS PreferencesAS (
  cabin JSON DEFAULT NULL ,
  discounts TEXT DEFAULT NULL,
  fare TEXT DEFAULT NULL,
  fareList JSON DEFAULT NULL ,
  maxDuration JSON DEFAULT NULL ,
  maxDurationRatio JSON DEFAULT NULL ,
  maxStops JSON DEFAULT NULL ,
  nonStop SMALLINT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Price` generated from model 'Price'
--


CREATE TABLE IF NOT EXISTS Price (
  consumer TEXT DEFAULT NULL,
  provider TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `PriceBreakdown` generated from model 'PriceBreakdown'
-- SQLINES DEMO *** ce breakdown of combined round trip offers
--


CREATE TABLE IF NOT EXISTS PriceBreakdown (
  inbound TEXT DEFAULT NULL,
  outbound TEXT DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `PriceDetail` generated from model 'PriceDetail'
--


CREATE TABLE IF NOT EXISTS PriceDetail (
  base DECIMAL(20, 9) DEFAULT NULL ,
  breakdown JSON DEFAULT NULL ,
  currency TEXT DEFAULT NULL,
  surcharge DECIMAL(20, 9) DEFAULT NULL ,
  tax TEXT DEFAULT NULL,
  total DECIMAL(20, 9) DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `PriceDetailBreakdown` generated from model 'PriceDetailBreakdown'
--


CREATE TABLE IF NOT EXISTS PriceDetailBreakdown (
  base DECIMAL(20, 9) DEFAULT NULL ,
  offerItemID TEXT DEFAULT NULL ,
  passengerRefs TEXT DEFAULT NULL ,
  passengerType TEXT DEFAULT NULL ,
  surcharge DECIMAL(20, 9) DEFAULT NULL ,
  tax TEXT DEFAULT NULL
)  ;

--
-- SQLINES DEMO *** or table `PriceDetailTax` generated from model 'PriceDetailTax'
--


CREATE TABLE IF NOT EXISTS PriceDetailTax (
  breakdown JSON DEFAULT NULL ,
  total DECIMAL(20, 9) DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `PriceDetailTaxBreakdown` generated from model 'PriceDetailTaxBreakdown'
--


CREATE TABLE IF NOT EXISTS PriceDetailTaxBreakdown (
  code TEXT DEFAULT NULL ,
  currency TEXT DEFAULT NULL ,
  description TEXT DEFAULT NULL ,
  total DECIMAL(20, 9) DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `ProviderListMedia` generated from model 'ProviderListMedia'
-- SQLINES DEMO ***  media type (default view)
--


CREATE TABLE IF NOT EXISTS ProviderListMedia (
  providers JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `Rows` generated from model 'Rows'
--


CREATE TABLE IF NOT EXISTS Rows (
  first BIGINT DEFAULT NULL ,
  last BIGINT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `SSR` generated from model 'SSR'
--


CREATE TABLE IF NOT EXISTS SSR (
  bookingInstructions TEXT DEFAULT NULL,
  code TEXT DEFAULT NULL ,
  desc TEXT DEFAULT NULL ,
  passengerType TEXT DEFAULT NULL ,
  text_required SMALLINT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Seat` generated from model 'Seat'
--


CREATE TABLE IF NOT EXISTS Seat (
  characteristics JSON DEFAULT NULL ,
  description TEXT DEFAULT NULL ,
  listKey TEXT DEFAULT NULL ,
  location TEXT DEFAULT NULL,
  passengerRefs TEXT DEFAULT NULL ,
  passengerType TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  refs TEXT DEFAULT NULL ,
  remarks JSON DEFAULT NULL ,
  removable SMALLINT DEFAULT NULL ,
  segment TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `SeatAvailabilityMedia` generated from model 'SeatAvailabilityMedia'
-- SQLINES DEMO *** edia media type (default view)
--


CREATE TABLE IF NOT EXISTS SeatAvailabilityMedia (
  disclosures JSON DEFAULT NULL,
  exits JSON DEFAULT NULL ,
  owner TEXT DEFAULT NULL ,
  seatDisplay JSON DEFAULT NULL ,
  seatList JSON DEFAULT NULL ,
  segments JSON DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `SeatAvailabilityPayload` generated from model 'SeatAvailabilityPayload'
-- SQLINES DEMO *** data
--


CREATE TABLE IF NOT EXISTS SeatAvailabilityPayload (
  id TEXT DEFAULT NULL ,
  passengers JSON DEFAULT NULL,
  reshopOfferID TEXT DEFAULT NULL ,
  segmentID TEXT DEFAULT NULL ,
  shoppingResponseID TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `SeatDisplay` generated from model 'SeatDisplay'
--


CREATE TABLE IF NOT EXISTS SeatDisplay (
  columns TEXT DEFAULT NULL ,
  rows TEXT DEFAULT NULL,
  segment TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `SeatLocation` generated from model 'SeatLocation'
--


CREATE TABLE IF NOT EXISTS SeatLocation (
  column TEXT DEFAULT NULL ,
  row BIGINT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Service` generated from model 'Service'
-- Service List
--


CREATE TABLE IF NOT EXISTS Service (
  bookingInstructions TEXT DEFAULT NULL,
  descriptions JSON DEFAULT NULL ,
  maximumQuantity BIGINT DEFAULT NULL ,
  minimumQuantity BIGINT DEFAULT NULL ,
  name TEXT DEFAULT NULL ,
  objectKey TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  properties JSON DEFAULT NULL ,
  ref TEXT DEFAULT NULL ,
  removable SMALLINT DEFAULT NULL ,
  segmentReferences TEXT DEFAULT NULL ,
  serviceID TEXT DEFAULT NULL ,
  travelerReferences TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `ServiceListMedia` generated from model 'ServiceListMedia'
-- SQLINES DEMO *** media type (default view)
--


CREATE TABLE IF NOT EXISTS ServiceListMedia (
  disclosures JSON DEFAULT NULL ,
  passengers JSON DEFAULT NULL ,
  segments JSON DEFAULT NULL,
  services JSON DEFAULT NULL ,
  warnings JSON DEFAULT NULL
);

--
-- SQLINES DEMO *** or table `ServiceListPayload` generated from model 'ServiceListPayload'
-- SQLINES DEMO *** d is the type for ServiceList endpoint request body
--


CREATE TABLE IF NOT EXISTS ServiceListPayload (
  id TEXT DEFAULT NULL ,
  passengers JSON DEFAULT NULL,
  reshopOfferID TEXT DEFAULT NULL ,
  shoppingResponseID TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `ServiceRequest` generated from model 'ServiceRequest'
-- Service Request
--


CREATE TABLE IF NOT EXISTS ServiceRequest (
  action ENUM('Create', 'Cancel') NOT NULL ,
  owner TEXT DEFAULT NULL ,
  quantity DECIMAL(20, 9) DEFAULT NULL ,
  seatLocation TEXT DEFAULT NULL,
  segmentReference TEXT DEFAULT NULL ,
  serviceID TEXT DEFAULT NULL ,
  text TEXT DEFAULT NULL ,
  travelerReference TEXT DEFAULT NULL 
  -- type ENUM('seat', 'service') NOT NULL 
);

--
-- SQLINES DEMO *** or table `StopLocation` generated from model 'StopLocation'
-- SQLINES DEMO *** ails
--


CREATE TABLE IF NOT EXISTS StopLocation (
  airportCode TEXT DEFAULT NULL ,
  airportName TEXT DEFAULT NULL ,
  arrivalDate TEXT DEFAULT NULL ,
  arrivalTime TEXT DEFAULT NULL ,
  departureDate TEXT DEFAULT NULL ,
  departureTime TEXT DEFAULT NULL 
);

--
-- SQLINES DEMO *** or table `TicketCoupon` generated from model 'TicketCoupon'
--


CREATE TABLE IF NOT EXISTS TicketCoupon (
  dateOfService TEXT DEFAULT NULL ,
  fareBasisCode TEXT DEFAULT NULL ,
  media TEXT DEFAULT NULL ,
  number TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  reference TEXT DEFAULT NULL ,
  remark TEXT DEFAULT NULL ,
  segment TEXT DEFAULT NULL,
  serviceReferences TEXT DEFAULT NULL ,
  status TEXT DEFAULT NULL ,
  statusDefinition TEXT DEFAULT NULL ,
  valid TEXT DEFAULT NULL,
  validatingAirline TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `TicketCouponAirlineInfo` generated from model 'TicketCouponAirlineInfo'
--


CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfo (
  arrival TEXT DEFAULT NULL,
  arrivalDateTime TEXT DEFAULT NULL,
  departure TEXT DEFAULT NULL,
  departureDateTime TEXT DEFAULT NULL,
  equipment TEXT DEFAULT NULL,
  marketingCarrier TEXT DEFAULT NULL,
  status TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `TicketCouponAirlineInfoDepartureArrivalDateTime` generated from model 'TicketCouponAirlineInfoDepartureArrivalDateTime'
--


CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfoDepartureArrivalDateTime (
  date TEXT DEFAULT NULL ,
  time TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `TicketCouponValid` generated from model 'TicketCouponValid'
--


CREATE TABLE IF NOT EXISTS TicketCouponValid (
  effective TEXT DEFAULT NULL ,
  expiration TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `TicketInfo` generated from model 'TicketInfo'
--


CREATE TABLE IF NOT EXISTS TicketInfo (
  coupons JSON DEFAULT NULL ,
  dateOfIssue TEXT DEFAULT NULL ,
  numberOfBooklets BIGINT DEFAULT NULL ,
  passengerRef TEXT DEFAULT NULL ,
  price TEXT DEFAULT NULL,
  remark TEXT DEFAULT NULL ,
  ticketNumber TEXT DEFAULT NULL ,
  timeOfIssue TEXT DEFAULT NULL ,
  typeCode TEXT DEFAULT NULL ,
  typeCodeDefinition TEXT DEFAULT NULL 
)  ;

--
-- SQLINES DEMO *** or table `Travelers` generated from model 'Travelers'
--


CREATE TABLE IF NOT EXISTS Travelers (
  ADT DECIMAL(20, 9) NOT NULL ,
  CHD DECIMAL(20, 9) DEFAULT NULL ,
  INF DECIMAL(20, 9) DEFAULT NULL ,
  V14 DECIMAL(20, 9) DEFAULT NULL ,
  VFR DECIMAL(20, 9) DEFAULT NULL ,
  VNF DECIMAL(20, 9) DEFAULT NULL ,
  VNN DECIMAL(20, 9) DEFAULT NULL ,
  YAD DECIMAL(20, 9) DEFAULT NULL 
)  ;

