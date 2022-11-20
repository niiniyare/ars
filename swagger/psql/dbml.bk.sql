-- SQL dump generated using DBML (dbml-lang.org)
-- Database: PostgreSQL
-- Generated at: 2022-11-17T21:19:37.230Z

CREATE TABLE IF NOT EXISTS Address (
  cityName text DEFAULT NULL,
  countryCode text DEFAULT NULL,
  postalCode text DEFAULT NULL,
  street text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS AgencyData (
  countryCode text DEFAULT NULL,
  iataCode text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS AirDocIssuePayloadPayload (
  id text NOT NULL,
  payment text NOT NULL
);

CREATE TABLE IF NOT EXISTS AirShoppingMedia (
  result json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS AirShoppingOffer (
  benefits text DEFAULT NULL,
  createdAt BIGINT DEFAULT NULL,
  disclosures json DEFAULT NULL,
  error text DEFAULT NULL,
  flights json DEFAULT NULL,
  maxNumberOfStops BIGINT DEFAULT NULL,
  offerID text DEFAULT NULL,
  owner CHAR(2) DEFAULT NULL,
  paymentTimeLimit text DEFAULT NULL,
  price text DEFAULT NULL,
  priceBreakdown text DEFAULT NULL,
  provider CHAR(2) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS AirShoppingPayload (
  corporateDiscountCodes json DEFAULT NULL,
  metadata text DEFAULT NULL,
  originDestinations json NOT NULL,
  preferences text DEFAULT NULL,
  travelers text NOT NULL
);

CREATE TABLE IF NOT EXISTS AllowedPaymentMethods (
  agencyCard TINYINT(1) NOT NULL,
  agencyCash TINYINT(1) NOT NULL,
  card TINYINT(1) NOT NULL,
  none TINYINT(1) NOT NULL,
  unusedTicket TINYINT(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS AlternativePNR (
  id text DEFAULT NULL,
  providerID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS AncillariesToRebook (
  flightKey text DEFAULT NULL,
  rebook TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ArrivalASRQ (
  airportCode CHAR(3) NOT NULL,
  date text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS BaggageAllowance (
  carryOn json DEFAULT NULL,
  checked json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS BaggageAllowanceItem (
  options json DEFAULT NULL,
  passengerRefs text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS BaggageAllowanceItemOption (
  properties json DEFAULT NULL,
  quantity BIGINT DEFAULT NULL,
  text text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Benefit (
  amount text DEFAULT NULL,
  application text DEFAULT NULL,
  description text DEFAULT NULL,
  term text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS BookingInstructions (
  pattern text DEFAULT NULL,
  placeHolder text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS BookingReferenceResponse (
  airlineID text DEFAULT NULL,
  alternativeIDs json DEFAULT NULL,
  id text DEFAULT NULL,
  otherID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS CarbonOffset (
  destination text DEFAULT NULL,
  footprint DECIMAL(20,9) DEFAULT NULL,
  origin text DEFAULT NULL,
  segmentKey text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS CardInformation (
  cardCode text DEFAULT NULL,
  cardNumber text DEFAULT NULL,
  expirationDate text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Characteristics (
  code text DEFAULT NULL,
  definition text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ClassOfService (
  cabinDesignator text DEFAULT NULL,
  code text DEFAULT NULL,
  disclosureRefs json DEFAULT NULL,
  fare text DEFAULT NULL,
  fareRules json DEFAULT NULL,
  generalClassCode text DEFAULT NULL,
  refs text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS DepartureASRQ (
  airportCode CHAR(3) NOT NULL,
  date text NOT NULL
);

CREATE TABLE IF NOT EXISTS Disclosure (
  descriptions json DEFAULT NULL,
  listKey text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS DisclosureDescription (
  category text DEFAULT NULL,
  item text DEFAULT NULL,
  media text DEFAULT NULL,
  metadataToken text DEFAULT NULL,
  originDestinationReference text DEFAULT NULL,
  properties json DEFAULT NULL,
  text text DEFAULT NULL,
  units text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS DisclosureProperty (
  UOM text DEFAULT NULL,
  type text DEFAULT NULL,
  value text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS DiscountPreferences (
  largeFamily text DEFAULT NULL,
  residentCode text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Document (
  documentID text NOT NULL,
  expirationDate text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Equipment (
  aircraftCode text DEFAULT NULL,
  name text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS error (
  code text DEFAULT NULL,
  detail text DEFAULT NULL,
  id text DEFAULT NULL,
  meta json DEFAULT NULL,
  status text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ExitSeat (
  position text DEFAULT NULL,
  row BIGINT DEFAULT NULL,
  segmentID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FQTVAccount (
  number text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FQTVInfo (
  account text DEFAULT NULL,
  airlineID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Fare (
  Code text DEFAULT NULL,
  Definition text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FareRule (
  passengerRef text DEFAULT NULL,
  passengerType text DEFAULT NULL,
  penalties json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Flight (
  arrival text DEFAULT NULL,
  baggageAllowance text DEFAULT NULL,
  departure text DEFAULT NULL,
  duration text DEFAULT NULL,
  key text DEFAULT NULL,
  segments json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightDetail (
  classOfService text DEFAULT NULL,
  duration text DEFAULT NULL,
  seatsLeft text DEFAULT NULL,
  segmentType text DEFAULT NULL,
  stopLocations json DEFAULT NULL,
  stopQuantity text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightDetailFare (
  basisCode text DEFAULT NULL,
  cabin text DEFAULT NULL,
  code text DEFAULT NULL,
  marketingName text DEFAULT NULL,
  priceClassName text DEFAULT NULL,
  standardName text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightPointData (
  airportCode text NOT NULL,
  airportName text DEFAULT NULL,
  countryID text DEFAULT NULL,
  date text DEFAULT NULL,
  parentLocation text DEFAULT NULL,
  terminalName text DEFAULT NULL,
  time text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightPointDataRSArrInner (
  airportCode text NOT NULL,
  airportName text DEFAULT NULL,
  countryID text DEFAULT NULL,
  date text DEFAULT NULL,
  parentLocation text DEFAULT NULL,
  terminalName text DEFAULT NULL,
  time text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightPointDataRSDepInner (
  airportCode text NOT NULL,
  airportName text DEFAULT NULL,
  countryID text DEFAULT NULL,
  date text DEFAULT NULL,
  parentLocation text DEFAULT NULL,
  terminalName text DEFAULT NULL,
  time text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS FlightSegment (
  ODRef text DEFAULT NULL,
  detail text DEFAULT NULL,
  equipment text NOT NULL,
  fareCode text DEFAULT NULL,
  flightNumber text DEFAULT NULL,
  marketingCarrier text NOT NULL,
  operatingCarrier text DEFAULT NULL,
  originDestination text NOT NULL,
  segmentID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Identity4Discount (
  identityDocumentNumber text DEFAULT NULL,
  identityDocumentType text DEFAULT NULL,
  remark text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItinShoppingMedia (
  itinerary text DEFAULT NULL,
  status text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItinShoppingPayload (
  itinerary json NOT NULL,
  metadata text DEFAULT NULL,
  travelers text NOT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryFlight (
  arrival text DEFAULT NULL,
  departure text DEFAULT NULL,
  duration text DEFAULT NULL,
  key text DEFAULT NULL,
  segments json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryFlightSegment (
  ODRef text DEFAULT NULL,
  detail text DEFAULT NULL,
  equipment text DEFAULT NULL,
  flightNumber text DEFAULT NULL,
  marketingCarrier text DEFAULT NULL,
  operatingCarrier text DEFAULT NULL,
  originDestination text DEFAULT NULL,
  segmentID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryFlightSegmentDetail (
  duration text DEFAULT NULL,
  segmentType text DEFAULT NULL,
  stopLocations json DEFAULT NULL,
  stopQuantity text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryOption (
  details json DEFAULT NULL,
  disclosures json DEFAULT NULL,
  offerID text DEFAULT NULL,
  price text DEFAULT NULL,
  priceBreakdown text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryOptionFlight (
  baggageAllowance text DEFAULT NULL,
  key text DEFAULT NULL,
  segments json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryOptionFlightSegmentDetail (
  ODRef text DEFAULT NULL,
  cabinDesignator text DEFAULT NULL,
  code text DEFAULT NULL,
  disclosureRefs json DEFAULT NULL,
  fare text DEFAULT NULL,
  fareRules json DEFAULT NULL,
  generalClassCode text DEFAULT NULL,
  refs text DEFAULT NULL,
  seatsLeft text DEFAULT NULL,
  segmentID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryRQ (
  arrival CHAR(3) NOT NULL,
  date text NOT NULL,
  departure CHAR(3) NOT NULL,
  flightNumbers json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ItineraryRS (
  createdAt BIGINT DEFAULT NULL,
  flights json DEFAULT NULL,
  maxNumberOfStops BIGINT DEFAULT NULL,
  options json DEFAULT NULL,
  owner CHAR(2) DEFAULT NULL,
  paymentTimeLimit text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS MarketingCarrier (
  airlineID CHAR(2) NOT NULL,
  flightNumber text NOT NULL,
  name text NOT NULL
);

CREATE TABLE IF NOT EXISTS MediaData (
  id text DEFAULT NULL,
  link text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS metadata (
  country CHAR(2) NOT NULL,
  currency text NOT NULL,
  locale text NOT NULL
);

CREATE TABLE IF NOT EXISTS OfferPriceAllowedRequests (
  OrderCreateWithPayment TINYINT(1) DEFAULT NULL,
  SeatAvailability TINYINT(1) DEFAULT NULL,
  ServiceList TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OfferPriceMedia (
  agencyData text DEFAULT NULL,
  allowedPaymentMethods text DEFAULT NULL,
  allowedRequests text DEFAULT NULL,
  benefits text DEFAULT NULL,
  cardSurcharges json DEFAULT NULL,
  createdAt BIGINT DEFAULT NULL,
  disclosures json DEFAULT NULL,
  discounts text DEFAULT NULL,
  extraInfoMandatory json DEFAULT NULL,
  flights json DEFAULT NULL,
  instantPayment text DEFAULT NULL,
  offerExpiration text DEFAULT NULL,
  offerID text DEFAULT NULL,
  owner text DEFAULT NULL,
  passengers json DEFAULT NULL,
  paymentTimeLimit text DEFAULT NULL,
  price text DEFAULT NULL,
  remarks text DEFAULT NULL,
  shoppingResponseID text DEFAULT NULL,
  specialServices json DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OfferPricePayload (
  offerID text DEFAULT NULL,
  offerIDs json DEFAULT NULL,
  reshopOfferID text DEFAULT NULL,
  services json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OfferPriceRemarks (
  templates json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OperatingCarrier (
  airlineID CHAR(2) NOT NULL,
  flightNumber text DEFAULT NULL,
  name text NOT NULL
);

CREATE TABLE IF NOT EXISTS OrderCancelMedia (
  orderID text DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCancelPayload (
  id text NOT NULL
);

CREATE TABLE IF NOT EXISTS OrderChangePayload (
  action text DEFAULT NULL,
  id text NOT NULL,
  loyaltyProgramAccount text DEFAULT NULL,
  passengerUpdate text DEFAULT NULL,
  passengers json DEFAULT NULL,
  payment text DEFAULT NULL,
  reshopOfferID text DEFAULT NULL,
  services json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Order-- COMMENTsMedia (
  ok TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Order-- COMMENTsPayload (
  -- COMMENTs text DEFAULT NULL,
  id text NOT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequests (
  pending text DEFAULT NULL,
  started text DEFAULT NULL,
  ticketed text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsPending (
  OrderCancel TINYINT(1) DEFAULT NULL,
  OrderReprice TINYINT(1) DEFAULT NULL,
  OrderSplit TINYINT(1) DEFAULT NULL,
  SeatAvailability TINYINT(1) DEFAULT NULL,
  ServiceList TINYINT(1) DEFAULT NULL,
  TicketIssue TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsStarted (
  OrderCancel TINYINT(1) DEFAULT NULL,
  OrderReshop TINYINT(1) DEFAULT NULL,
  OrderReshopRefund TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsTicketed (
  OrderCancel TINYINT(1) DEFAULT NULL,
  OrderCancelToVoucher TINYINT(1) DEFAULT NULL,
  OrderReshop TINYINT(1) DEFAULT NULL,
  OrderReshopRefund TINYINT(1) DEFAULT NULL,
  OrderReshopRouteChange TINYINT(1) DEFAULT NULL,
  OrderSplit TINYINT(1) DEFAULT NULL,
  OrderVoid TINYINT(1) DEFAULT NULL,
  SeatAvailability TINYINT(1) DEFAULT NULL,
  ServiceList TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateMedia (
  agency text DEFAULT NULL,
  agencyData text DEFAULT NULL,
  allowedPaymentMethods text DEFAULT NULL,
  allowedRequests text DEFAULT NULL,
  approvalStatus text DEFAULT NULL,
  approved TINYINT(1) DEFAULT NULL,
  benefits text DEFAULT NULL,
  bookingDate text DEFAULT NULL,
  bookingReference text DEFAULT NULL,
  bookingType text DEFAULT NULL,
  carbonOffset json DEFAULT NULL,
  -- COMMENTs text DEFAULT NULL,
  corporateID text DEFAULT NULL,
  createdAt text DEFAULT NULL,
  disclosures json DEFAULT NULL,
  disruptionMessage text DEFAULT NULL,
  disruptionStatus text DEFAULT NULL,
  externalOrderID text DEFAULT NULL,
  files json DEFAULT NULL,
  flights json DEFAULT NULL,
  formOfPayment text DEFAULT NULL,
  history json DEFAULT NULL,
  id text DEFAULT NULL,
  logs json DEFAULT NULL,
  metas json DEFAULT NULL,
  orderID text DEFAULT NULL,
  passengers json DEFAULT NULL,
  payment text DEFAULT NULL,
  paymentTimeLimit text DEFAULT NULL,
  penalties json DEFAULT NULL,
  pnr text DEFAULT NULL,
  price text DEFAULT NULL,
  priceGuaranteeTimeLimit text DEFAULT NULL,
  readyToTicketIssue TINYINT(1) DEFAULT NULL,
  refundType text DEFAULT NULL,
  refundedAmount text DEFAULT NULL,
  remarks text DEFAULT NULL,
  seats json DEFAULT NULL,
  sendForApprovalAllowed TINYINT(1) DEFAULT NULL,
  services json DEFAULT NULL,
  status text DEFAULT NULL,
  ticketIssue json DEFAULT NULL,
  tickets json DEFAULT NULL,
  updatedAt text DEFAULT NULL,
  viewMode text DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreatePayload (
  corporateID text DEFAULT NULL,
  loyaltyProgramAccount text DEFAULT NULL,
  metas json DEFAULT NULL,
  passengers json NOT NULL,
  payment text DEFAULT NULL,
  remarks text DEFAULT NULL,
  shoppingResponseID text NOT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreatePayment (
  amount DECIMAL(20,9) DEFAULT NULL,
  cardInformation text DEFAULT NULL,
  currency text DEFAULT NULL,
  status text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderCreateRemarks (
  data text DEFAULT NULL,
  result text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderFile (
  id text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderHistoryItem (
  agency text DEFAULT NULL,
  agent text DEFAULT NULL,
  details json DEFAULT NULL,
  eventID text DEFAULT NULL,
  eventTime text DEFAULT NULL,
  id text DEFAULT NULL,
  price text DEFAULT NULL,
  tickets json DEFAULT NULL,
  transactionType text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderHistoryMedia (
  count BIGINT NOT NULL,
  history json NOT NULL
);

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
);

CREATE TABLE IF NOT EXISTS OrderListItem (
  agency text DEFAULT NULL,
  approveStatus text DEFAULT NULL,
  bookingDate text DEFAULT NULL,
  bookingType text DEFAULT NULL,
  corporateID text DEFAULT NULL,
  disruptionStatus text DEFAULT NULL,
  flights json DEFAULT NULL,
  id text DEFAULT NULL,
  orderID text DEFAULT NULL,
  owner text DEFAULT NULL,
  passengers json DEFAULT NULL,
  paymentTimeLimit text DEFAULT NULL,
  pnr text DEFAULT NULL,
  provider text DEFAULT NULL,
  status text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderListMedia (
  agencies json DEFAULT NULL,
  count BIGINT DEFAULT NULL,
  counters text DEFAULT NULL,
  orders json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderLog (
  severity text DEFAULT NULL,
  text text DEFAULT NULL,
  timestamp text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderMetasMedia (
  ok TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderMetasPayload (
  id text NOT NULL,
  metas json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRemarkData (
  template text DEFAULT NULL,
  variables json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRemarkTemplate (
  data text DEFAULT NULL,
  name text DEFAULT NULL,
  neededOnCreation TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRemarks (
  data text DEFAULT NULL,
  result text DEFAULT NULL,
  templates json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRemarksMedia (
  ok TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRemarksPayload (
  data text DEFAULT NULL,
  id text NOT NULL,
  result text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopMedia (
  offers json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopMediaType (
  benefits text DEFAULT NULL,
  disclosures json DEFAULT NULL,
  flights json DEFAULT NULL,
  offerID text DEFAULT NULL,
  owner CHAR(2) DEFAULT NULL,
  price text DEFAULT NULL,
  priceBreakdown text DEFAULT NULL,
  priceChange TINYINT(1) DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopPayload (
  id text NOT NULL,
  originDestinations json NOT NULL,
  preferences text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopRefundMedia (
  flights json DEFAULT NULL,
  originalOrder text DEFAULT NULL,
  penalty text DEFAULT NULL,
  refund text DEFAULT NULL,
  seats json DEFAULT NULL,
  services json DEFAULT NULL,
  tickets json DEFAULT NULL,
  voidPermited TINYINT(1) DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopRefundPayload (
  id text NOT NULL,
  type text
);

CREATE TABLE IF NOT EXISTS OrderReshopRepriceMedia (
  benefits text DEFAULT NULL,
  cardSurcharges json DEFAULT NULL,
  disclosures json DEFAULT NULL,
  flights json DEFAULT NULL,
  offerID text DEFAULT NULL,
  owner text DEFAULT NULL,
  price text DEFAULT NULL,
  seatsToRebook json DEFAULT NULL,
  servicesToRebook json DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReshopRepricePayload (
  id text NOT NULL,
  offerID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderRetrievePayload (
  id text NOT NULL
);

CREATE TABLE IF NOT EXISTS OrderReviewMedia (
  ok TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderReviewPayload (
  action text NOT NULL,
  id text NOT NULL,
  reason text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS OrderUpdatePayload (
  id text NOT NULL,
  passengersUpdate json NOT NULL
);

CREATE TABLE IF NOT EXISTS OriginDestinationASRQ (
  arrival text NOT NULL,
  departure text NOT NULL
);

CREATE TABLE IF NOT EXISTS OriginDestinationRS_Inner (
  arrival text DEFAULT NULL,
  departure text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Passenger (
  data text DEFAULT NULL,
  document text DEFAULT NULL,
  fareBasisCodes json DEFAULT NULL,
  identity4Discount json DEFAULT NULL,
  infantReference text DEFAULT NULL,
  passengerType text DEFAULT NULL,
  seats json DEFAULT NULL,
  services json DEFAULT NULL,
  specialServices json DEFAULT NULL,
  travelerReference text NOT NULL
);

CREATE TABLE IF NOT EXISTS PassengerData (
  address text DEFAULT NULL,
  birthdate text DEFAULT NULL,
  email text DEFAULT NULL,
  fqtvInfo text DEFAULT NULL,
  name text NOT NULL,
  phone text DEFAULT NULL,
  surname text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Payment (
  cardCode text DEFAULT NULL,
  cardHolderEmail text DEFAULT NULL,
  cardHolderName text DEFAULT NULL,
  cardHolderSurname text DEFAULT NULL,
  cardHolderTitle text DEFAULT NULL,
  cardNumber text DEFAULT NULL,
  cardType text DEFAULT NULL,
  cashEmail text DEFAULT NULL,
  cashName text DEFAULT NULL,
  cashSurname text DEFAULT NULL,
  cashTitle text DEFAULT NULL,
  cityName text DEFAULT NULL,
  countryCode text DEFAULT NULL,
  expiration text DEFAULT NULL,
  method text NOT NULL,
  passengerType text DEFAULT NULL,
  phone text DEFAULT NULL,
  postalCode text DEFAULT NULL,
  remark text DEFAULT NULL,
  seriesCode text DEFAULT NULL,
  stateProv text DEFAULT NULL,
  street1 text DEFAULT NULL,
  street2 text DEFAULT NULL,
  voucher text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PaymentVoucher (
  amount DECIMAL(20,9) DEFAULT NULL,
  currency text DEFAULT NULL,
  email text DEFAULT NULL,
  number text DEFAULT NULL,
  surname text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Penalty (
  amounts json DEFAULT NULL,
  description text DEFAULT NULL,
  type text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PenaltyAmount (
  amount DECIMAL(20,9) DEFAULT NULL,
  currency text DEFAULT NULL,
  providerAmount DECIMAL(20,9) DEFAULT NULL,
  providerCurrency text DEFAULT NULL,
  remark text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Preferences (
  cabin json DEFAULT NULL,
  discounts text DEFAULT NULL,
  fare text DEFAULT NULL,
  fareList json DEFAULT NULL,
  nonStop TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PreferencesAS (
  cabin json DEFAULT NULL,
  discounts text DEFAULT NULL,
  fare text DEFAULT NULL,
  fareList json DEFAULT NULL,
  maxDuration json DEFAULT NULL,
  maxDurationRatio json DEFAULT NULL,
  maxStops json DEFAULT NULL,
  nonStop TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Price (
  consumer text DEFAULT NULL,
  provider text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PriceBreakdown (
  inbound text DEFAULT NULL,
  outbound text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PriceDetail (
  base DECIMAL(20,9) DEFAULT NULL,
  breakdown json DEFAULT NULL,
  currency text DEFAULT NULL,
  surcharge DECIMAL(20,9) DEFAULT NULL,
  tax text DEFAULT NULL,
  total DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PriceDetailBreakdown (
  base DECIMAL(20,9) DEFAULT NULL,
  offerItemID text DEFAULT NULL,
  passengerRefs text DEFAULT NULL,
  passengerType text DEFAULT NULL,
  surcharge DECIMAL(20,9) DEFAULT NULL,
  tax text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PriceDetailTax (
  breakdown json DEFAULT NULL,
  total DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS PriceDetailTaxBreakdown (
  code text DEFAULT NULL,
  currency text DEFAULT NULL,
  description text DEFAULT NULL,
  total DECIMAL(20,9) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ProviderListMedia (
  providers json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Rows (
  first BIGINT DEFAULT NULL,
  last BIGINT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SSR (
  bookingInstructions text DEFAULT NULL,
  code text DEFAULT NULL,
  desc text DEFAULT NULL,
  passengerType text DEFAULT NULL,
  text_required TINYINT(1) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Seat (
  characteristics json DEFAULT NULL,
  description text DEFAULT NULL,
  listKey text DEFAULT NULL,
  location text DEFAULT NULL,
  passengerRefs text DEFAULT NULL,
  passengerType text DEFAULT NULL,
  price text DEFAULT NULL,
  refs text DEFAULT NULL,
  remarks json DEFAULT NULL,
  removable TINYINT(1) DEFAULT NULL,
  segment text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SeatAvailabilityMedia (
  disclosures json DEFAULT NULL,
  exits json DEFAULT NULL,
  owner text DEFAULT NULL,
  seatDisplay json DEFAULT NULL,
  seatList json DEFAULT NULL,
  segments json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SeatAvailabilityPayload (
  id text DEFAULT NULL,
  passengers json DEFAULT NULL,
  reshopOfferID text DEFAULT NULL,
  segmentID text DEFAULT NULL,
  shoppingResponseID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SeatDisplay (
  columns text DEFAULT NULL,
  rows text DEFAULT NULL,
  segment text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SeatLocation (
  column text DEFAULT NULL,
  row BIGINT DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Service (
  bookingInstructions text DEFAULT NULL,
  descriptions json DEFAULT NULL,
  maximumQuantity BIGINT DEFAULT NULL,
  minimumQuantity BIGINT DEFAULT NULL,
  name text DEFAULT NULL,
  objectKey text DEFAULT NULL,
  price text DEFAULT NULL,
  properties json DEFAULT NULL,
  ref text DEFAULT NULL,
  removable TINYINT(1) DEFAULT NULL,
  segmentReferences text DEFAULT NULL,
  serviceID text DEFAULT NULL,
  travelerReferences text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ServiceListMedia (
  disclosures json DEFAULT NULL,
  passengers json DEFAULT NULL,
  segments json DEFAULT NULL,
  services json DEFAULT NULL,
  warnings json DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ServiceListPayload (
  id text DEFAULT NULL,
  passengers json DEFAULT NULL,
  reshopOfferID text DEFAULT NULL,
  shoppingResponseID text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS ServiceRequest (
  owner text DEFAULT NULL,
  quantity DECIMAL(20,9) DEFAULT NULL,
  seatLocation text DEFAULT NULL,
  segmentReference text DEFAULT NULL,
  serviceID text DEFAULT NULL,
  text text DEFAULT NULL,
  travelerReference text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS StopLocation (
  airportCode text DEFAULT NULL,
  airportName text DEFAULT NULL,
  arrivalDate text DEFAULT NULL,
  arrivalTime text DEFAULT NULL,
  departureDate text DEFAULT NULL,
  departureTime text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS TicketCoupon (
  dateOfService text DEFAULT NULL,
  fareBasisCode text DEFAULT NULL,
  media text DEFAULT NULL,
  number text DEFAULT NULL,
  price text DEFAULT NULL,
  reference text DEFAULT NULL,
  remark text DEFAULT NULL,
  segment text DEFAULT NULL,
  serviceReferences text DEFAULT NULL,
  status text DEFAULT NULL,
  statusDefinition text DEFAULT NULL,
  valid text DEFAULT NULL,
  validatingAirline text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfo (
  arrival text DEFAULT NULL,
  arrivalDateTime text DEFAULT NULL,
  departure text DEFAULT NULL,
  departureDateTime text DEFAULT NULL,
  equipment text DEFAULT NULL,
  marketingCarrier text DEFAULT NULL,
  status text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfoDepartureArrivalDateTime (
  date text DEFAULT NULL,
  time text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS TicketCouponValid (
  effective text DEFAULT NULL,
  expiration text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS TicketInfo (
  coupons json DEFAULT NULL,
  dateOfIssue text DEFAULT NULL,
  numberOfBooklets BIGINT DEFAULT NULL,
  passengerRef text DEFAULT NULL,
  price text DEFAULT NULL,
  remark text DEFAULT NULL,
  ticketNumber text DEFAULT NULL,
  timeOfIssue text DEFAULT NULL,
  typeCode text DEFAULT NULL,
  typeCodeDefinition text DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Travelers (
  ADT DECIMAL(20,9) NOT NULL,
  CHD DECIMAL(20,9) DEFAULT NULL,
  INF DECIMAL(20,9) DEFAULT NULL,
  V14 DECIMAL(20,9) DEFAULT NULL,
  VFR DECIMAL(20,9) DEFAULT NULL,
  VNF DECIMAL(20,9) DEFAULT NULL,
  VNN DECIMAL(20,9) DEFAULT NULL,
  YAD DECIMAL(20,9) DEFAULT NULL
);

-- COMMENT ON COLUMN Address.cityName IS 'City name.';

-- COMMENT ON COLUMN Address.countryCode IS 'Country code.';

-- COMMENT ON COLUMN Address.postalCode IS 'Postal code.';

-- COMMENT ON COLUMN Address.street IS 'Street.';

-- COMMENT ON COLUMN AgencyData.countryCode IS 'Country code';

-- COMMENT ON COLUMN AgencyData.iataCode IS 'IATA Number';

-- COMMENT ON COLUMN AirDocIssuePayloadPayload.id IS 'AirGateway order ID';

-- COMMENT ON TABLE AirShoppingMedia IS 'AirShoppingMedia media type (default view)';

-- COMMENT ON COLUMN AirShoppingOffer.createdAt IS 'Offer created at unix time';

-- COMMENT ON COLUMN AirShoppingOffer.disclosures IS 'List of disclosures corresponding to offer.';

-- COMMENT ON COLUMN AirShoppingOffer.error IS 'Error from provider';

-- COMMENT ON COLUMN AirShoppingOffer.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN AirShoppingOffer.maxNumberOfStops IS 'Max number of stops';

-- COMMENT ON COLUMN AirShoppingOffer.offerID IS 'Offer identifier';

-- COMMENT ON COLUMN AirShoppingOffer.owner IS '2 letter abbreviation of airline';

-- COMMENT ON COLUMN AirShoppingOffer.paymentTimeLimit IS 'Offer payment time limit, after this time created order will become expired';

-- COMMENT ON COLUMN AirShoppingOffer.provider IS '2 letter abbreviation of airline';

-- COMMENT ON TABLE AirShoppingPayload IS 'AirShoppingPayload is the type for AirShopping endpoint request body';

-- COMMENT ON COLUMN AirShoppingPayload.corporateDiscountCodes IS 'Corporate Discount Codes Map';

-- COMMENT ON COLUMN AirShoppingPayload.originDestinations IS 'Origin/Destination pair in a shopping search scenario';

-- COMMENT ON TABLE AllowedPaymentMethods IS 'Allowed payment methods';

-- COMMENT ON TABLE AlternativePNR IS 'Struct returned to the alternative pnrs not owner by the airlines, but for 3th parties.';

-- COMMENT ON COLUMN AlternativePNR.id IS 'The value of the PNR';

-- COMMENT ON COLUMN AlternativePNR.providerID IS 'The id of the third party';

-- COMMENT ON TABLE ArrivalASRQ IS 'AirShopping request arrival';

-- COMMENT ON COLUMN ArrivalASRQ.airportCode IS 'Departure/Arrival airport IATA three letter code.';

-- COMMENT ON COLUMN ArrivalASRQ.date IS 'Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN BaggageAllowanceItem.options IS 'options to choose';

-- COMMENT ON COLUMN BaggageAllowanceItem.passengerRefs IS 'Passenger references that access this baggage condition';

-- COMMENT ON TABLE BaggageAllowanceItemOption IS 'Baggage Allowance Item Option';

-- COMMENT ON COLUMN BaggageAllowanceItemOption.properties IS 'Properties';

-- COMMENT ON COLUMN BaggageAllowanceItemOption.quantity IS 'baggage quantity';

-- COMMENT ON COLUMN BaggageAllowanceItemOption.text IS 'description ';

-- COMMENT ON COLUMN Benefit.application IS 'The reason of the discount';

-- COMMENT ON COLUMN Benefit.description IS 'A brief description of the discount';

-- COMMENT ON TABLE BookingInstructions IS 'Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the Mandatorytext attribute value.';

-- COMMENT ON COLUMN BookingInstructions.pattern IS 'The pattern that the text introduced by the customer should match to. This value can be empty';

-- COMMENT ON COLUMN BookingInstructions.placeHolder IS 'The text in the input or the textarea which helps the customers knows what should write';

-- COMMENT ON COLUMN BookingInstructions.type IS 'The type for the input used to be filled by the customer, it can be number or text';

-- COMMENT ON TABLE BookingReferenceResponse IS 'BookingReferenceResponse';

-- COMMENT ON COLUMN BookingReferenceResponse.airlineID IS 'Airline ID';

-- COMMENT ON COLUMN BookingReferenceResponse.id IS 'Booking reference';

-- COMMENT ON COLUMN BookingReferenceResponse.otherID IS 'Other ID';

-- COMMENT ON COLUMN CarbonOffset.destination IS 'Flight destination point';

-- COMMENT ON COLUMN CarbonOffset.footprint IS 'Footprint in kgs per passenger';

-- COMMENT ON COLUMN CarbonOffset.origin IS 'Flight origin point';

-- COMMENT ON COLUMN CarbonOffset.segmentKey IS 'Segment key';

-- COMMENT ON COLUMN CardInformation.cardCode IS 'The type of the card';

-- COMMENT ON COLUMN CardInformation.cardNumber IS 'The last four numbers of the card';

-- COMMENT ON COLUMN CardInformation.expirationDate IS 'The month and year of the expiration of the card';

-- COMMENT ON TABLE Characteristics IS 'Characteristics info';

-- COMMENT ON TABLE ClassOfService IS 'Class of the service offered';

-- COMMENT ON COLUMN ClassOfService.cabinDesignator IS 'Cabin Type';

-- COMMENT ON COLUMN ClassOfService.code IS 'Code for class';

-- COMMENT ON COLUMN ClassOfService.disclosureRefs IS 'Disclosures';

-- COMMENT ON COLUMN ClassOfService.fareRules IS 'Fare rules for cancelability, changeability and the penalties.';

-- COMMENT ON COLUMN ClassOfService.refs IS 'Reference of class';

-- COMMENT ON TABLE DepartureASRQ IS 'AirShopping request departure';

-- COMMENT ON COLUMN DepartureASRQ.airportCode IS 'Departure/Arrival airport IATA three letter code.';

-- COMMENT ON COLUMN DepartureASRQ.date IS 'Departure/Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN Disclosure.descriptions IS 'Disclosure details';

-- COMMENT ON COLUMN Disclosure.listKey IS 'Disclosure Reference';

-- COMMENT ON TABLE DisclosureDescription IS 'Disclosure description';

-- COMMENT ON COLUMN DisclosureDescription.category IS 'Category';

-- COMMENT ON COLUMN DisclosureDescription.item IS 'Item';

-- COMMENT ON COLUMN DisclosureDescription.metadataToken IS 'MetadataToken';

-- COMMENT ON COLUMN DisclosureDescription.originDestinationReference IS 'A reference to the origin-destination';

-- COMMENT ON COLUMN DisclosureDescription.properties IS 'Properties';

-- COMMENT ON COLUMN DisclosureDescription.text IS 'text';

-- COMMENT ON COLUMN DisclosureDescription.units IS 'Units';

-- COMMENT ON TABLE DisclosureProperty IS 'Disclosure properties';

-- COMMENT ON COLUMN DisclosureProperty.UOM IS 'Units of measurement';

-- COMMENT ON COLUMN DisclosureProperty.type IS 'Type';

-- COMMENT ON COLUMN DisclosureProperty.value IS 'Value';

-- COMMENT ON COLUMN DiscountPreferences.largeFamily IS 'IB Large Family Discount Code';

-- COMMENT ON COLUMN DiscountPreferences.residentCode IS 'IB Resident Code';

-- COMMENT ON COLUMN Document.expirationDate IS 'The expiration date of the document using format YYYY-MM-DD.';

-- COMMENT ON TABLE error IS 'Error response media type (default view)';

-- COMMENT ON COLUMN error.code IS 'an application-specific error code, expressed as a string value.';

-- COMMENT ON COLUMN error.detail IS 'a human-readable explanation specific to this occurrence of the problem.';

-- COMMENT ON COLUMN error.id IS 'a unique identifier for this particular occurrence of the problem.';

-- COMMENT ON COLUMN error.meta IS 'a meta object containing non-standard meta-information about the error.';

-- COMMENT ON COLUMN error.status IS 'the HTTP status code applicable to this problem, expressed as a string value.';

-- COMMENT ON COLUMN ExitSeat.position IS 'If the exit is on the right or in the left of the plane';

-- COMMENT ON COLUMN ExitSeat.row IS 'The row where the exit in placed';

-- COMMENT ON COLUMN ExitSeat.segmentID IS 'The resference to the segment ';

-- COMMENT ON TABLE FQTVAccount IS 'Frequent traveler account';

-- COMMENT ON COLUMN FQTVAccount.number IS 'Frequent traveler account number';

-- COMMENT ON TABLE FQTVInfo IS 'Frequent traveler information';

-- COMMENT ON COLUMN FQTVInfo.airlineID IS 'Airline ID';

-- COMMENT ON COLUMN Fare.Code IS 'Fare code';

-- COMMENT ON COLUMN Fare.Definition IS 'Fare Definition Code';

-- COMMENT ON TABLE FareRule IS 'Fare Rules per segment and per each passenger type.';

-- COMMENT ON COLUMN FareRule.passengerRef IS 'The references tot the passengers involved in the group of FareReules.';

-- COMMENT ON COLUMN FareRule.passengerType IS 'The type of the passengers related to this group of FareRule.';

-- COMMENT ON COLUMN FareRule.penalties IS 'Fare rule penalties.';

-- COMMENT ON COLUMN Flight.duration IS 'Flight duration';

-- COMMENT ON COLUMN Flight.key IS 'Key identificator';

-- COMMENT ON COLUMN FlightDetail.duration IS 'Flight duration';

-- COMMENT ON COLUMN FlightDetail.seatsLeft IS 'How many seats left';

-- COMMENT ON COLUMN FlightDetail.segmentType IS 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.';

-- COMMENT ON COLUMN FlightDetail.stopLocations IS 'Stop locations';

-- COMMENT ON COLUMN FlightDetail.stopQuantity IS 'Number of extra stops from Origin to Destination';

-- COMMENT ON COLUMN FlightDetailFare.basisCode IS 'Fare Basis Code';

-- COMMENT ON COLUMN FlightDetailFare.code IS 'Fare information for this flight segment';

-- COMMENT ON COLUMN FlightDetailFare.marketingName IS 'Marketing name';

-- COMMENT ON COLUMN FlightDetailFare.priceClassName IS 'Price class name';

-- COMMENT ON COLUMN FlightDetailFare.type IS 'Fare type';

-- COMMENT ON COLUMN FlightPointData.airportCode IS 'Departure/Arrival airport IATA three letter code.';

-- COMMENT ON COLUMN FlightPointData.airportName IS 'Departure/Arrival airport name.';

-- COMMENT ON COLUMN FlightPointData.countryID IS 'Country ID data';

-- COMMENT ON COLUMN FlightPointData.date IS 'Departure/Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN FlightPointData.parentLocation IS 'Parent Location data';

-- COMMENT ON COLUMN FlightPointData.terminalName IS 'Departure/Arrival terminal name.';

-- COMMENT ON COLUMN FlightPointData.time IS 'Preferred departure time in format HH:MM 24h.';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.airportCode IS 'Departure/Arrival airport IATA three letter code.';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.airportName IS 'Departure/Arrival airport name.';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.countryID IS 'Country ID data';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.date IS 'Departure/Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.parentLocation IS 'Parent Location data';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.terminalName IS 'Departure/Arrival terminal.';

-- COMMENT ON COLUMN FlightPointDataRSArrInner.time IS 'Preferred departure time in format HH:MM 24h.';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.airportCode IS 'Departure/Arrival airport IATA three letter code.';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.airportName IS 'Departure/Arrival airport name.';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.countryID IS 'Country ID data';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.date IS 'Departure/Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.parentLocation IS 'Parent Location data';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.terminalName IS 'Departure/Arrival terminal.';

-- COMMENT ON COLUMN FlightPointDataRSDepInner.time IS 'Preferred departure time in format HH:MM 24h.';

-- COMMENT ON COLUMN FlightSegment.ODRef IS 'Origin destination reference';

-- COMMENT ON COLUMN FlightSegment.fareCode IS 'The code of the fare';

-- COMMENT ON COLUMN FlightSegment.flightNumber IS 'Flight number of airline';

-- COMMENT ON COLUMN FlightSegment.segmentID IS 'Segment ID';

-- COMMENT ON TABLE ItinShoppingMedia IS 'ItinShoppingMedia media type (default view)';

-- COMMENT ON COLUMN ItinShoppingMedia.status IS 'Status of request: &#39;itinerary-found&#39;, &#39;itinerary-not-found&#39;';

-- COMMENT ON TABLE ItinShoppingPayload IS 'ItinShoppingPayload is the type for ItinShopping endpoint request body';

-- COMMENT ON COLUMN ItinShoppingPayload.itinerary IS 'List of itinerary routes';

-- COMMENT ON COLUMN ItineraryFlight.duration IS 'Flight duration';

-- COMMENT ON COLUMN ItineraryFlight.key IS 'Key identificator';

-- COMMENT ON COLUMN ItineraryFlightSegment.ODRef IS 'Origin destination reference';

-- COMMENT ON COLUMN ItineraryFlightSegment.flightNumber IS 'Flight number of airline';

-- COMMENT ON COLUMN ItineraryFlightSegment.segmentID IS 'Segment ID';

-- COMMENT ON COLUMN ItineraryFlightSegmentDetail.duration IS 'Flight duration';

-- COMMENT ON COLUMN ItineraryFlightSegmentDetail.segmentType IS 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.';

-- COMMENT ON COLUMN ItineraryFlightSegmentDetail.stopLocations IS 'Stop locations';

-- COMMENT ON COLUMN ItineraryFlightSegmentDetail.stopQuantity IS 'Number of extra stops from Origin to Destination';

-- COMMENT ON COLUMN ItineraryOption.disclosures IS 'List of disclosures corresponding to offer.';

-- COMMENT ON COLUMN ItineraryOption.offerID IS 'Offer identifier';

-- COMMENT ON COLUMN ItineraryOptionFlight.key IS 'Key identificator';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.ODRef IS 'Origin destination reference';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.cabinDesignator IS 'Cabin Type';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.code IS 'Code for class';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.disclosureRefs IS 'Disclosures';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.fareRules IS 'Fare rules for cancelability, changeability and the penalties.';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.refs IS 'Reference of class';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.seatsLeft IS 'How many seats left';

-- COMMENT ON COLUMN ItineraryOptionFlightSegmentDetail.segmentID IS 'Segment ID';

-- COMMENT ON TABLE ItineraryRQ IS 'ItineraryRQ is an object for flight';

-- COMMENT ON COLUMN ItineraryRQ.arrival IS 'Departure airport IATA 3-letter code';

-- COMMENT ON COLUMN ItineraryRQ.date IS 'Departure/Arrival date in format YYYY-MM-DD.';

-- COMMENT ON COLUMN ItineraryRQ.departure IS 'Departure airport IATA 3-letter code';

-- COMMENT ON COLUMN ItineraryRQ.flightNumbers IS 'Flight numbers for itinerary';

-- COMMENT ON COLUMN ItineraryRS.createdAt IS 'Created at unix time';

-- COMMENT ON COLUMN ItineraryRS.flights IS 'route details';

-- COMMENT ON COLUMN ItineraryRS.maxNumberOfStops IS 'Max number of stops';

-- COMMENT ON COLUMN ItineraryRS.options IS 'possible fare options for itinerary';

-- COMMENT ON COLUMN ItineraryRS.owner IS '2-letter code of provider';

-- COMMENT ON COLUMN ItineraryRS.paymentTimeLimit IS 'Payment time limit, after this time created order will become expired';

-- COMMENT ON COLUMN MarketingCarrier.airlineID IS 'Two letter airline code';

-- COMMENT ON COLUMN MarketingCarrier.name IS 'Airline Name';

-- COMMENT ON TABLE MediaData IS 'Some Disclosures have media types';

-- COMMENT ON COLUMN MediaData.id IS 'ID';

-- COMMENT ON COLUMN MediaData.link IS 'Link';

-- COMMENT ON COLUMN metadata.country IS 'Country code preference for the shopping ISO';

-- COMMENT ON COLUMN metadata.currency IS 'Currency for results in ISO format';

-- COMMENT ON COLUMN metadata.locale IS 'Language preferences';

-- COMMENT ON TABLE OfferPriceMedia IS 'OfferPriceMedia media type (default view)';

-- COMMENT ON COLUMN OfferPriceMedia.cardSurcharges IS 'A hash of surcharges indexed by the credit card type.';

-- COMMENT ON COLUMN OfferPriceMedia.createdAt IS 'Unix time of created datetime';

-- COMMENT ON COLUMN OfferPriceMedia.extraInfoMandatory IS 'A Bundle of fields which are not mandatory for all airlines, in that way, the API will check the airline config and return them.';

-- COMMENT ON COLUMN OfferPriceMedia.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OfferPriceMedia.instantPayment IS 'Instant payment field indicates agency has auto-issuing with &#39;agencyCash&#39; or &#39;agencyCard&#39; enabled. If this field is presented, payment method will be automatically selected';

-- COMMENT ON COLUMN OfferPriceMedia.offerExpiration IS 'Offer expiration time';

-- COMMENT ON COLUMN OfferPriceMedia.offerID IS 'The ID for this offer';

-- COMMENT ON COLUMN OfferPriceMedia.owner IS 'The code of the provider that is really offering the flight';

-- COMMENT ON COLUMN OfferPriceMedia.passengers IS 'List of referenced travelers';

-- COMMENT ON COLUMN OfferPriceMedia.paymentTimeLimit IS 'Payment time limit';

-- COMMENT ON COLUMN OfferPriceMedia.shoppingResponseID IS 'The ID of the response. Usually needed on the OrderCreate request (few providers don´t need it).';

-- COMMENT ON COLUMN OfferPriceMedia.specialServices IS 'List of ancillaries allowed on pre-booking stage';

-- COMMENT ON COLUMN OfferPricePayload.reshopOfferID IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used on the rebooking flow and order has services or seats to get the final real price of the re-offer and the services/seats.';

-- COMMENT ON COLUMN OfferPricePayload.services IS 'List of service objects (used on the rebooking flow only with some airlines)';

-- COMMENT ON COLUMN OfferPriceRemarks.templates IS 'Offer Price remark templates';

-- COMMENT ON COLUMN OperatingCarrier.airlineID IS 'Two letter airline code';

-- COMMENT ON COLUMN OperatingCarrier.name IS 'Airline Name';

-- COMMENT ON TABLE OrderCancelMedia IS 'OrderCancelMedia media type (default view)';

-- COMMENT ON COLUMN OrderCancelMedia.orderID IS 'The unique identifier of the order.';

-- COMMENT ON COLUMN OrderCancelMedia.warnings IS 'Order cancel response warnings';

-- COMMENT ON COLUMN OrderCancelPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderChangePayload.action IS 'A flag used in some cases of the OrderChange like accept the disruption of an order or split the order';

-- COMMENT ON COLUMN OrderChangePayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderChangePayload.loyaltyProgramAccount IS 'Loyalty program account number for corporates';

-- COMMENT ON COLUMN OrderChangePayload.passengers IS 'List of passengers';

-- COMMENT ON COLUMN OrderChangePayload.reshopOfferID IS 'Reshop offer ID from OrderReshop response';

-- COMMENT ON COLUMN OrderChangePayload.services IS 'List of service objects';

-- COMMENT ON TABLE Order-- COMMENTsMedia IS 'Order-- COMMENTsMedia media type (default view)';

-- COMMENT ON COLUMN Order-- COMMENTsMedia.ok IS 'API status';

-- COMMENT ON TABLE Order-- COMMENTsPayload IS 'Order-- COMMENTsPayload is the type for Order-- COMMENTs endpoint request body';

-- COMMENT ON COLUMN Order-- COMMENTsPayload.id IS 'AirGateway order ID';

-- COMMENT ON TABLE OrderCreateMedia IS 'OrderCreateMedia media type (default view)';

-- COMMENT ON COLUMN OrderCreateMedia.agency IS 'Agency name';

-- COMMENT ON COLUMN OrderCreateMedia.approvalStatus IS 'Approval status';

-- COMMENT ON COLUMN OrderCreateMedia.approved IS 'Approved status';

-- COMMENT ON COLUMN OrderCreateMedia.carbonOffset IS 'Order flights carbon offset';

-- COMMENT ON COLUMN OrderCreateMedia.corporateID IS 'CorporateID for corporate orders';

-- COMMENT ON COLUMN OrderCreateMedia.disruptionMessage IS 'Disruption notification message';

-- COMMENT ON COLUMN OrderCreateMedia.disruptionStatus IS 'Disruption status (FlightTimeChange/FlightNumberChange/FlightCancellation)';

-- COMMENT ON COLUMN OrderCreateMedia.externalOrderID IS 'External order ID';

-- COMMENT ON COLUMN OrderCreateMedia.files IS 'Files information';

-- COMMENT ON COLUMN OrderCreateMedia.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OrderCreateMedia.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderCreateMedia.metas IS 'Order metadata';

-- COMMENT ON COLUMN OrderCreateMedia.orderID IS 'External order ID (deprecated)';

-- COMMENT ON COLUMN OrderCreateMedia.paymentTimeLimit IS 'Payment time limit';

-- COMMENT ON COLUMN OrderCreateMedia.penalties IS 'Type and the application (with the value for each application) for every penalties.';

-- COMMENT ON COLUMN OrderCreateMedia.pnr IS 'The unique identifier of the order used on the old system and respected by some providers to maintain compatibility.';

-- COMMENT ON COLUMN OrderCreateMedia.priceGuaranteeTimeLimit IS 'Time limit, for an on hold order, during which airline guarantee the price doesn&#39;t vary';

-- COMMENT ON COLUMN OrderCreateMedia.readyToTicketIssue IS 'Ready To Ticket Issue flag';

-- COMMENT ON COLUMN OrderCreateMedia.refundType IS 'Refunds type can be: &#39;refund&#39;, &#39;voucher&#39;';

-- COMMENT ON COLUMN OrderCreateMedia.seats IS 'List of seats';

-- COMMENT ON COLUMN OrderCreateMedia.sendForApprovalAllowed IS 'Send for approval allowed';

-- COMMENT ON COLUMN OrderCreateMedia.services IS 'List of services';

-- COMMENT ON COLUMN OrderCreateMedia.status IS 'Order status (Pending/Ticketed/Cancelled/Completed/Started/Expired)';

-- COMMENT ON COLUMN OrderCreateMedia.ticketIssue IS 'Ticket Issue object';

-- COMMENT ON COLUMN OrderCreateMedia.tickets IS 'Tickets information';

-- COMMENT ON COLUMN OrderCreateMedia.viewMode IS 'View mode for order';

-- COMMENT ON COLUMN OrderCreatePayload.corporateID IS 'CorporateID for corporate orders';

-- COMMENT ON COLUMN OrderCreatePayload.loyaltyProgramAccount IS 'Loyalty program account number for corporates';

-- COMMENT ON COLUMN OrderCreatePayload.metas IS 'Order metadata';

-- COMMENT ON COLUMN OrderCreatePayload.shoppingResponseID IS 'The responseID provided in OfferPrice response';

-- COMMENT ON COLUMN OrderCreatePayment.amount IS 'Payment amount (1000 or 1000.50)';

-- COMMENT ON COLUMN OrderCreatePayment.currency IS 'Payment currency';

-- COMMENT ON COLUMN OrderCreatePayment.status IS 'Payment status';

-- COMMENT ON COLUMN OrderCreatePayment.type IS 'Payment type';

-- COMMENT ON COLUMN OrderCreateRemarks.result IS 'generated remarks text';

-- COMMENT ON COLUMN OrderFile.id IS 'File ID';

-- COMMENT ON COLUMN OrderFile.type IS 'File Type';

-- COMMENT ON COLUMN OrderHistoryItem.agency IS 'Agency';

-- COMMENT ON COLUMN OrderHistoryItem.agent IS 'Agent';

-- COMMENT ON COLUMN OrderHistoryItem.details IS 'Generic details object';

-- COMMENT ON COLUMN OrderHistoryItem.eventID IS 'Event ID';

-- COMMENT ON COLUMN OrderHistoryItem.eventTime IS 'Event time';

-- COMMENT ON COLUMN OrderHistoryItem.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderHistoryItem.tickets IS 'Newly added tickets';

-- COMMENT ON COLUMN OrderHistoryItem.transactionType IS 'Transaction type';

-- COMMENT ON TABLE OrderHistoryMedia IS 'OrderHistoryMedia media type (default view)';

-- COMMENT ON COLUMN OrderListItem.approveStatus IS 'Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok)';

-- COMMENT ON COLUMN OrderListItem.corporateID IS 'CorporateID for corporate orders';

-- COMMENT ON COLUMN OrderListItem.disruptionStatus IS 'Disruption status (ScheduledTimeChange/FlightCancellation)';

-- COMMENT ON COLUMN OrderListItem.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OrderListItem.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderListItem.paymentTimeLimit IS 'Payment time limit';

-- COMMENT ON COLUMN OrderListItem.pnr IS 'PNR';

-- COMMENT ON COLUMN OrderListItem.status IS 'Order status (Pending/Confirmed/Canceled/Voided/Refunded)';

-- COMMENT ON TABLE OrderListMedia IS 'OrderListMedia media type (default view)';

-- COMMENT ON TABLE OrderLog IS 'Order warning';

-- COMMENT ON COLUMN OrderLog.severity IS 'Severity level';

-- COMMENT ON COLUMN OrderLog.text IS 'Warning text';

-- COMMENT ON COLUMN OrderLog.timestamp IS 'Warning timestamp';

-- COMMENT ON COLUMN OrderLog.type IS 'Type of request which warning came from (FP, OC)';

-- COMMENT ON TABLE OrderMetasMedia IS 'OrderMetasMedia media type (default view)';

-- COMMENT ON COLUMN OrderMetasMedia.ok IS 'Order Metas save status';

-- COMMENT ON TABLE OrderMetasPayload IS 'OrderMetasPayload is the type for OrderMetas endpoint request body';

-- COMMENT ON COLUMN OrderMetasPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderMetasPayload.metas IS 'Metas object';

-- COMMENT ON TABLE OrderRemarkData IS 'Order remarks data';

-- COMMENT ON COLUMN OrderRemarkData.template IS 'Selected template';

-- COMMENT ON COLUMN OrderRemarkData.variables IS 'template variables';

-- COMMENT ON TABLE OrderRemarkTemplate IS 'Order remarks template';

-- COMMENT ON COLUMN OrderRemarkTemplate.data IS 'multiline template string';

-- COMMENT ON COLUMN OrderRemarkTemplate.name IS 'Name';

-- COMMENT ON COLUMN OrderRemarkTemplate.neededOnCreation IS 'Needed on creation';

-- COMMENT ON TABLE OrderRemarks IS 'Order remarks object. Created plain text is used in air files';

-- COMMENT ON COLUMN OrderRemarks.result IS 'generated remarks text';

-- COMMENT ON TABLE OrderRemarksMedia IS 'OrderRemarksMedia media type (default view)';

-- COMMENT ON COLUMN OrderRemarksMedia.ok IS 'API status';

-- COMMENT ON TABLE OrderRemarksPayload IS 'OrderRemarksPayload is the type for OrderRemarks endpoint request body';

-- COMMENT ON COLUMN OrderRemarksPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderRemarksPayload.result IS 'generated remarks text';

-- COMMENT ON TABLE OrderReshopMedia IS 'OrderReshopMedia media type (default view)';

-- COMMENT ON COLUMN OrderReshopMediaType.disclosures IS 'List of disclosures corresponding to offer.';

-- COMMENT ON COLUMN OrderReshopMediaType.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OrderReshopMediaType.offerID IS 'Offer identifier';

-- COMMENT ON COLUMN OrderReshopMediaType.owner IS '2 letter abbreviation of airline';

-- COMMENT ON COLUMN OrderReshopMediaType.priceChange IS 'Indicates if the price has change from the original in the hold order.';

-- COMMENT ON COLUMN OrderReshopPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderReshopPayload.originDestinations IS 'Origin/Destination pair in a shopping search scenario';

-- COMMENT ON TABLE OrderReshopRefundMedia IS 'OrderReshopRefundMedia media type (default view)';

-- COMMENT ON COLUMN OrderReshopRefundMedia.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OrderReshopRefundMedia.seats IS 'List of seats';

-- COMMENT ON COLUMN OrderReshopRefundMedia.services IS 'List of services';

-- COMMENT ON COLUMN OrderReshopRefundMedia.tickets IS 'Tickets information';

-- COMMENT ON COLUMN OrderReshopRefundMedia.voidPermited IS 'Some airlines returns the voiding option in the OrderReshop Refund. In this way, this field indicates if the OrderCancel will be executed.';

-- COMMENT ON COLUMN OrderReshopRefundPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderReshopRefundPayload.type IS 'Refund type, can be: \&quot;refund\&quot;, \&quot;voucher\&quot;';

-- COMMENT ON TABLE OrderReshopRepriceMedia IS 'OrderReshopRepriceMedia media type (default view)';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.cardSurcharges IS 'A hash of surcharges indexed by the credit card type.';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.flights IS 'Flight Segment information. Including departure, arrival and airline information.';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.offerID IS 'The ID for this offer';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.owner IS 'The code of the provider that is really offering the flight';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.seatsToRebook IS 'List of services that indicate for which segment the ancillaries must be re-booked';

-- COMMENT ON COLUMN OrderReshopRepriceMedia.servicesToRebook IS 'List of services that indicate for which segment the ancillaries must be re-booked';

-- COMMENT ON COLUMN OrderReshopRepricePayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderReshopRepricePayload.offerID IS 'OrderReshop offer ID for Reprice request';

-- COMMENT ON TABLE OrderRetrievePayload IS 'OrderRetrievePayload is the type for OrderRetrieve endpoint request body';

-- COMMENT ON COLUMN OrderRetrievePayload.id IS 'AirGateway order ID';

-- COMMENT ON TABLE OrderReviewMedia IS 'OrderReviewMedia media type (default view)';

-- COMMENT ON COLUMN OrderReviewMedia.ok IS 'result';

-- COMMENT ON TABLE OrderReviewPayload IS 'OrderReviewPayload is the type for OrderReview endpoint request body';

-- COMMENT ON COLUMN OrderReviewPayload.action IS 'Review action';

-- COMMENT ON COLUMN OrderReviewPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderReviewPayload.reason IS 'Reason';

-- COMMENT ON COLUMN OrderUpdatePayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN OrderUpdatePayload.passengersUpdate IS 'Passengers details to update for';

-- COMMENT ON TABLE OriginDestinationASRQ IS 'Origin/Destination pair in a shopping search scenario';

-- COMMENT ON COLUMN Passenger.fareBasisCodes IS 'FareBasisCodes';

-- COMMENT ON COLUMN Passenger.infantReference IS 'Infant reference (if any)';

-- COMMENT ON COLUMN Passenger.travelerReference IS 'Traveler reference from ServiceList response';

-- COMMENT ON COLUMN PassengerData.birthdate IS 'Birthdate using format YYYY-MM-DD.';

-- COMMENT ON COLUMN PassengerData.phone IS 'Phone number';

-- COMMENT ON COLUMN Payment.cardCode IS 'VI (Visa), CA (MasterCard), JCB (JCB), AX (American Express), DC (Diners Club), CB (Carte blanche), TP (UATP/AIRPLUS), GK (Lufthansa GK Card), AU (Carte Aurore), not all credit cards are supported by all airlines, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.cardHolderTitle IS 'Valid Values: ';

-- COMMENT ON COLUMN Payment.cardNumber IS 'CC Number, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.cardType IS 'CC (Credit)/DB (Debit), required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.cashTitle IS 'Valid Values: ';

-- COMMENT ON COLUMN Payment.cityName IS 'Card Holder Billing city, required if method &#x3D;&#x3D; \&quot;card\&quot; ';

-- COMMENT ON COLUMN Payment.countryCode IS 'Card Holder Billing country code , required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.method IS 'Possible values: \&quot;card\&quot;, \&quot;agencyCard\&quot;, \&quot;agencyCash\&quot;. Set this to \&quot;card\&quot; if you pay with card. Contact us to setup cash on file and card on file';

-- COMMENT ON COLUMN Payment.phone IS 'Phone number';

-- COMMENT ON COLUMN Payment.postalCode IS 'Card Holder Billing postal code, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.remark IS 'A code used for special types of paying. In case your agency is allowed to pay with this special remark we will send you more information.';

-- COMMENT ON COLUMN Payment.seriesCode IS 'CVV/CVC code, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.stateProv IS 'The code of the state or province where the bank office issued the card, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN Payment.street1 IS 'Card Holder Billing address, required if method &#x3D;&#x3D; \&quot;card\&quot;';

-- COMMENT ON COLUMN PaymentVoucher.amount IS 'The amount paid with voucher (12 or 12.09)';

-- COMMENT ON COLUMN PaymentVoucher.currency IS 'Voucher currency';

-- COMMENT ON COLUMN PaymentVoucher.email IS 'Voucher owner&#39;s email';

-- COMMENT ON COLUMN PaymentVoucher.number IS 'Voucher number';

-- COMMENT ON COLUMN PaymentVoucher.surname IS 'Voucher owner&#39;s surname';

-- COMMENT ON COLUMN Penalty.amounts IS 'Value and the application of this value for the penalty.';

-- COMMENT ON COLUMN Penalty.description IS 'A more extensive and explicit explanation of the penalty';

-- COMMENT ON COLUMN Penalty.type IS 'The code of the penalty';

-- COMMENT ON COLUMN PenaltyAmount.amount IS 'The homogenised value of the penalty for the application case (35 or 30.65)';

-- COMMENT ON COLUMN PenaltyAmount.currency IS 'The consumer currency of this value';

-- COMMENT ON COLUMN PenaltyAmount.providerAmount IS 'The provider value of the penalty for the application case (30 or 30.70)';

-- COMMENT ON COLUMN PenaltyAmount.providerCurrency IS 'The provider currency of this value';

-- COMMENT ON COLUMN PenaltyAmount.remark IS 'Penalty remark.';

-- COMMENT ON COLUMN Preferences.cabin IS 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All';

-- COMMENT ON COLUMN Preferences.fareList IS 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare';

-- COMMENT ON COLUMN Preferences.nonStop IS 'NonStop preferences for search. If this is present, it will search flights without stops.';

-- COMMENT ON COLUMN PreferencesAS.cabin IS 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All';

-- COMMENT ON COLUMN PreferencesAS.fareList IS 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare';

-- COMMENT ON COLUMN PreferencesAS.maxDuration IS 'Maximum duration of the flight per O&amp;D in ISO-8601 format';

-- COMMENT ON COLUMN PreferencesAS.maxDurationRatio IS 'Maximum duration ratio of the flight per O&amp;D in float number factor';

-- COMMENT ON COLUMN PreferencesAS.maxStops IS 'Maximum stops number per O&amp;D';

-- COMMENT ON COLUMN PreferencesAS.nonStop IS 'NonStop preferences for search. If this is present, it will search flights without stops.';

-- COMMENT ON TABLE PriceBreakdown IS 'Airline Offer price breakdown of combined round trip offers';

-- COMMENT ON COLUMN PriceDetail.base IS '670 or 670.41';

-- COMMENT ON COLUMN PriceDetail.breakdown IS 'The price for each flight offer. There is an offer for each passenger (ADT, CHD, INF).';

-- COMMENT ON COLUMN PriceDetail.surcharge IS 'The surcharges for the whole flight offer (6 or 6.05).';

-- COMMENT ON COLUMN PriceDetail.total IS '720 or 720.62';

-- COMMENT ON COLUMN PriceDetailBreakdown.base IS 'The base price, without any taxes (300 or 300.32)';

-- COMMENT ON COLUMN PriceDetailBreakdown.offerItemID IS 'The ID for each offer';

-- COMMENT ON COLUMN PriceDetailBreakdown.passengerRefs IS 'Passenger references';

-- COMMENT ON COLUMN PriceDetailBreakdown.passengerType IS 'The passenger type';

-- COMMENT ON COLUMN PriceDetailBreakdown.surcharge IS 'The total sum of all surcharges (6 or 6.05)';

-- COMMENT ON COLUMN PriceDetailTax.breakdown IS 'The value price, currency, code and description for each tax for each AirlineOffer';

-- COMMENT ON COLUMN PriceDetailTax.total IS '120 or 120.62';

-- COMMENT ON COLUMN PriceDetailTaxBreakdown.code IS 'The code used for each tax';

-- COMMENT ON COLUMN PriceDetailTaxBreakdown.currency IS 'The currency code used for each tax';

-- COMMENT ON COLUMN PriceDetailTaxBreakdown.description IS 'The description of each tax';

-- COMMENT ON COLUMN PriceDetailTaxBreakdown.total IS 'The price (12 or 12.09)';

-- COMMENT ON TABLE ProviderListMedia IS 'ProviderListMedia media type (default view)';

-- COMMENT ON COLUMN Rows.first IS 'First row';

-- COMMENT ON COLUMN Rows.last IS 'Last row';

-- COMMENT ON COLUMN SSR.code IS 'Special service request code';

-- COMMENT ON COLUMN SSR.desc IS 'Special service request description';

-- COMMENT ON COLUMN SSR.passengerType IS 'Passenger type SSR applies to';

-- COMMENT ON COLUMN SSR.text_required IS 'Special service request text required flag';

-- COMMENT ON COLUMN Seat.characteristics IS 'A list of characteristics about the seat';

-- COMMENT ON COLUMN Seat.description IS 'Seat description';

-- COMMENT ON COLUMN Seat.listKey IS 'This is an attribute for each seat.';

-- COMMENT ON COLUMN Seat.passengerRefs IS 'Reference to passenger which can select the seat. Sometimes the same seat has different price depending on the type of passenger, some other times two passengers of the same type are not allowed to get the same seats, for example when two adults travel with an infant, one of those adults will have a few specific seats.';

-- COMMENT ON COLUMN Seat.passengerType IS 'Type of passenger which can select the seat (sometimes the same seat has different price depending on the type of passenger)';

-- COMMENT ON COLUMN Seat.refs IS 'This is an attribute for each seat.';

-- COMMENT ON COLUMN Seat.remarks IS 'Some seats have restriction about the age, blindness, deafness, state of pregnancy, etc...';

-- COMMENT ON COLUMN Seat.removable IS 'Points when a seats is removable or not. Used only in OrderViewRS';

-- COMMENT ON COLUMN Seat.segment IS 'Flight Segment Reference Key';

-- COMMENT ON TABLE SeatAvailabilityMedia IS 'SeatAvailabilityMedia media type (default view)';

-- COMMENT ON COLUMN SeatAvailabilityMedia.exits IS 'Exit rows position';

-- COMMENT ON COLUMN SeatAvailabilityMedia.owner IS 'The owner of the segment flight that the SeatAvailability is requesting';

-- COMMENT ON COLUMN SeatAvailabilityMedia.seatDisplay IS 'Info about seat display (rows and columns)';

-- COMMENT ON COLUMN SeatAvailabilityMedia.seatList IS 'Info about seats location, description, characteristics, price...';

-- COMMENT ON COLUMN SeatAvailabilityMedia.segments IS 'Info about flight segments';

-- COMMENT ON TABLE SeatAvailabilityPayload IS 'SeatAvailability data';

-- COMMENT ON COLUMN SeatAvailabilityPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN SeatAvailabilityPayload.reshopOfferID IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request SeatAvailable is called on the rebooking stage because order has seats.';

-- COMMENT ON COLUMN SeatAvailabilityPayload.segmentID IS 'Segment ID. Use when need to fetch a certain segment of flight';

-- COMMENT ON COLUMN SeatAvailabilityPayload.shoppingResponseID IS 'The responseID provided in OfferPrice response. Use when request SeatAvailability on Pre-Booking stage';

-- COMMENT ON COLUMN SeatDisplay.columns IS 'All available seat columns';

-- COMMENT ON COLUMN SeatDisplay.segment IS 'Flight Segment Reference Key';

-- COMMENT ON COLUMN SeatLocation.column IS 'Column of the seat';

-- COMMENT ON COLUMN SeatLocation.row IS 'Row of the seat';

-- COMMENT ON TABLE Service IS 'Service List';

-- COMMENT ON COLUMN Service.descriptions IS 'List of service descriptions';

-- COMMENT ON COLUMN Service.maximumQuantity IS 'Maximum quantity of services';

-- COMMENT ON COLUMN Service.minimumQuantity IS 'Minimum quantity of services';

-- COMMENT ON COLUMN Service.name IS 'Service name';

-- COMMENT ON COLUMN Service.objectKey IS 'Service object key';

-- COMMENT ON COLUMN Service.properties IS 'Properties';

-- COMMENT ON COLUMN Service.ref IS 'Service reference';

-- COMMENT ON COLUMN Service.removable IS 'Points when a service is removable or not. Used only in OrderViewRS';

-- COMMENT ON COLUMN Service.segmentReferences IS 'Segment references';

-- COMMENT ON COLUMN Service.serviceID IS 'Service ID';

-- COMMENT ON COLUMN Service.travelerReferences IS 'Traveler references';

-- COMMENT ON TABLE ServiceListMedia IS 'ServiceListMedia media type (default view)';

-- COMMENT ON COLUMN ServiceListMedia.disclosures IS 'List of disclosures';

-- COMMENT ON COLUMN ServiceListMedia.passengers IS 'List of referenced travelers';

-- COMMENT ON COLUMN ServiceListMedia.services IS 'List of services';

-- COMMENT ON TABLE ServiceListPayload IS 'ServiceListPayload is the type for ServiceList endpoint request body';

-- COMMENT ON COLUMN ServiceListPayload.id IS 'AirGateway order ID';

-- COMMENT ON COLUMN ServiceListPayload.reshopOfferID IS 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request ServiceList is called on the rebooking stage and order has services.';

-- COMMENT ON COLUMN ServiceListPayload.shoppingResponseID IS 'The responseID provided in OfferPrice response. Use when request ServiceList on Pre-Booking stage';

-- COMMENT ON TABLE ServiceRequest IS 'Service Request';

-- COMMENT ON COLUMN ServiceRequest.owner IS 'Service owner';

-- COMMENT ON COLUMN ServiceRequest.quantity IS 'Baggage type (deprecated)';

-- COMMENT ON COLUMN ServiceRequest.segmentReference IS 'Segment reference';

-- COMMENT ON COLUMN ServiceRequest.serviceID IS 'Type of service (ID)';

-- COMMENT ON COLUMN ServiceRequest.text IS 'Used in some services to indicate the quantity of some extra kilos in the baggage, the type of pet, etc...';

-- COMMENT ON COLUMN ServiceRequest.travelerReference IS 'Traveler reference';

-- COMMENT ON TABLE StopLocation IS 'Stop location details';

-- COMMENT ON COLUMN StopLocation.airportCode IS 'Airport code';

-- COMMENT ON COLUMN StopLocation.airportName IS 'Airport name';

-- COMMENT ON COLUMN StopLocation.arrivalDate IS 'Arrival date';

-- COMMENT ON COLUMN StopLocation.arrivalTime IS 'Arrival time';

-- COMMENT ON COLUMN StopLocation.departureDate IS 'Departure date';

-- COMMENT ON COLUMN StopLocation.departureTime IS 'Departure time';

-- COMMENT ON COLUMN TicketCoupon.dateOfService IS 'Coupon date of service';

-- COMMENT ON COLUMN TicketCoupon.fareBasisCode IS 'Coupon fareBasisCode';

-- COMMENT ON COLUMN TicketCoupon.media IS 'Coupon media';

-- COMMENT ON COLUMN TicketCoupon.number IS 'Coupon number';

-- COMMENT ON COLUMN TicketCoupon.reference IS 'Coupon ref';

-- COMMENT ON COLUMN TicketCoupon.remark IS 'Coupon remark';

-- COMMENT ON COLUMN TicketCoupon.serviceReferences IS 'Coupon service references';

-- COMMENT ON COLUMN TicketCoupon.status IS 'Coupon status code';

-- COMMENT ON COLUMN TicketCoupon.statusDefinition IS 'Coupon status description';

-- COMMENT ON COLUMN TicketCoupon.validatingAirline IS 'Coupon validating airline';

-- COMMENT ON COLUMN TicketCouponAirlineInfo.status IS 'Flight Segment status';

-- COMMENT ON COLUMN TicketCouponAirlineInfoDepartureArrivalDateTime.date IS 'Flight Segment status';

-- COMMENT ON COLUMN TicketCouponAirlineInfoDepartureArrivalDateTime.time IS 'Flight Segment status';

-- COMMENT ON COLUMN TicketCouponValid.effective IS 'Coupon effective date';

-- COMMENT ON COLUMN TicketCouponValid.expiration IS 'Coupon expiration date';

-- COMMENT ON COLUMN TicketInfo.coupons IS 'Ticket coupons&#39; details';

-- COMMENT ON COLUMN TicketInfo.dateOfIssue IS 'Ticket issue date';

-- COMMENT ON COLUMN TicketInfo.numberOfBooklets IS 'Number of tickets for passenger';

-- COMMENT ON COLUMN TicketInfo.passengerRef IS 'Passenger reference';

-- COMMENT ON COLUMN TicketInfo.remark IS 'Remark text';

-- COMMENT ON COLUMN TicketInfo.ticketNumber IS 'Ticket number of passenger';

-- COMMENT ON COLUMN TicketInfo.timeOfIssue IS 'Ticket issue time';

-- COMMENT ON COLUMN TicketInfo.typeCode IS 'Type of ticket';

-- COMMENT ON COLUMN TicketInfo.typeCodeDefinition IS 'The meaning of the type of ticket';

-- COMMENT ON COLUMN Travelers.ADT IS 'Number of adult passengers - older than 12 yo';

-- COMMENT ON COLUMN Travelers.CHD IS 'Number of children - older than 2 yo';

-- COMMENT ON COLUMN Travelers.INF IS 'Number of infants - younger than 2 yo';

-- COMMENT ON COLUMN Travelers.V14 IS 'Number of young adults for Tour Operators - 12-16 yo';

-- COMMENT ON COLUMN Travelers.VFR IS 'Number of adult passengers for Tour Operators - older than 12 yo';

-- COMMENT ON COLUMN Travelers.VNF IS 'Number of infants for Tour Operators - younger than 2 yo';

-- COMMENT ON COLUMN Travelers.VNN IS 'Number of children for Tour Operators - older than 2 yo';

-- COMMENT ON COLUMN Travelers.YAD IS 'Number of young adults - 12-16 yo';
