CREATE TABLE IF NOT EXISTS Address (
  cityName text,
  countryCode text,
  postalCode text,
  street text 
);
CREATE TABLE IF NOT EXISTS AgencyData (
  countryCode text,
  iataCode text 
);
CREATE TABLE IF NOT EXISTS AirDocIssuePayloadPayload (
  id text NOT NULL,
  payment text NOT NULL
);
CREATE TABLE IF NOT EXISTS AirShoppingMedia (
  result text
);
CREATE TABLE IF NOT EXISTS AirShoppingOffer (
  benefits text,
  createdAt bigint,
  disclosures text,
  error text,
  flights text,
  maxNumberOfStops bigint,
  offerID text,
  -- offerType ENUM('oneWay', 'roundTrip', 'multiCity') COMMENT 'Offer type',
  -- owner CHAR(2) COMMENT '2 letter abbreviation of airline',
  -- paymentTimeLimit text COMMENT 'Offer payment time limit, after this time created order will become expired',
  price text,
  priceBreakdown text
  -- provider CHAR(2) COMMENT '2 letter abbreviation of airline'
);
CREATE TABLE IF NOT EXISTS AirShoppingPayload (
  corporateDiscountCodes text,
  metadata text,
  originDestinations text NOT NULL,
  preferences text,
  travelers text NOT NULL
);
CREATE TABLE IF NOT EXISTS AllowedPaymentMethods (
  agencyCard SMALLINT NOT NULL,
  agencyCash SMALLINT NOT NULL,
  card SMALLINT NOT NULL,
  none SMALLINT NOT NULL,
  unusedTicket SMALLINT NOT NULL
);
CREATE TABLE IF NOT EXISTS AlternativePNR (
  id text,
  providerID text 
);
CREATE TABLE IF NOT EXISTS AncillariesToRebook (
  flightKey text,
  rebook SMALLINT
);
CREATE TABLE IF NOT EXISTS ArrivalASRQ (
  airportCode CHAR(3) NOT NULL,
  date text 
);
CREATE TABLE IF NOT EXISTS BaggageAllowance (
  carryOn text,
  checked text
);
CREATE TABLE IF NOT EXISTS BaggageAllowanceItem (
  -- chooseType ENUM('one', 'many'),
  options text,
  passengerRefs text 
);
CREATE TABLE IF NOT EXISTS BaggageAllowanceItemOption (
  properties text,
  quantity bigint,
  text text 
);
CREATE TABLE IF NOT EXISTS Benefit (
  amount text,
  application text,
  description text,
  term text
);
CREATE TABLE IF NOT EXISTS BookingInstructions (
  -- mandatoryText ENUM('not_allowed', 'mandatory', 'optional') COMMENT 'This attribute indicates the optional, mandatory or not allowed need for the text',
 -- pattern text COMMENT 'The pattern that the text introduced by the customer should match to. This value can be empty',
 -- placeHolder text COMMENT 'The text in the input or the textarea which helps the customers knows what should write',
 -- type text COMMENT 'The type for the input used to be filled by the customer, it can be number or text'
)  COMMENT='Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.';
CREATE TABLE IF NOT EXISTS BookingReferenceResponse (
  airlineID text,
  alternativeIDs text,
  id text,
  otherID text 
);
CREATE TABLE IF NOT EXISTS CarbonOffset (
  destination text,
  footprint numeric(20, 9),
  origin text,
  segmentKey text 
);
CREATE TABLE IF NOT EXISTS CardInformation (
  cardCode text,
  cardNumber text,
  expirationDate text 
);
CREATE TABLE IF NOT EXISTS Characteristics (
  code text,
  definition text
);
CREATE TABLE IF NOT EXISTS ClassOfService (
  cabinDesignator text,
  code text,
  disclosureRefs text,
  fare text,
  fareRules text,
  generalClassCode text,
  refs text 
);
CREATE TABLE IF NOT EXISTS DepartureASRQ (
  airportCode CHAR(3) NOT NULL,
  date text NOT NULL 
);
CREATE TABLE IF NOT EXISTS Disclosure (
  descriptions text,
  listKey text 
);
CREATE TABLE IF NOT EXISTS DisclosureDescription (
  category text,
  item text,
  media text,
  metadataToken text,
  originDestinationReference text,
  properties text,
  text text,
  units text 
);
CREATE TABLE IF NOT EXISTS DisclosureProperty (
  UOM text,
  type text,
  value text 
);
CREATE TABLE IF NOT EXISTS DiscountPreferences (
  largeFamily text,
  residentCode text 
);
CREATE TABLE IF NOT EXISTS Document (
  documentID text NOT NULL,
-- documentType ENUM('PP', 'NI', '') NOT NULL COMMENT 'Valid values: ',
 -- expirationDate text COMMENT 'The expiration date of the document using format YYYY-MM-DD.');
CREATE TABLE IF NOT EXISTS Equipment (
  aircraftCode text,
  name text
);
CREATE TABLE IF NOT EXISTS error (
  code text,
  detail text,
  id text,
  meta text,
  status text 
);
CREATE TABLE IF NOT EXISTS ExitSeat (
  position text,
  row bigint,
  segmentID text 
);
CREATE TABLE IF NOT EXISTS FQTVAccount (
  number text 
);
CREATE TABLE IF NOT EXISTS FQTVInfo (
  account text,
  airlineID text 
);
CREATE TABLE IF NOT EXISTS Fare (
  Code text,
  Definition text 
);
CREATE TYPE FareRuleOptions AS  ENUM( 'Allowed', 'For Fee', 'Not Allowed');

CREATE TABLE IF NOT EXISTS FareRule (
  cancel FareRuleOptions COMMENT 'The fare rule for the cancelability.',
  cancelEnum FareRuleOptions COMMENT 'The fare rule for the cancelability with a very structure format.',
  change FareRuleOptions COMMENT 'The fare rule for the changeability.',
  changeEnum FareRuleOptions COMMENT 'The fare rule for the changeability with a very structure format.',
  passengerRef text COMMENT 'The references tot the passengers involved in the group of FareReules.',
  passengerType text COMMENT 'The type of the passengers related to this group of FareRule.',
  penalties text COMMENT 'Fare rule penalties.'
)  ;
-- COMMENT='Fare Rules per segment and per each passenger type.'

CREATE TABLE IF NOT EXISTS Flight (
  arrival text,
  baggageAllowance text,
  departure text,
  duration text,
  key text,
  segments text
);
*/
CREATE TABLE IF NOT EXISTS FlightDetail (
  classOfService text,
  duration text,
  seatsLeft text,
  segmentType text,
  stopLocations text,
  stopQuantity text 
);
CREATE TABLE IF NOT EXISTS FlightDetailFare (
  basisCode text,
  cabin text,
  code text,
  marketingName text,
  priceClassName text,
  standardName text,
  type text 
);
CREATE TABLE IF NOT EXISTS FlightPointData (
  airportCode text NOT NULL,
  airportName text,
  countryID text,
  date text,
  parentLocation text,
  terminalName text,
  time timestampz 
);
CREATE TABLE IF NOT EXISTS FlightPointDataRSArrInner (
  airportCode text NOT NULL,
  airportName text,
  countryID text,
  date text,
  parentLocation text,
  terminalName text,
  time timestampz 
);
CREATE TABLE IF NOT EXISTS FlightPointDataRSDepInner (
  airportCode text NOT NULL,
  airportName text,
  countryID text,
  date text,
  parentLocation text,
  terminalName text,
  time timestampz 
);
CREATE TABLE IF NOT EXISTS FlightSegment (
  ODRef text,
  detail text,
  equipment text NOT NULL,
  fareCode text,
  flightNumber text,
  marketingCarrier text NOT NULL,
  operatingCarrier text,
  originDestination text NOT NULL,
  segmentID text 
);
CREATE TABLE IF NOT EXISTS Identity4Discount (
  identityDocumentNumber text,
  identityDocumentType text,
  remark text
);
CREATE TABLE IF NOT EXISTS ItinShoppingMedia (
  itinerary text,
  status text 
);
CREATE TABLE IF NOT EXISTS ItinShoppingPayload (
  itinerary text NOT NULL,
  metadata text,
  travelers text NOT NULL
);
CREATE TABLE IF NOT EXISTS ItineraryFlight (
  arrival text,
  departure text,
  duration text,
  key text,
  segments text
);
CREATE TABLE IF NOT EXISTS ItineraryFlightSegment (
  ODRef text,
  detail text,
  equipment text,
  flightNumber text,
  marketingCarrier text,
  operatingCarrier text,
  originDestination text,
  segmentID text 
);
CREATE TABLE IF NOT EXISTS ItineraryFlightSegmentDetail (
  duration text,
  segmentType text,
  stopLocations text,
  stopQuantity text 
);
CREATE TABLE IF NOT EXISTS ItineraryOption (
  details text,
  disclosures text,
  offerID text,
  price text,
  priceBreakdown text
);
CREATE TABLE IF NOT EXISTS ItineraryOptionFlight (
  baggageAllowance text,
  key text,
  segments text
);
CREATE TABLE IF NOT EXISTS ItineraryOptionFlightSegmentDetail (
  ODRef text,
  cabinDesignator text,
  code text,
  disclosureRefs text,
  fare text,
  fareRules text,
  generalClassCode text,
  refs text,
  seatsLeft text,
  segmentID text 
);
CREATE TABLE IF NOT EXISTS ItineraryRQ (
  arrival CHAR(3) NOT NULL,
  date text NOT NULL,
  departure CHAR(3) NOT NULL,
  flightNumbers text 
);

CREATE TABLE IF NOT EXISTS ItineraryRS (
  createdAt bigint,
  flights text,
  maxNumberOfStops bigint,
  offerType ENUM('oneWay', 'roundTrip', 'multiCity') COMMENT 'Offer type',
  options text COMMENT 'possible fare options for itinerary',
  owner CHAR(2) COMMENT '2-letter code of provider',
  paymentTimeLimit text COMMENT 'Payment time limit, after this time created order will become expired'

CREATE TABLE IF NOT EXISTS MarketingCarrier (
  airlineID CHAR(2) NOT NULL,
  flightNumber text NOT NULL,
  name text NOT NULL 
);
CREATE TABLE IF NOT EXISTS MediaData (
  id text,
  link text 
);
CREATE TABLE IF NOT EXISTS metadata (
  country CHAR(2) NOT NULL,
  currency text NOT NULL,
  locale text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OfferPriceAllowedRequests (
  OrderCreateWithPayment SMALLINT,
  SeatAvailability SMALLINT,
  ServiceList SMALLINT
);
CREATE TABLE IF NOT EXISTS OfferPriceMedia (
  agencyData text,
  allowedPaymentMethods text,
  allowedRequests text,
  benefits text,
  cardSurcharges text,
  createdAt bigint,
  disclosures text,
  discounts text,
  extraInfoMandatory text,
  flights text,
  instantPayment text,
  offerExpiration text,
  offerID text,
  owner text,
  passengers text,
  paymentTimeLimit text,
  price text,
  remarks text,
  shoppingResponseID text,
  specialServices text,
  warnings text
);
CREATE TABLE IF NOT EXISTS OfferPricePayload (
  offerID text,
  offerIDs text,
  reshopOfferID text,
  services text 
);
CREATE TABLE IF NOT EXISTS OfferPriceRemarks (
  templates text 
);
CREATE TABLE IF NOT EXISTS OperatingCarrier (
  airlineID CHAR(2) NOT NULL,
  flightNumber text,
  name text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OrderCancelMedia (
  orderID text,
  warnings text 
);
CREATE TABLE IF NOT EXISTS OrderCancelPayload (
  id text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OrderChangePayload (
  action text,
  id text NOT NULL,
  loyaltyProgramAccount text,
  passengerUpdate text,
  passengers text,
  payment text,
  reshopOfferID text,
  services text 
);
CREATE TABLE IF NOT EXISTS OrderCommentsMedia (
  ok SMALLINT 
);
CREATE TABLE IF NOT EXISTS OrderCommentsPayload (
  comments text,
  id text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequests (
  pending text,
  started text,
  ticketed text
);
CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsPending (
  OrderCancel SMALLINT,
  OrderReprice SMALLINT,
  OrderSplit SMALLINT,
  SeatAvailability SMALLINT,
  ServiceList SMALLINT,
  TicketIssue SMALLINT
);
CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsStarted (
  OrderCancel SMALLINT,
  OrderReshop SMALLINT,
  OrderReshopRefund SMALLINT
);
CREATE TABLE IF NOT EXISTS OrderCreateAllowedRequestsTicketed (
  OrderCancel SMALLINT,
  OrderCancelToVoucher SMALLINT,
  OrderReshop SMALLINT,
  OrderReshopRefund SMALLINT,
  OrderReshopRouteChange SMALLINT,
  OrderSplit SMALLINT,
  OrderVoid SMALLINT,
  SeatAvailability SMALLINT,
  ServiceList SMALLINT
);
CREATE TABLE IF NOT EXISTS OrderCreateMedia (
  agency text,
  agencyData text,
  allowedPaymentMethods text,
  allowedRequests text,
  approvalStatus text,
  approved SMALLINT,
  benefits text,
  bookingDate text,
  bookingReference text,
  bookingType text,
  carbonOffset text,
  comments text,
  corporateID text,
  createdAt text,
  disclosures text,
  disruptionMessage text,
  disruptionStatus text,
  externalOrderID text,
  files text,
  flights text,
  formOfPayment text,
  history text,
  id text,
  logs text,
  metas text,
  orderID text,
  passengers text,
  payment text,
  paymentTimeLimit text,
  penalties text,
  pnr text,
  price text,
  priceGuaranteeTimeLimit text,
  readyToTicketIssue SMALLINT,
  refundType text,
  refundedAmount text,
  remarks text,
  seats text,
  sendForApprovalAllowed SMALLINT,
  services text,
  status text,
  ticketIssue text,
  tickets text,
  updatedAt text,
  viewMode text,
  warnings text
);
CREATE TABLE IF NOT EXISTS OrderCreatePayload (
  corporateID text,
  loyaltyProgramAccount text,
  metas text,
  passengers text NOT NULL,
  payment text,
  remarks text,
  shoppingResponseID text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OrderCreatePayment (
  amount numeric(20, 9),
  cardInformation text,
  currency text,
  status text,
  type text 
);
CREATE TABLE IF NOT EXISTS OrderCreateRemarks (
  data text,
  result text 
);
CREATE TABLE IF NOT EXISTS OrderFile (
  id text,
  type text 
);
CREATE TABLE IF NOT EXISTS OrderHistoryItem (
  agency text,
  agent text,
  details text,
  eventID text,
  eventtime timestampz,
  id text,
  price text,
  tickets text,
  transactionType text 
);
CREATE TABLE IF NOT EXISTS OrderHistoryMedia (
  count bigint NOT NULL,
  history text NOT NULL
);
CREATE TABLE IF NOT EXISTS OrderListCounters (
  active bigint,
  approved bigint,
  cancelled bigint,
  disrupted bigint,
  pending bigint,
  refused bigint,
  ticketed bigint,
  underApproval bigint,
  unused bigint,
  voided bigint
);
CREATE TABLE IF NOT EXISTS OrderListItem (
  agency text,
  approveStatus text,
  bookingDate text,
  bookingType text,
  corporateID text,
  disruptionStatus text,
  flights text,
  id text,
  orderID text,
  owner text,
  passengers text,
  paymentTimeLimit text,
  pnr text,
  provider text,
  status text 
);
CREATE TABLE IF NOT EXISTS OrderListMedia (
  agencies text,
  count bigint,
  counters text,
  orders text
);
 Order warning
CREATE TABLE IF NOT EXISTS OrderLog (
  severity text,
  text text,
  timestamp text,
  type text 
);
CREATE TABLE IF NOT EXISTS OrderMetasMedia (
  ok SMALLINT 
);
CREATE TABLE IF NOT EXISTS OrderMetasPayload (
  id text NOT NULL,
  metas text 
);
 Order remarks data
CREATE TABLE IF NOT EXISTS OrderRemarkData (
  template text,
  variables text 
);
CREATE TABLE IF NOT EXISTS OrderRemarkTemplate (
  data text,
  name text,
  neededOnCreation SMALLINT 
);
CREATE TABLE IF NOT EXISTS OrderRemarks (
  data text,
  result text,
  templates text
);
CREATE TABLE IF NOT EXISTS OrderRemarksMedia (
  ok SMALLINT 
);
CREATE TABLE IF NOT EXISTS OrderRemarksPayload (
  data text,
  id text NOT NULL,
  result text 
);
CREATE TABLE IF NOT EXISTS OrderReshopMedia (
  offers text
);
CREATE TABLE IF NOT EXISTS OrderReshopMediaType (
  benefits text,
  disclosures text,
  flights text,
  offerID text,
  offerType ENUM('oneWay', 'roundTrip', 'outbound', 'return'),
  owner CHAR(2),
  price text,
  priceBreakdown text,
  priceChange SMALLINT,
  warnings text
);
CREATE TABLE IF NOT EXISTS OrderReshopPayload (
  id text NOT NULL,
  originDestinations text NOT NULL,
  preferences text
);
CREATE TABLE IF NOT EXISTS OrderReshopRefundMedia (
  flights text,
  originalOrder text,
  penalty text,
  refund text,
  seats text,
  services text,
  tickets text,
  voidPermited SMALLINT,
  warnings text
);
CREATE TABLE IF NOT EXISTS OrderReshopRefundPayload (
  id text NOT NULL,
  type text 
);
CREATE TABLE IF NOT EXISTS OrderReshopRepriceMedia (
  benefits text,
  cardSurcharges text,
  disclosures text,
  flights text,
  offerID text,
  owner text,
  price text,
  seatsToRebook text,
  servicesToRebook text,
  warnings text
);
CREATE TABLE IF NOT EXISTS OrderReshopRepricePayload (
  id text NOT NULL,
  offerID text 
);
CREATE TABLE IF NOT EXISTS OrderRetrievePayload (
  id text NOT NULL 
);
CREATE TABLE IF NOT EXISTS OrderReviewMedia (
  ok SMALLINT 
);
CREATE TABLE IF NOT EXISTS OrderReviewPayload (
  action text NOT NULL,
  id text NOT NULL,
  reason text 
);
CREATE TABLE IF NOT EXISTS OrderUpdatePayload (
  action ENUM('add_fqtv', 'name_correction', 'add_contact_details') COMMENT 'A flag used to indicate qhet type of update is being made',
  id text NOT NULL COMMENT 'AirGateway order ID',
  passengersUpdate text NOT NULL COMMENT 'Passengers details to update for'
);
CREATE TABLE IF NOT EXISTS OriginDestinationASRQ (
  arrival text NOT NULL,
  departure text NOT NULL,
  type ENUM( 'keep') COMMENT 'To be used in the OrederReshop, on the Rebooking process. If &#39;keep&#39; is set the OD will be retained.'
)  COMMENT='Origin/Destination pair in a shopping search scenario';
CREATE TABLE IF NOT EXISTS OriginDestinationRS_Inner (
  arrival text,
  departure text
);
CREATE TABLE IF NOT EXISTS Passenger (
  data text,
  document text,
  fareBasisCodes text,
  identity4Discount text,
  infantReference text,
  passengerType text,
  seats text,
  services text,
  specialServices text,
  travelerReference text NOT NULL 
);
CREATE TABLE IF NOT EXISTS PassengerData (
  address text,
  birthdate text,
  email text,
  fqtvInfo text,
  gender ENUM('Male', 'Female', '') COMMENT 'Valid values: ',
  name text NOT NULL,
  phone text COMMENT 'Phone number',
  surname text,
  title ENUM('MR', 'MS', 'MRS', 'MSTR') COMMENT 'Valid Values: '
);
CREATE TABLE IF NOT EXISTS Payment (
  cardCode text,
  cardHolderEmail text,
  cardHolderName text,
  cardHolderSurname text,
  cardHolderTitle text,
  cardNumber text,
  cardType text,
  cashEmail text,
  cashName text,
  cashSurname text,
  cashTitle text,
  cityName text,
  countryCode text,
  expiration text,
  method text NOT NULL,
  passengerType text,
  phone text,
  postalCode text,
  remark text,
  seriesCode text,
  stateProv text,
  street1 text,
  street2 text,
  voucher text
);
CREATE TABLE IF NOT EXISTS PaymentVoucher (
  amount numeric(20, 9),
  currency text,
  email text,
  number text,
  surname text 
);
CREATE TABLE IF NOT EXISTS Penalty (
  amounts text,
  description text,
  type text 
);
CREATE TABLE IF NOT EXISTS PenaltyAmount (
  amount numeric(20, 9),
  currency text,
  providerAmount numeric(20, 9),
  providerCurrency text,
  remark text 
);
CREATE TABLE IF NOT EXISTS Preferences (
  cabin text,
  discounts text,
  fare text,
  fareList text,
  nonStop SMALLINT 
);
CREATE TABLE IF NOT EXISTS PreferencesAS (
  cabin text,
  discounts text,
  fare text,
  fareList text,
  maxDuration text,
  maxDurationRatio text,
  maxStops text,
  nonStop SMALLINT 
);
CREATE TABLE IF NOT EXISTS Price (
  consumer text,
  provider text
);
CREATE TABLE IF NOT EXISTS PriceBreakdown (
  inbound text,
  outbound text
);
CREATE TABLE IF NOT EXISTS PriceDetail (
  base numeric(20, 9),
  breakdown text,
  currency text,
  surcharge numeric(20, 9),
  tax text,
  total numeric(20, 9) 
);
CREATE TABLE IF NOT EXISTS PriceDetailBreakdown (
  base numeric(20, 9),
  offerItemID text,
  passengerRefs text,
  passengerType text,
  surcharge numeric(20, 9),
  tax text
);
CREATE TABLE IF NOT EXISTS PriceDetailTax (
  breakdown text,
  total numeric(20, 9) 
);
CREATE TABLE IF NOT EXISTS PriceDetailTaxBreakdown (
  code text,
  currency text,
  description text,
  total numeric(20, 9) 
);
CREATE TABLE IF NOT EXISTS ProviderListMedia (
  providers text
);
CREATE TABLE IF NOT EXISTS Rows (
  first bigint,
  last bigint 
);
CREATE TABLE IF NOT EXISTS SSR (
  bookingInstructions text,
  code text,
  desc text,
  passengerType text,
  text_required SMALLINT 
);
CREATE TABLE IF NOT EXISTS Seat (
  characteristics text,
  description text,
  listKey text,
  location text,
  passengerRefs text,
  passengerType text,
  price text,
  refs text,
  remarks text,
  removable SMALLINT,
  segment text 
);
CREATE TABLE IF NOT EXISTS SeatAvailabilityMedia (
  disclosures text,
  exits text,
  owner text,
  seatDisplay text,
  seatList text,
  segments text 
);
CREATE TABLE IF NOT EXISTS SeatAvailabilityPayload (
  id text,
  passengers text,
  reshopOfferID text,
  segmentID text,
  shoppingResponseID text 
);
CREATE TABLE IF NOT EXISTS SeatDisplay (
  columns text,
  rows text,
  segment text 
);
CREATE TABLE IF NOT EXISTS SeatLocation (
  column text,
  row bigint 
);
 Service List
CREATE TABLE IF NOT EXISTS Service (
  bookingInstructions text,
  descriptions text,
  maximumQuantity bigint,
  minimumQuantity bigint,
  name text,
  objectKey text,
  price text,
  properties text,
  ref text,
  removable SMALLINT,
  segmentReferences text,
  serviceID text,
  travelerReferences text 
);
CREATE TABLE IF NOT EXISTS ServiceListMedia (
  disclosures text,
  passengers text,
  segments text,
  services text,
  warnings text
);
CREATE TABLE IF NOT EXISTS ServiceListPayload (
  id text,
  passengers text,
  reshopOfferID text,
  shoppingResponseID text 
);
 Service Request
CREATE TABLE IF NOT EXISTS ServiceRequest (
  action ENUM('Create', 'Cancel') NOT NULL,
  owner text,
  quantity numeric(20, 9),
  seatLocation text,
  segmentReference text,
  serviceID text,
  text text,
  travelerReference text 
  -- type ENUM('seat', 'service') NOT NULL 
);
CREATE TABLE IF NOT EXISTS StopLocation (
  airportCode text,
  airportName text,
  arrivalDate text,
  arrivaltime timestampz,
  departureDate text,
  departuretime timestampz 
);
CREATE TABLE IF NOT EXISTS TicketCoupon (
  dateOfService text,
  fareBasisCode text,
  media text,
  number text,
  price text,
  reference text,
  remark text,
  segment text,
  serviceReferences text,
  status text,
  statusDefinition text,
  valid text,
  validatingAirline text 
);
CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfo (
  arrival text,
  arrivalDatetime timestampz,
  departure text,
  departureDatetime timestampz,
  equipment text,
  marketingCarrier text,
  status text 
);
CREATE TABLE IF NOT EXISTS TicketCouponAirlineInfoDepartureArrivalDateTime (
  date text,
  time timestampz 
);
CREATE TABLE IF NOT EXISTS TicketCouponValid (
  effective text,
  expiration text 
);
CREATE TABLE IF NOT EXISTS TicketInfo (
  coupons text,
  dateOfIssue text,
  numberOfBooklets bigint,
  passengerRef text,
  price text,
  remark text,
  ticketNumber text,
  timeOfIssue text,
  typeCode text,
  typeCodeDefinition text 
);
CREATE TABLE IF NOT EXISTS Travelers (
  ADT numeric(20, 9) NOT NULL,
  CHD numeric(20, 9),
  INF numeric(20, 9),
  V14 numeric(20, 9),
  VFR numeric(20, 9),
  VNF numeric(20, 9),
  VNN numeric(20, 9),
  YAD numeric(20, 9) 
);
