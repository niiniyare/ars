/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
/* SET AUTOCOMMIT = 0; */
/* START TRANSACTION; */
/* SET time_zone = "+00:00"; */

-- --------------------------------------------------------

--
-- Table structure for table `Address` generated from model 'Address'
--

CREATE TABLE IF NOT EXISTS `Address` (
  `cityName` TEXT DEFAULT NULL COMMENT 'City name.',
  `countryCode` TEXT DEFAULT NULL COMMENT 'Country code.',
  `postalCode` TEXT DEFAULT NULL COMMENT 'Postal code.',
  `street` TEXT DEFAULT NULL COMMENT 'Street.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AgencyData` generated from model 'AgencyData'
--

CREATE TABLE IF NOT EXISTS `AgencyData` (
  `countryCode` TEXT DEFAULT NULL COMMENT 'Country code',
  `iataCode` TEXT DEFAULT NULL COMMENT 'IATA Number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AirDocIssuePayloadPayload` generated from model 'AirDocIssuePayloadPayload'
--

CREATE TABLE IF NOT EXISTS `AirDocIssuePayloadPayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `payment` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AirShoppingMedia` generated from model 'AirShoppingMedia'
-- AirShoppingMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `AirShoppingMedia` (
  `result` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AirShoppingMedia media type (default view)';

--
-- Table structure for table `AirShoppingOffer` generated from model 'AirShoppingOffer'
--

CREATE TABLE IF NOT EXISTS `AirShoppingOffer` (
  `benefits` TEXT DEFAULT NULL,
  `createdAt` BIGINT DEFAULT NULL COMMENT 'Offer created at unix time',
  `disclosures` JSON DEFAULT NULL COMMENT 'List of disclosures corresponding to offer.',
  `error` TEXT DEFAULT NULL COMMENT 'Error from provider',
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `maxNumberOfStops` BIGINT DEFAULT NULL COMMENT 'Max number of stops',
  `offerID` TEXT DEFAULT NULL COMMENT 'Offer identifier',
  `offerType` ENUM('oneWay', 'roundTrip', 'multiCity') DEFAULT NULL COMMENT 'Offer type',
  `owner` CHAR(2) DEFAULT NULL COMMENT '2 letter abbreviation of airline',
  `paymentTimeLimit` TEXT DEFAULT NULL COMMENT 'Offer payment time limit, after this time created order will become expired',
  `price` TEXT DEFAULT NULL,
  `priceBreakdown` TEXT DEFAULT NULL,
  `provider` CHAR(2) DEFAULT NULL COMMENT '2 letter abbreviation of airline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `AirShoppingPayload` generated from model 'AirShoppingPayload'
-- AirShoppingPayload is the type for AirShopping endpoint request body
--

CREATE TABLE IF NOT EXISTS `AirShoppingPayload` (
  `corporateDiscountCodes` JSON DEFAULT NULL COMMENT 'Corporate Discount Codes Map',
  `metadata` TEXT DEFAULT NULL,
  `originDestinations` JSON NOT NULL COMMENT 'Origin/Destination pair in a shopping search scenario',
  `preferences` TEXT DEFAULT NULL,
  `travelers` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AirShoppingPayload is the type for AirShopping endpoint request body';

--
-- Table structure for table `AllowedPaymentMethods` generated from model 'AllowedPaymentMethods'
-- Allowed payment methods
--

CREATE TABLE IF NOT EXISTS `AllowedPaymentMethods` (
  `agencyCard` TINYINT(1) NOT NULL,
  `agencyCash` TINYINT(1) NOT NULL,
  `card` TINYINT(1) NOT NULL,
  `none` TINYINT(1) NOT NULL,
  `unusedTicket` TINYINT(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Allowed payment methods';

--
-- Table structure for table `AlternativePNR` generated from model 'AlternativePNR'
-- Struct returned to the alternative pnrs not owner by the airlines, but for 3th parties.
--

CREATE TABLE IF NOT EXISTS `AlternativePNR` (
  `id` TEXT DEFAULT NULL COMMENT 'The value of the PNR',
  `providerID` TEXT DEFAULT NULL COMMENT 'The id of the third party'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Struct returned to the alternative pnrs not owner by the airlines, but for 3th parties.';

--
-- Table structure for table `AncillariesToRebook` generated from model 'AncillariesToRebook'
--

CREATE TABLE IF NOT EXISTS `AncillariesToRebook` (
  `flightKey` TEXT DEFAULT NULL,
  `rebook` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ArrivalASRQ` generated from model 'ArrivalASRQ'
-- AirShopping request arrival
--

CREATE TABLE IF NOT EXISTS `ArrivalASRQ` (
  `airportCode` CHAR(3) NOT NULL COMMENT 'Departure/Arrival airport IATA three letter code.',
  `date` TEXT DEFAULT NULL COMMENT 'Arrival date in format YYYY-MM-DD.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AirShopping request arrival';

--
-- Table structure for table `BaggageAllowance` generated from model 'BaggageAllowance'
--

CREATE TABLE IF NOT EXISTS `BaggageAllowance` (
  `carryOn` JSON DEFAULT NULL,
  `checked` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BaggageAllowanceItem` generated from model 'BaggageAllowanceItem'
--

CREATE TABLE IF NOT EXISTS `BaggageAllowanceItem` (
  `chooseType` ENUM('one', 'many') DEFAULT NULL COMMENT 'Options choose type, possible values are: one - select one of suggested options; many - select multiple suggested options',
  `options` JSON DEFAULT NULL COMMENT 'options to choose',
  `passengerRefs` TEXT DEFAULT NULL COMMENT 'Passenger references that access this baggage condition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BaggageAllowanceItemOption` generated from model 'BaggageAllowanceItemOption'
-- Baggage Allowance Item Option
--

CREATE TABLE IF NOT EXISTS `BaggageAllowanceItemOption` (
  `properties` JSON DEFAULT NULL COMMENT 'Properties',
  `quantity` BIGINT DEFAULT NULL COMMENT 'baggage quantity',
  `text` TEXT DEFAULT NULL COMMENT 'description '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Baggage Allowance Item Option';

--
-- Table structure for table `Benefit` generated from model 'Benefit'
--

CREATE TABLE IF NOT EXISTS `Benefit` (
  `amount` TEXT DEFAULT NULL,
  `application` TEXT DEFAULT NULL COMMENT 'The reason of the discount',
  `description` TEXT DEFAULT NULL COMMENT 'A brief description of the discount',
  `term` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BookingInstructions` generated from model 'BookingInstructions'
-- Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.
--

CREATE TABLE IF NOT EXISTS `BookingInstructions` (
  `mandatoryText` ENUM('not_allowed', 'mandatory', 'optional') DEFAULT NULL COMMENT 'This attribute indicates the optional, mandatory or not allowed need for the text',
  `pattern` TEXT DEFAULT NULL COMMENT 'The pattern that the text introduced by the customer should match to. This value can be empty',
  `placeHolder` TEXT DEFAULT NULL COMMENT 'The text in the input or the textarea which helps the customers knows what should write',
  `type` TEXT DEFAULT NULL COMMENT 'The type for the input used to be filled by the customer, it can be number or text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Indicates if there is an optional, a mandatory or a not allowed text from the customer´s side depending in the MandatoryText attribute value.';

--
-- Table structure for table `BookingReferenceResponse` generated from model 'BookingReferenceResponse'
-- BookingReferenceResponse
--

CREATE TABLE IF NOT EXISTS `BookingReferenceResponse` (
  `airlineID` TEXT DEFAULT NULL COMMENT 'Airline ID',
  `alternativeIDs` JSON DEFAULT NULL,
  `id` TEXT DEFAULT NULL COMMENT 'Booking reference',
  `otherID` TEXT DEFAULT NULL COMMENT 'Other ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BookingReferenceResponse';

--
-- Table structure for table `CarbonOffset` generated from model 'CarbonOffset'
--

CREATE TABLE IF NOT EXISTS `CarbonOffset` (
  `destination` TEXT DEFAULT NULL COMMENT 'Flight destination point',
  `footprint` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Footprint in kgs per passenger',
  `origin` TEXT DEFAULT NULL COMMENT 'Flight origin point',
  `segmentKey` TEXT DEFAULT NULL COMMENT 'Segment key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CardInformation` generated from model 'CardInformation'
--

CREATE TABLE IF NOT EXISTS `CardInformation` (
  `cardCode` TEXT DEFAULT NULL COMMENT 'The type of the card',
  `cardNumber` TEXT DEFAULT NULL COMMENT 'The last four numbers of the card',
  `expirationDate` TEXT DEFAULT NULL COMMENT 'The month and year of the expiration of the card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Characteristics` generated from model 'Characteristics'
-- Characteristics info
--

CREATE TABLE IF NOT EXISTS `Characteristics` (
  `code` TEXT DEFAULT NULL,
  `definition` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Characteristics info';

--
-- Table structure for table `ClassOfService` generated from model 'ClassOfService'
-- Class of the service offered
--

CREATE TABLE IF NOT EXISTS `ClassOfService` (
  `cabinDesignator` TEXT DEFAULT NULL COMMENT 'Cabin Type',
  `code` TEXT DEFAULT NULL COMMENT 'Code for class',
  `disclosureRefs` JSON DEFAULT NULL COMMENT 'Disclosures',
  `fare` TEXT DEFAULT NULL,
  `fareRules` JSON DEFAULT NULL COMMENT 'Fare rules for cancelability, changeability and the penalties.',
  `generalClassCode` TEXT DEFAULT NULL,
  `refs` TEXT DEFAULT NULL COMMENT 'Reference of class'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Class of the service offered';

--
-- Table structure for table `DepartureASRQ` generated from model 'DepartureASRQ'
-- AirShopping request departure
--

CREATE TABLE IF NOT EXISTS `DepartureASRQ` (
  `airportCode` CHAR(3) NOT NULL COMMENT 'Departure/Arrival airport IATA three letter code.',
  `date` TEXT NOT NULL COMMENT 'Departure/Arrival date in format YYYY-MM-DD.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='AirShopping request departure';

--
-- Table structure for table `Disclosure` generated from model 'Disclosure'
--

CREATE TABLE IF NOT EXISTS `Disclosure` (
  `descriptions` JSON DEFAULT NULL COMMENT 'Disclosure details',
  `listKey` TEXT DEFAULT NULL COMMENT 'Disclosure Reference'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DisclosureDescription` generated from model 'DisclosureDescription'
-- Disclosure description
--

CREATE TABLE IF NOT EXISTS `DisclosureDescription` (
  `category` TEXT DEFAULT NULL COMMENT 'Category',
  `item` TEXT DEFAULT NULL COMMENT 'Item',
  `media` TEXT DEFAULT NULL,
  `metadataToken` TEXT DEFAULT NULL COMMENT 'MetadataToken',
  `originDestinationReference` TEXT DEFAULT NULL COMMENT 'A reference to the origin-destination',
  `properties` JSON DEFAULT NULL COMMENT 'Properties',
  `text` TEXT DEFAULT NULL COMMENT 'Text',
  `units` TEXT DEFAULT NULL COMMENT 'Units'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Disclosure description';

--
-- Table structure for table `DisclosureProperty` generated from model 'DisclosureProperty'
-- Disclosure properties
--

CREATE TABLE IF NOT EXISTS `DisclosureProperty` (
  `UOM` TEXT DEFAULT NULL COMMENT 'Units of measurement',
  `type` TEXT DEFAULT NULL COMMENT 'Type',
  `value` TEXT DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Disclosure properties';

--
-- Table structure for table `DiscountPreferences` generated from model 'DiscountPreferences'
--

CREATE TABLE IF NOT EXISTS `DiscountPreferences` (
  `largeFamily` TEXT DEFAULT NULL COMMENT 'IB Large Family Discount Code',
  `residentCode` TEXT DEFAULT NULL COMMENT 'IB Resident Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Document` generated from model 'Document'
--

CREATE TABLE IF NOT EXISTS `Document` (
  `documentID` TEXT NOT NULL,
  `documentType` ENUM('PP', 'NI', '') NOT NULL COMMENT 'Valid values: ',
  `expirationDate` TEXT DEFAULT NULL COMMENT 'The expiration date of the document using format YYYY-MM-DD.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Equipment` generated from model 'Equipment'
--

CREATE TABLE IF NOT EXISTS `Equipment` (
  `aircraftCode` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `error` generated from model 'error'
-- Error response media type (default view)
--

CREATE TABLE IF NOT EXISTS `error` (
  `code` TEXT DEFAULT NULL COMMENT 'an application-specific error code, expressed as a string value.',
  `detail` TEXT DEFAULT NULL COMMENT 'a human-readable explanation specific to this occurrence of the problem.',
  `id` TEXT DEFAULT NULL COMMENT 'a unique identifier for this particular occurrence of the problem.',
  `meta` JSON DEFAULT NULL COMMENT 'a meta object containing non-standard meta-information about the error.',
  `status` TEXT DEFAULT NULL COMMENT 'the HTTP status code applicable to this problem, expressed as a string value.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Error response media type (default view)';

--
-- Table structure for table `ExitSeat` generated from model 'ExitSeat'
--

CREATE TABLE IF NOT EXISTS `ExitSeat` (
  `position` TEXT DEFAULT NULL COMMENT 'If the exit is on the right or in the left of the plane',
  `row` BIGINT DEFAULT NULL COMMENT 'The row where the exit in placed',
  `segmentID` TEXT DEFAULT NULL COMMENT 'The resference to the segment '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FQTVAccount` generated from model 'FQTVAccount'
-- Frequent traveler account
--

CREATE TABLE IF NOT EXISTS `FQTVAccount` (
  `number` TEXT DEFAULT NULL COMMENT 'Frequent traveler account number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Frequent traveler account';

--
-- Table structure for table `FQTVInfo` generated from model 'FQTVInfo'
-- Frequent traveler information
--

CREATE TABLE IF NOT EXISTS `FQTVInfo` (
  `account` TEXT DEFAULT NULL,
  `airlineID` TEXT DEFAULT NULL COMMENT 'Airline ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Frequent traveler information';

--
-- Table structure for table `Fare` generated from model 'Fare'
--

CREATE TABLE IF NOT EXISTS `Fare` (
  `Code` TEXT DEFAULT NULL COMMENT 'Fare code',
  `Definition` TEXT DEFAULT NULL COMMENT 'Fare Definition Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FareRule` generated from model 'FareRule'
-- Fare Rules per segment and per each passenger type.
--

CREATE TABLE IF NOT EXISTS `FareRule` (
  `cancel` ENUM( 'Allowed', 'For Fee', 'Not Allowed') DEFAULT NULL COMMENT 'The fare rule for the cancelability.',
  `cancelEnum` ENUM( 'allowed', 'for_fee', 'not_allowed') DEFAULT NULL COMMENT 'The fare rule for the cancelability with a very structure format.',
  `change` ENUM( 'Allowed', 'For Fee', 'Not Allowed') DEFAULT NULL COMMENT 'The fare rule for the changeability.',
  `changeEnum` ENUM( 'allowed', 'for_fee', 'not_allowed') DEFAULT NULL COMMENT 'The fare rule for the changeability with a very structure format.',
  `passengerRef` TEXT DEFAULT NULL COMMENT 'The references tot the passengers involved in the group of FareReules.',
  `passengerType` TEXT DEFAULT NULL COMMENT 'The type of the passengers related to this group of FareRule.',
  `penalties` JSON DEFAULT NULL COMMENT 'Fare rule penalties.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Fare Rules per segment and per each passenger type.';

--
-- Table structure for table `Flight` generated from model 'Flight'
--

CREATE TABLE IF NOT EXISTS `Flight` (
  `arrival` TEXT DEFAULT NULL,
  `baggageAllowance` TEXT DEFAULT NULL,
  `departure` TEXT DEFAULT NULL,
  `duration` TEXT DEFAULT NULL COMMENT 'Flight duration',
  `key` TEXT DEFAULT NULL COMMENT 'Key identificator',
  `segments` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightDetail` generated from model 'FlightDetail'
--

CREATE TABLE IF NOT EXISTS `FlightDetail` (
  `classOfService` TEXT DEFAULT NULL,
  `duration` TEXT DEFAULT NULL COMMENT 'Flight duration',
  `seatsLeft` TEXT DEFAULT NULL COMMENT 'How many seats left',
  `segmentType` TEXT DEFAULT NULL COMMENT 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.',
  `stopLocations` JSON DEFAULT NULL COMMENT 'Stop locations',
  `stopQuantity` TEXT DEFAULT NULL COMMENT 'Number of extra stops from Origin to Destination'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightDetailFare` generated from model 'FlightDetailFare'
--

CREATE TABLE IF NOT EXISTS `FlightDetailFare` (
  `basisCode` TEXT DEFAULT NULL COMMENT 'Fare Basis Code',
  `cabin` TEXT DEFAULT NULL,
  `code` TEXT DEFAULT NULL COMMENT 'Fare information for this flight segment',
  `marketingName` TEXT DEFAULT NULL COMMENT 'Marketing name',
  `priceClassName` TEXT DEFAULT NULL COMMENT 'Price class name',
  `standardName` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL COMMENT 'Fare type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightPointData` generated from model 'FlightPointData'
--

CREATE TABLE IF NOT EXISTS `FlightPointData` (
  `airportCode` TEXT NOT NULL COMMENT 'Departure/Arrival airport IATA three letter code.',
  `airportName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival airport name.',
  `countryID` TEXT DEFAULT NULL COMMENT 'Country ID data',
  `date` TEXT DEFAULT NULL COMMENT 'Departure/Arrival date in format YYYY-MM-DD.',
  `parentLocation` TEXT DEFAULT NULL COMMENT 'Parent Location data',
  `terminalName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival terminal name.',
  `time` TEXT DEFAULT NULL COMMENT 'Preferred departure time in format HH:MM 24h.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightPointDataRSArrInner` generated from model 'FlightPointDataRSArrInner'
--

CREATE TABLE IF NOT EXISTS `FlightPointDataRSArrInner` (
  `airportCode` TEXT NOT NULL COMMENT 'Departure/Arrival airport IATA three letter code.',
  `airportName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival airport name.',
  `countryID` TEXT DEFAULT NULL COMMENT 'Country ID data',
  `date` TEXT DEFAULT NULL COMMENT 'Departure/Arrival date in format YYYY-MM-DD.',
  `parentLocation` TEXT DEFAULT NULL COMMENT 'Parent Location data',
  `terminalName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival terminal.',
  `time` TEXT DEFAULT NULL COMMENT 'Preferred departure time in format HH:MM 24h.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightPointDataRSDepInner` generated from model 'FlightPointDataRSDepInner'
--

CREATE TABLE IF NOT EXISTS `FlightPointDataRSDepInner` (
  `airportCode` TEXT NOT NULL COMMENT 'Departure/Arrival airport IATA three letter code.',
  `airportName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival airport name.',
  `countryID` TEXT DEFAULT NULL COMMENT 'Country ID data',
  `date` TEXT DEFAULT NULL COMMENT 'Departure/Arrival date in format YYYY-MM-DD.',
  `parentLocation` TEXT DEFAULT NULL COMMENT 'Parent Location data',
  `terminalName` TEXT DEFAULT NULL COMMENT 'Departure/Arrival terminal.',
  `time` TEXT DEFAULT NULL COMMENT 'Preferred departure time in format HH:MM 24h.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FlightSegment` generated from model 'FlightSegment'
--

CREATE TABLE IF NOT EXISTS `FlightSegment` (
  `ODRef` TEXT DEFAULT NULL COMMENT 'Origin destination reference',
  `detail` TEXT DEFAULT NULL,
  `equipment` TEXT NOT NULL,
  `fareCode` TEXT DEFAULT NULL COMMENT 'The code of the fare',
  `flightNumber` TEXT DEFAULT NULL COMMENT 'Flight number of airline',
  `marketingCarrier` TEXT NOT NULL,
  `operatingCarrier` TEXT DEFAULT NULL,
  `originDestination` TEXT NOT NULL,
  `segmentID` TEXT DEFAULT NULL COMMENT 'Segment ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Identity4Discount` generated from model 'Identity4Discount'
--

CREATE TABLE IF NOT EXISTS `Identity4Discount` (
  `identityDocumentNumber` TEXT DEFAULT NULL,
  `identityDocumentType` TEXT DEFAULT NULL,
  `remark` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItinShoppingMedia` generated from model 'ItinShoppingMedia'
-- ItinShoppingMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `ItinShoppingMedia` (
  `itinerary` TEXT DEFAULT NULL,
  `status` TEXT DEFAULT NULL COMMENT 'Status of request: &#39;itinerary-found&#39;, &#39;itinerary-not-found&#39;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ItinShoppingMedia media type (default view)';

--
-- Table structure for table `ItinShoppingPayload` generated from model 'ItinShoppingPayload'
-- ItinShoppingPayload is the type for ItinShopping endpoint request body
--

CREATE TABLE IF NOT EXISTS `ItinShoppingPayload` (
  `itinerary` JSON NOT NULL COMMENT 'List of itinerary routes',
  `metadata` TEXT DEFAULT NULL,
  `travelers` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ItinShoppingPayload is the type for ItinShopping endpoint request body';

--
-- Table structure for table `ItineraryFlight` generated from model 'ItineraryFlight'
--

CREATE TABLE IF NOT EXISTS `ItineraryFlight` (
  `arrival` TEXT DEFAULT NULL,
  `departure` TEXT DEFAULT NULL,
  `duration` TEXT DEFAULT NULL COMMENT 'Flight duration',
  `key` TEXT DEFAULT NULL COMMENT 'Key identificator',
  `segments` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryFlightSegment` generated from model 'ItineraryFlightSegment'
--

CREATE TABLE IF NOT EXISTS `ItineraryFlightSegment` (
  `ODRef` TEXT DEFAULT NULL COMMENT 'Origin destination reference',
  `detail` TEXT DEFAULT NULL,
  `equipment` TEXT DEFAULT NULL,
  `flightNumber` TEXT DEFAULT NULL COMMENT 'Flight number of airline',
  `marketingCarrier` TEXT DEFAULT NULL,
  `operatingCarrier` TEXT DEFAULT NULL,
  `originDestination` TEXT DEFAULT NULL,
  `segmentID` TEXT DEFAULT NULL COMMENT 'Segment ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryFlightSegmentDetail` generated from model 'ItineraryFlightSegmentDetail'
--

CREATE TABLE IF NOT EXISTS `ItineraryFlightSegmentDetail` (
  `duration` TEXT DEFAULT NULL COMMENT 'Flight duration',
  `segmentType` TEXT DEFAULT NULL COMMENT 'The status of the segment -&gt; UN: Unconfirmed. TK: Change scheduled, contact center will confirm. HK: Confirmed.',
  `stopLocations` JSON DEFAULT NULL COMMENT 'Stop locations',
  `stopQuantity` TEXT DEFAULT NULL COMMENT 'Number of extra stops from Origin to Destination'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryOption` generated from model 'ItineraryOption'
--

CREATE TABLE IF NOT EXISTS `ItineraryOption` (
  `details` JSON DEFAULT NULL,
  `disclosures` JSON DEFAULT NULL COMMENT 'List of disclosures corresponding to offer.',
  `offerID` TEXT DEFAULT NULL COMMENT 'Offer identifier',
  `price` TEXT DEFAULT NULL,
  `priceBreakdown` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryOptionFlight` generated from model 'ItineraryOptionFlight'
--

CREATE TABLE IF NOT EXISTS `ItineraryOptionFlight` (
  `baggageAllowance` TEXT DEFAULT NULL,
  `key` TEXT DEFAULT NULL COMMENT 'Key identificator',
  `segments` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryOptionFlightSegmentDetail` generated from model 'ItineraryOptionFlightSegmentDetail'
--

CREATE TABLE IF NOT EXISTS `ItineraryOptionFlightSegmentDetail` (
  `ODRef` TEXT DEFAULT NULL COMMENT 'Origin destination reference',
  `cabinDesignator` TEXT DEFAULT NULL COMMENT 'Cabin Type',
  `code` TEXT DEFAULT NULL COMMENT 'Code for class',
  `disclosureRefs` JSON DEFAULT NULL COMMENT 'Disclosures',
  `fare` TEXT DEFAULT NULL,
  `fareRules` JSON DEFAULT NULL COMMENT 'Fare rules for cancelability, changeability and the penalties.',
  `generalClassCode` TEXT DEFAULT NULL,
  `refs` TEXT DEFAULT NULL COMMENT 'Reference of class',
  `seatsLeft` TEXT DEFAULT NULL COMMENT 'How many seats left',
  `segmentID` TEXT DEFAULT NULL COMMENT 'Segment ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ItineraryRQ` generated from model 'ItineraryRQ'
-- ItineraryRQ is an object for flight
--

CREATE TABLE IF NOT EXISTS `ItineraryRQ` (
  `arrival` CHAR(3) NOT NULL COMMENT 'Departure airport IATA 3-letter code',
  `date` TEXT NOT NULL COMMENT 'Departure/Arrival date in format YYYY-MM-DD.',
  `departure` CHAR(3) NOT NULL COMMENT 'Departure airport IATA 3-letter code',
  `flightNumbers` JSON DEFAULT NULL COMMENT 'Flight numbers for itinerary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ItineraryRQ is an object for flight';

--
-- Table structure for table `ItineraryRS` generated from model 'ItineraryRS'
--

CREATE TABLE IF NOT EXISTS `ItineraryRS` (
  `createdAt` BIGINT DEFAULT NULL COMMENT 'Created at unix time',
  `flights` JSON DEFAULT NULL COMMENT 'route details',
  `maxNumberOfStops` BIGINT DEFAULT NULL COMMENT 'Max number of stops',
  `offerType` ENUM('oneWay', 'roundTrip', 'multiCity') DEFAULT NULL COMMENT 'Offer type',
  `options` JSON DEFAULT NULL COMMENT 'possible fare options for itinerary',
  `owner` CHAR(2) DEFAULT NULL COMMENT '2-letter code of provider',
  `paymentTimeLimit` TEXT DEFAULT NULL COMMENT 'Payment time limit, after this time created order will become expired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `MarketingCarrier` generated from model 'MarketingCarrier'
--

CREATE TABLE IF NOT EXISTS `MarketingCarrier` (
  `airlineID` CHAR(2) NOT NULL COMMENT 'Two letter airline code',
  `flightNumber` TEXT NOT NULL,
  `name` TEXT NOT NULL COMMENT 'Airline Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `MediaData` generated from model 'MediaData'
-- Some Disclosures have media types
--

CREATE TABLE IF NOT EXISTS `MediaData` (
  `id` TEXT DEFAULT NULL COMMENT 'ID',
  `link` TEXT DEFAULT NULL COMMENT 'Link'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Some Disclosures have media types';

--
-- Table structure for table `metadata` generated from model 'metadata'
--

CREATE TABLE IF NOT EXISTS `metadata` (
  `country` CHAR(2) NOT NULL COMMENT 'Country code preference for the shopping ISO',
  `currency` TEXT NOT NULL COMMENT 'Currency for results in ISO format',
  `locale` TEXT NOT NULL COMMENT 'Language preferences'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OfferPriceAllowedRequests` generated from model 'OfferPriceAllowedRequests'
--

CREATE TABLE IF NOT EXISTS `OfferPriceAllowedRequests` (
  `OrderCreateWithPayment` TINYINT(1) DEFAULT NULL,
  `SeatAvailability` TINYINT(1) DEFAULT NULL,
  `ServiceList` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OfferPriceMedia` generated from model 'OfferPriceMedia'
-- OfferPriceMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OfferPriceMedia` (
  `agencyData` TEXT DEFAULT NULL,
  `allowedPaymentMethods` TEXT DEFAULT NULL,
  `allowedRequests` TEXT DEFAULT NULL,
  `benefits` TEXT DEFAULT NULL,
  `cardSurcharges` JSON DEFAULT NULL COMMENT 'A hash of surcharges indexed by the credit card type.',
  `createdAt` BIGINT DEFAULT NULL COMMENT 'Unix time of created datetime',
  `disclosures` JSON DEFAULT NULL,
  `discounts` TEXT DEFAULT NULL,
  `extraInfoMandatory` JSON DEFAULT NULL COMMENT 'A Bundle of fields which are not mandatory for all airlines, in that way, the API will check the airline config and return them.',
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `instantPayment` TEXT DEFAULT NULL COMMENT 'Instant payment field indicates agency has auto-issuing with &#39;agencyCash&#39; or &#39;agencyCard&#39; enabled. If this field is presented, payment method will be automatically selected',
  `offerExpiration` TEXT DEFAULT NULL COMMENT 'Offer expiration time',
  `offerID` TEXT DEFAULT NULL COMMENT 'The ID for this offer',
  `owner` TEXT DEFAULT NULL COMMENT 'The code of the provider that is really offering the flight',
  `passengers` JSON DEFAULT NULL COMMENT 'List of referenced travelers',
  `paymentTimeLimit` TEXT DEFAULT NULL COMMENT 'Payment time limit',
  `price` TEXT DEFAULT NULL,
  `remarks` TEXT DEFAULT NULL,
  `shoppingResponseID` TEXT DEFAULT NULL COMMENT 'The ID of the response. Usually needed on the OrderCreate request (few providers don´t need it).',
  `specialServices` JSON DEFAULT NULL COMMENT 'List of ancillaries allowed on pre-booking stage',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OfferPriceMedia media type (default view)';

--
-- Table structure for table `OfferPricePayload` generated from model 'OfferPricePayload'
--

CREATE TABLE IF NOT EXISTS `OfferPricePayload` (
  `offerID` TEXT DEFAULT NULL,
  `offerIDs` JSON DEFAULT NULL,
  `reshopOfferID` TEXT DEFAULT NULL COMMENT 'The offerID provided in OrderReshopReprice response on the rebooking process. Used on the rebooking flow and order has services or seats to get the final real price of the re-offer and the services/seats.',
  `services` JSON DEFAULT NULL COMMENT 'List of service objects (used on the rebooking flow only with some airlines)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OfferPriceRemarks` generated from model 'OfferPriceRemarks'
--

CREATE TABLE IF NOT EXISTS `OfferPriceRemarks` (
  `templates` JSON DEFAULT NULL COMMENT 'Offer Price remark templates'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OperatingCarrier` generated from model 'OperatingCarrier'
--

CREATE TABLE IF NOT EXISTS `OperatingCarrier` (
  `airlineID` CHAR(2) NOT NULL COMMENT 'Two letter airline code',
  `flightNumber` TEXT DEFAULT NULL,
  `name` TEXT NOT NULL COMMENT 'Airline Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCancelMedia` generated from model 'OrderCancelMedia'
-- OrderCancelMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderCancelMedia` (
  `orderID` TEXT DEFAULT NULL COMMENT 'The unique identifier of the order.',
  `warnings` JSON DEFAULT NULL COMMENT 'Order cancel response warnings'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderCancelMedia media type (default view)';

--
-- Table structure for table `OrderCancelPayload` generated from model 'OrderCancelPayload'
--

CREATE TABLE IF NOT EXISTS `OrderCancelPayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderChangePayload` generated from model 'OrderChangePayload'
--

CREATE TABLE IF NOT EXISTS `OrderChangePayload` (
  `action` TEXT DEFAULT NULL COMMENT 'A flag used in some cases of the OrderChange like accept the disruption of an order or split the order',
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `loyaltyProgramAccount` TEXT DEFAULT NULL COMMENT 'Loyalty program account number for corporates',
  `passengerUpdate` TEXT DEFAULT NULL,
  `passengers` JSON DEFAULT NULL COMMENT 'List of passengers',
  `payment` TEXT DEFAULT NULL,
  `reshopOfferID` TEXT DEFAULT NULL COMMENT 'Reshop offer ID from OrderReshop response',
  `services` JSON DEFAULT NULL COMMENT 'List of service objects'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCommentsMedia` generated from model 'OrderCommentsMedia'
-- OrderCommentsMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderCommentsMedia` (
  `ok` TINYINT(1) DEFAULT NULL COMMENT 'API status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderCommentsMedia media type (default view)';

--
-- Table structure for table `OrderCommentsPayload` generated from model 'OrderCommentsPayload'
-- OrderCommentsPayload is the type for OrderComments endpoint request body
--

CREATE TABLE IF NOT EXISTS `OrderCommentsPayload` (
  `comments` TEXT DEFAULT NULL,
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderCommentsPayload is the type for OrderComments endpoint request body';

--
-- Table structure for table `OrderCreateAllowedRequests` generated from model 'OrderCreateAllowedRequests'
--

CREATE TABLE IF NOT EXISTS `OrderCreateAllowedRequests` (
  `pending` TEXT DEFAULT NULL,
  `started` TEXT DEFAULT NULL,
  `ticketed` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreateAllowedRequestsPending` generated from model 'OrderCreateAllowedRequestsPending'
--

CREATE TABLE IF NOT EXISTS `OrderCreateAllowedRequestsPending` (
  `OrderCancel` TINYINT(1) DEFAULT NULL,
  `OrderReprice` TINYINT(1) DEFAULT NULL,
  `OrderSplit` TINYINT(1) DEFAULT NULL,
  `SeatAvailability` TINYINT(1) DEFAULT NULL,
  `ServiceList` TINYINT(1) DEFAULT NULL,
  `TicketIssue` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreateAllowedRequestsStarted` generated from model 'OrderCreateAllowedRequestsStarted'
--

CREATE TABLE IF NOT EXISTS `OrderCreateAllowedRequestsStarted` (
  `OrderCancel` TINYINT(1) DEFAULT NULL,
  `OrderReshop` TINYINT(1) DEFAULT NULL,
  `OrderReshopRefund` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreateAllowedRequestsTicketed` generated from model 'OrderCreateAllowedRequestsTicketed'
--

CREATE TABLE IF NOT EXISTS `OrderCreateAllowedRequestsTicketed` (
  `OrderCancel` TINYINT(1) DEFAULT NULL,
  `OrderCancelToVoucher` TINYINT(1) DEFAULT NULL,
  `OrderReshop` TINYINT(1) DEFAULT NULL,
  `OrderReshopRefund` TINYINT(1) DEFAULT NULL,
  `OrderReshopRouteChange` TINYINT(1) DEFAULT NULL,
  `OrderSplit` TINYINT(1) DEFAULT NULL,
  `OrderVoid` TINYINT(1) DEFAULT NULL,
  `SeatAvailability` TINYINT(1) DEFAULT NULL,
  `ServiceList` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreateMedia` generated from model 'OrderCreateMedia'
-- OrderCreateMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderCreateMedia` (
  `agency` TEXT DEFAULT NULL COMMENT 'Agency name',
  `agencyData` TEXT DEFAULT NULL,
  `allowedPaymentMethods` TEXT DEFAULT NULL,
  `allowedRequests` TEXT DEFAULT NULL,
  `approvalStatus` TEXT DEFAULT NULL COMMENT 'Approval status',
  `approved` TINYINT(1) DEFAULT NULL COMMENT 'Approved status',
  `benefits` TEXT DEFAULT NULL,
  `bookingDate` TEXT DEFAULT NULL,
  `bookingReference` TEXT DEFAULT NULL,
  `bookingType` TEXT DEFAULT NULL,
  `carbonOffset` JSON DEFAULT NULL COMMENT 'Order flights carbon offset',
  `comments` TEXT DEFAULT NULL,
  `corporateID` TEXT DEFAULT NULL COMMENT 'CorporateID for corporate orders',
  `createdAt` TEXT DEFAULT NULL,
  `disclosures` JSON DEFAULT NULL,
  `disruptionMessage` TEXT DEFAULT NULL COMMENT 'Disruption notification message',
  `disruptionStatus` TEXT DEFAULT NULL COMMENT 'Disruption status (FlightTimeChange/FlightNumberChange/FlightCancellation)',
  `externalOrderID` TEXT DEFAULT NULL COMMENT 'External order ID',
  `files` JSON DEFAULT NULL COMMENT 'Files information',
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `formOfPayment` TEXT DEFAULT NULL,
  `history` JSON DEFAULT NULL,
  `id` TEXT DEFAULT NULL COMMENT 'AirGateway order ID',
  `logs` JSON DEFAULT NULL,
  `metas` JSON DEFAULT NULL COMMENT 'Order metadata',
  `orderID` TEXT DEFAULT NULL COMMENT 'External order ID (deprecated)',
  `passengers` JSON DEFAULT NULL,
  `payment` TEXT DEFAULT NULL,
  `paymentTimeLimit` TEXT DEFAULT NULL COMMENT 'Payment time limit',
  `penalties` JSON DEFAULT NULL COMMENT 'Type and the application (with the value for each application) for every penalties.',
  `pnr` TEXT DEFAULT NULL COMMENT 'The unique identifier of the order used on the old system and respected by some providers to maintain compatibility.',
  `price` TEXT DEFAULT NULL,
  `priceGuaranteeTimeLimit` TEXT DEFAULT NULL COMMENT 'Time limit, for an on hold order, during which airline guarantee the price doesn&#39;t vary',
  `readyToTicketIssue` TINYINT(1) DEFAULT NULL COMMENT 'Ready To Ticket Issue flag',
  `refundType` TEXT DEFAULT NULL COMMENT 'Refunds type can be: &#39;refund&#39;, &#39;voucher&#39;',
  `refundedAmount` TEXT DEFAULT NULL,
  `remarks` TEXT DEFAULT NULL,
  `seats` JSON DEFAULT NULL COMMENT 'List of seats',
  `sendForApprovalAllowed` TINYINT(1) DEFAULT NULL COMMENT 'Send for approval allowed',
  `services` JSON DEFAULT NULL COMMENT 'List of services',
  `status` TEXT DEFAULT NULL COMMENT 'Order status (Pending/Ticketed/Cancelled/Completed/Started/Expired)',
  `ticketIssue` JSON DEFAULT NULL COMMENT 'Ticket Issue object',
  `tickets` JSON DEFAULT NULL COMMENT 'Tickets information',
  `updatedAt` TEXT DEFAULT NULL,
  `viewMode` TEXT DEFAULT NULL COMMENT 'View mode for order',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderCreateMedia media type (default view)';

--
-- Table structure for table `OrderCreatePayload` generated from model 'OrderCreatePayload'
--

CREATE TABLE IF NOT EXISTS `OrderCreatePayload` (
  `corporateID` TEXT DEFAULT NULL COMMENT 'CorporateID for corporate orders',
  `loyaltyProgramAccount` TEXT DEFAULT NULL COMMENT 'Loyalty program account number for corporates',
  `metas` JSON DEFAULT NULL COMMENT 'Order metadata',
  `passengers` JSON NOT NULL,
  `payment` TEXT DEFAULT NULL,
  `remarks` TEXT DEFAULT NULL,
  `shoppingResponseID` TEXT NOT NULL COMMENT 'The responseID provided in OfferPrice response'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreatePayment` generated from model 'OrderCreatePayment'
--

CREATE TABLE IF NOT EXISTS `OrderCreatePayment` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Payment amount (1000 or 1000.50)',
  `cardInformation` TEXT DEFAULT NULL,
  `currency` TEXT DEFAULT NULL COMMENT 'Payment currency',
  `status` TEXT DEFAULT NULL COMMENT 'Payment status',
  `type` TEXT DEFAULT NULL COMMENT 'Payment type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderCreateRemarks` generated from model 'OrderCreateRemarks'
--

CREATE TABLE IF NOT EXISTS `OrderCreateRemarks` (
  `data` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL COMMENT 'generated remarks text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderFile` generated from model 'OrderFile'
--

CREATE TABLE IF NOT EXISTS `OrderFile` (
  `id` TEXT DEFAULT NULL COMMENT 'File ID',
  `type` TEXT DEFAULT NULL COMMENT 'File Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderHistoryItem` generated from model 'OrderHistoryItem'
--

CREATE TABLE IF NOT EXISTS `OrderHistoryItem` (
  `agency` TEXT DEFAULT NULL COMMENT 'Agency',
  `agent` TEXT DEFAULT NULL COMMENT 'Agent',
  `details` JSON DEFAULT NULL COMMENT 'Generic details object',
  `eventID` TEXT DEFAULT NULL COMMENT 'Event ID',
  `eventTime` TEXT DEFAULT NULL COMMENT 'Event time',
  `id` TEXT DEFAULT NULL COMMENT 'AirGateway order ID',
  `price` TEXT DEFAULT NULL,
  `tickets` JSON DEFAULT NULL COMMENT 'Newly added tickets',
  `transactionType` TEXT DEFAULT NULL COMMENT 'Transaction type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderHistoryMedia` generated from model 'OrderHistoryMedia'
-- OrderHistoryMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderHistoryMedia` (
  `count` BIGINT NOT NULL,
  `history` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderHistoryMedia media type (default view)';

--
-- Table structure for table `OrderListCounters` generated from model 'OrderListCounters'
--

CREATE TABLE IF NOT EXISTS `OrderListCounters` (
  `active` BIGINT DEFAULT NULL,
  `approved` BIGINT DEFAULT NULL,
  `cancelled` BIGINT DEFAULT NULL,
  `disrupted` BIGINT DEFAULT NULL,
  `pending` BIGINT DEFAULT NULL,
  `refused` BIGINT DEFAULT NULL,
  `ticketed` BIGINT DEFAULT NULL,
  `underApproval` BIGINT DEFAULT NULL,
  `unused` BIGINT DEFAULT NULL,
  `voided` BIGINT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderListItem` generated from model 'OrderListItem'
--

CREATE TABLE IF NOT EXISTS `OrderListItem` (
  `agency` TEXT DEFAULT NULL,
  `approveStatus` TEXT DEFAULT NULL COMMENT 'Order approve status (traveler_pending/traveler_rejected/manager_pending/manager_rejected/customer_ok)',
  `bookingDate` TEXT DEFAULT NULL,
  `bookingType` TEXT DEFAULT NULL,
  `corporateID` TEXT DEFAULT NULL COMMENT 'CorporateID for corporate orders',
  `disruptionStatus` TEXT DEFAULT NULL COMMENT 'Disruption status (ScheduledTimeChange/FlightCancellation)',
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `id` TEXT DEFAULT NULL COMMENT 'AirGateway order ID',
  `orderID` TEXT DEFAULT NULL,
  `owner` TEXT DEFAULT NULL,
  `passengers` JSON DEFAULT NULL,
  `paymentTimeLimit` TEXT DEFAULT NULL COMMENT 'Payment time limit',
  `pnr` TEXT DEFAULT NULL COMMENT 'PNR',
  `provider` TEXT DEFAULT NULL,
  `status` TEXT DEFAULT NULL COMMENT 'Order status (Pending/Confirmed/Canceled/Voided/Refunded)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderListMedia` generated from model 'OrderListMedia'
-- OrderListMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderListMedia` (
  `agencies` JSON DEFAULT NULL,
  `count` BIGINT DEFAULT NULL,
  `counters` TEXT DEFAULT NULL,
  `orders` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderListMedia media type (default view)';

--
-- Table structure for table `OrderLog` generated from model 'OrderLog'
-- Order warning
--

CREATE TABLE IF NOT EXISTS `OrderLog` (
  `severity` TEXT DEFAULT NULL COMMENT 'Severity level',
  `text` TEXT DEFAULT NULL COMMENT 'Warning text',
  `timestamp` TEXT DEFAULT NULL COMMENT 'Warning timestamp',
  `type` TEXT DEFAULT NULL COMMENT 'Type of request which warning came from (FP, OC)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Order warning';

--
-- Table structure for table `OrderMetasMedia` generated from model 'OrderMetasMedia'
-- OrderMetasMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderMetasMedia` (
  `ok` TINYINT(1) DEFAULT NULL COMMENT 'Order Metas save status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderMetasMedia media type (default view)';

--
-- Table structure for table `OrderMetasPayload` generated from model 'OrderMetasPayload'
-- OrderMetasPayload is the type for OrderMetas endpoint request body
--

CREATE TABLE IF NOT EXISTS `OrderMetasPayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `metas` JSON DEFAULT NULL COMMENT 'Metas object'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderMetasPayload is the type for OrderMetas endpoint request body';

--
-- Table structure for table `OrderRemarkData` generated from model 'OrderRemarkData'
-- Order remarks data
--

CREATE TABLE IF NOT EXISTS `OrderRemarkData` (
  `template` TEXT DEFAULT NULL COMMENT 'Selected template',
  `variables` JSON DEFAULT NULL COMMENT 'template variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Order remarks data';

--
-- Table structure for table `OrderRemarkTemplate` generated from model 'OrderRemarkTemplate'
-- Order remarks template
--

CREATE TABLE IF NOT EXISTS `OrderRemarkTemplate` (
  `data` TEXT DEFAULT NULL COMMENT 'multiline template string',
  `name` TEXT DEFAULT NULL COMMENT 'Name',
  `neededOnCreation` TINYINT(1) DEFAULT NULL COMMENT 'Needed on creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Order remarks template';

--
-- Table structure for table `OrderRemarks` generated from model 'OrderRemarks'
-- Order remarks object. Created plain text is used in air files
--

CREATE TABLE IF NOT EXISTS `OrderRemarks` (
  `data` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL COMMENT 'generated remarks text',
  `templates` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Order remarks object. Created plain text is used in air files';

--
-- Table structure for table `OrderRemarksMedia` generated from model 'OrderRemarksMedia'
-- OrderRemarksMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderRemarksMedia` (
  `ok` TINYINT(1) DEFAULT NULL COMMENT 'API status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderRemarksMedia media type (default view)';

--
-- Table structure for table `OrderRemarksPayload` generated from model 'OrderRemarksPayload'
-- OrderRemarksPayload is the type for OrderRemarks endpoint request body
--

CREATE TABLE IF NOT EXISTS `OrderRemarksPayload` (
  `data` TEXT DEFAULT NULL,
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `result` TEXT DEFAULT NULL COMMENT 'generated remarks text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderRemarksPayload is the type for OrderRemarks endpoint request body';

--
-- Table structure for table `OrderReshopMedia` generated from model 'OrderReshopMedia'
-- OrderReshopMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderReshopMedia` (
  `offers` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderReshopMedia media type (default view)';

--
-- Table structure for table `OrderReshopMediaType` generated from model 'OrderReshopMediaType'
--

CREATE TABLE IF NOT EXISTS `OrderReshopMediaType` (
  `benefits` TEXT DEFAULT NULL,
  `disclosures` JSON DEFAULT NULL COMMENT 'List of disclosures corresponding to offer.',
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `offerID` TEXT DEFAULT NULL COMMENT 'Offer identifier',
  `offerType` ENUM('oneWay', 'roundTrip', 'outbound', 'return') DEFAULT NULL COMMENT 'Offer type',
  `owner` CHAR(2) DEFAULT NULL COMMENT '2 letter abbreviation of airline',
  `price` TEXT DEFAULT NULL,
  `priceBreakdown` TEXT DEFAULT NULL,
  `priceChange` TINYINT(1) DEFAULT NULL COMMENT 'Indicates if the price has change from the original in the hold order.',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderReshopPayload` generated from model 'OrderReshopPayload'
--

CREATE TABLE IF NOT EXISTS `OrderReshopPayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `originDestinations` JSON NOT NULL COMMENT 'Origin/Destination pair in a shopping search scenario',
  `preferences` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderReshopRefundMedia` generated from model 'OrderReshopRefundMedia'
-- OrderReshopRefundMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderReshopRefundMedia` (
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `originalOrder` TEXT DEFAULT NULL,
  `penalty` TEXT DEFAULT NULL,
  `refund` TEXT DEFAULT NULL,
  `seats` JSON DEFAULT NULL COMMENT 'List of seats',
  `services` JSON DEFAULT NULL COMMENT 'List of services',
  `tickets` JSON DEFAULT NULL COMMENT 'Tickets information',
  `voidPermited` TINYINT(1) DEFAULT NULL COMMENT 'Some airlines returns the voiding option in the OrderReshop Refund. In this way, this field indicates if the OrderCancel will be executed.',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderReshopRefundMedia media type (default view)';

--
-- Table structure for table `OrderReshopRefundPayload` generated from model 'OrderReshopRefundPayload'
--

CREATE TABLE IF NOT EXISTS `OrderReshopRefundPayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `type` TEXT COMMENT 'Refund type, can be: \&quot;refund\&quot;, \&quot;voucher\&quot;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderReshopRepriceMedia` generated from model 'OrderReshopRepriceMedia'
-- OrderReshopRepriceMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderReshopRepriceMedia` (
  `benefits` TEXT DEFAULT NULL,
  `cardSurcharges` JSON DEFAULT NULL COMMENT 'A hash of surcharges indexed by the credit card type.',
  `disclosures` JSON DEFAULT NULL,
  `flights` JSON DEFAULT NULL COMMENT 'Flight Segment information. Including departure, arrival and airline information.',
  `offerID` TEXT DEFAULT NULL COMMENT 'The ID for this offer',
  `owner` TEXT DEFAULT NULL COMMENT 'The code of the provider that is really offering the flight',
  `price` TEXT DEFAULT NULL,
  `seatsToRebook` JSON DEFAULT NULL COMMENT 'List of services that indicate for which segment the ancillaries must be re-booked',
  `servicesToRebook` JSON DEFAULT NULL COMMENT 'List of services that indicate for which segment the ancillaries must be re-booked',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderReshopRepriceMedia media type (default view)';

--
-- Table structure for table `OrderReshopRepricePayload` generated from model 'OrderReshopRepricePayload'
--

CREATE TABLE IF NOT EXISTS `OrderReshopRepricePayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `offerID` TEXT DEFAULT NULL COMMENT 'OrderReshop offer ID for Reprice request'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OrderRetrievePayload` generated from model 'OrderRetrievePayload'
-- OrderRetrievePayload is the type for OrderRetrieve endpoint request body
--

CREATE TABLE IF NOT EXISTS `OrderRetrievePayload` (
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderRetrievePayload is the type for OrderRetrieve endpoint request body';

--
-- Table structure for table `OrderReviewMedia` generated from model 'OrderReviewMedia'
-- OrderReviewMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `OrderReviewMedia` (
  `ok` TINYINT(1) DEFAULT NULL COMMENT 'result'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderReviewMedia media type (default view)';

--
-- Table structure for table `OrderReviewPayload` generated from model 'OrderReviewPayload'
-- OrderReviewPayload is the type for OrderReview endpoint request body
--

CREATE TABLE IF NOT EXISTS `OrderReviewPayload` (
  `action` TEXT NOT NULL COMMENT 'Review action',
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `reason` TEXT DEFAULT NULL COMMENT 'Reason'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OrderReviewPayload is the type for OrderReview endpoint request body';

--
-- Table structure for table `OrderUpdatePayload` generated from model 'OrderUpdatePayload'
--

CREATE TABLE IF NOT EXISTS `OrderUpdatePayload` (
  `action` ENUM('add_fqtv', 'name_correction', 'add_contact_details') DEFAULT NULL COMMENT 'A flag used to indicate qhet type of update is being made',
  `id` TEXT NOT NULL COMMENT 'AirGateway order ID',
  `passengersUpdate` JSON NOT NULL COMMENT 'Passengers details to update for'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `OriginDestinationASRQ` generated from model 'OriginDestinationASRQ'
-- Origin/Destination pair in a shopping search scenario
--

CREATE TABLE IF NOT EXISTS `OriginDestinationASRQ` (
  `arrival` TEXT NOT NULL,
  `departure` TEXT NOT NULL,
  `type` ENUM( 'keep') DEFAULT NULL COMMENT 'To be used in the OrederReshop, on the Rebooking process. If &#39;keep&#39; is set the OD will be retained.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Origin/Destination pair in a shopping search scenario';

--
-- Table structure for table `OriginDestinationRS_Inner` generated from model 'OriginDestinationRSUnderscoreInner'
--

CREATE TABLE IF NOT EXISTS `OriginDestinationRS_Inner` (
  `arrival` TEXT DEFAULT NULL,
  `departure` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Passenger` generated from model 'Passenger'
--

CREATE TABLE IF NOT EXISTS `Passenger` (
  `data` TEXT DEFAULT NULL,
  `document` TEXT DEFAULT NULL,
  `fareBasisCodes` JSON DEFAULT NULL COMMENT 'FareBasisCodes',
  `identity4Discount` JSON DEFAULT NULL,
  `infantReference` TEXT DEFAULT NULL COMMENT 'Infant reference (if any)',
  `passengerType` TEXT DEFAULT NULL,
  `seats` JSON DEFAULT NULL,
  `services` JSON DEFAULT NULL,
  `specialServices` JSON DEFAULT NULL,
  `travelerReference` TEXT NOT NULL COMMENT 'Traveler reference from ServiceList response'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PassengerData` generated from model 'PassengerData'
--

CREATE TABLE IF NOT EXISTS `PassengerData` (
  `address` TEXT DEFAULT NULL,
  `birthdate` TEXT DEFAULT NULL COMMENT 'Birthdate using format YYYY-MM-DD.',
  `email` TEXT DEFAULT NULL,
  `fqtvInfo` TEXT DEFAULT NULL,
  `gender` ENUM('Male', 'Female', '') DEFAULT NULL COMMENT 'Valid values: ',
  `name` TEXT NOT NULL,
  `phone` TEXT DEFAULT NULL COMMENT 'Phone number',
  `surname` TEXT DEFAULT NULL,
  `title` ENUM('MR', 'MS', 'MRS', 'MSTR') DEFAULT NULL COMMENT 'Valid Values: '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Payment` generated from model 'Payment'
--

CREATE TABLE IF NOT EXISTS `Payment` (
  `cardCode` TEXT DEFAULT NULL COMMENT 'VI (Visa), CA (MasterCard), JCB (JCB), AX (American Express), DC (Diners Club), CB (Carte blanche), TP (UATP/AIRPLUS), GK (Lufthansa GK Card), AU (Carte Aurore), not all credit cards are supported by all airlines, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `cardHolderEmail` TEXT DEFAULT NULL,
  `cardHolderName` TEXT DEFAULT NULL,
  `cardHolderSurname` TEXT DEFAULT NULL,
  `cardHolderTitle` TEXT DEFAULT NULL COMMENT 'Valid Values: ',
  `cardNumber` TEXT DEFAULT NULL COMMENT 'CC Number, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `cardType` TEXT DEFAULT NULL COMMENT 'CC (Credit)/DB (Debit), required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `cashEmail` TEXT DEFAULT NULL,
  `cashName` TEXT DEFAULT NULL,
  `cashSurname` TEXT DEFAULT NULL,
  `cashTitle` TEXT DEFAULT NULL COMMENT 'Valid Values: ',
  `cityName` TEXT DEFAULT NULL COMMENT 'Card Holder Billing city, required if method &#x3D;&#x3D; \&quot;card\&quot; ',
  `countryCode` TEXT DEFAULT NULL COMMENT 'Card Holder Billing country code , required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `expiration` TEXT DEFAULT NULL,
  `method` TEXT NOT NULL COMMENT 'Possible values: \&quot;card\&quot;, \&quot;agencyCard\&quot;, \&quot;agencyCash\&quot;. Set this to \&quot;card\&quot; if you pay with card. Contact us to setup cash on file and card on file',
  `passengerType` TEXT DEFAULT NULL,
  `phone` TEXT DEFAULT NULL COMMENT 'Phone number',
  `postalCode` TEXT DEFAULT NULL COMMENT 'Card Holder Billing postal code, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `remark` TEXT DEFAULT NULL COMMENT 'A code used for special types of paying. In case your agency is allowed to pay with this special remark we will send you more information.',
  `seriesCode` TEXT DEFAULT NULL COMMENT 'CVV/CVC code, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `stateProv` TEXT DEFAULT NULL COMMENT 'The code of the state or province where the bank office issued the card, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `street1` TEXT DEFAULT NULL COMMENT 'Card Holder Billing address, required if method &#x3D;&#x3D; \&quot;card\&quot;',
  `street2` TEXT DEFAULT NULL,
  `voucher` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PaymentVoucher` generated from model 'PaymentVoucher'
--

CREATE TABLE IF NOT EXISTS `PaymentVoucher` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The amount paid with voucher (12 or 12.09)',
  `currency` TEXT DEFAULT NULL COMMENT 'Voucher currency',
  `email` TEXT DEFAULT NULL COMMENT 'Voucher owner&#39;s email',
  `number` TEXT DEFAULT NULL COMMENT 'Voucher number',
  `surname` TEXT DEFAULT NULL COMMENT 'Voucher owner&#39;s surname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Penalty` generated from model 'Penalty'
--

CREATE TABLE IF NOT EXISTS `Penalty` (
  `amounts` JSON DEFAULT NULL COMMENT 'Value and the application of this value for the penalty.',
  `description` TEXT DEFAULT NULL COMMENT 'A more extensive and explicit explanation of the penalty',
  `type` TEXT DEFAULT NULL COMMENT 'The code of the penalty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PenaltyAmount` generated from model 'PenaltyAmount'
--

CREATE TABLE IF NOT EXISTS `PenaltyAmount` (
  `amount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The homogenised value of the penalty for the application case (35 or 30.65)',
  `currency` TEXT DEFAULT NULL COMMENT 'The consumer currency of this value',
  `providerAmount` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The provider value of the penalty for the application case (30 or 30.70)',
  `providerCurrency` TEXT DEFAULT NULL COMMENT 'The provider currency of this value',
  `remark` TEXT DEFAULT NULL COMMENT 'Penalty remark.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Preferences` generated from model 'Preferences'
--

CREATE TABLE IF NOT EXISTS `Preferences` (
  `cabin` JSON DEFAULT NULL COMMENT 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All',
  `discounts` TEXT DEFAULT NULL,
  `fare` TEXT DEFAULT NULL,
  `fareList` JSON DEFAULT NULL COMMENT 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare',
  `nonStop` TINYINT(1) DEFAULT NULL COMMENT 'NonStop preferences for search. If this is present, it will search flights without stops.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PreferencesAS` generated from model 'PreferencesAS'
--

CREATE TABLE IF NOT EXISTS `PreferencesAS` (
  `cabin` JSON DEFAULT NULL COMMENT 'Cabin preference from PADIS 9873.&lt;br/&gt;  Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#cabin-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;  1-First Class,&lt;br/&gt;  2-Second Class (Business),&lt;br/&gt;  3-Third class, economy,&lt;br/&gt;  4-Economy/coach premium,&lt;br/&gt;  5-Economy/coach,&lt;br/&gt;  6-Economy/coach discounted,&lt;br/&gt;  7-All',
  `discounts` TEXT DEFAULT NULL,
  `fare` TEXT DEFAULT NULL,
  `fareList` JSON DEFAULT NULL COMMENT 'List of fare preferences from PADIS 9910.&lt;/br&gt;   Please take note that not all airlines accept all attributes, check our &lt;a href&#x3D;https://github.com/AirGateway/NDC-Gateway-Developer-Guide#fare-preferences&gt;developer guide&lt;/a&gt;.&lt;br/&gt;   70J-Published fares,&lt;br/&gt;   749-Negotiated fares,&lt;br/&gt;   754-Flexible Fare,&lt;br/&gt;   758-Private Fare,&lt;br/&gt;   759-Restricted Fare',
  `maxDuration` JSON DEFAULT NULL COMMENT 'Maximum duration of the flight per O&amp;D in ISO-8601 format',
  `maxDurationRatio` JSON DEFAULT NULL COMMENT 'Maximum duration ratio of the flight per O&amp;D in float number factor',
  `maxStops` JSON DEFAULT NULL COMMENT 'Maximum stops number per O&amp;D',
  `nonStop` TINYINT(1) DEFAULT NULL COMMENT 'NonStop preferences for search. If this is present, it will search flights without stops.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Price` generated from model 'Price'
--

CREATE TABLE IF NOT EXISTS `Price` (
  `consumer` TEXT DEFAULT NULL,
  `provider` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PriceBreakdown` generated from model 'PriceBreakdown'
-- Airline Offer price breakdown of combined round trip offers
--

CREATE TABLE IF NOT EXISTS `PriceBreakdown` (
  `inbound` TEXT DEFAULT NULL,
  `outbound` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Airline Offer price breakdown of combined round trip offers';

--
-- Table structure for table `PriceDetail` generated from model 'PriceDetail'
--

CREATE TABLE IF NOT EXISTS `PriceDetail` (
  `base` DECIMAL(20, 9) DEFAULT NULL COMMENT '670 or 670.41',
  `breakdown` JSON DEFAULT NULL COMMENT 'The price for each flight offer. There is an offer for each passenger (ADT, CHD, INF).',
  `currency` TEXT DEFAULT NULL,
  `surcharge` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The surcharges for the whole flight offer (6 or 6.05).',
  `tax` TEXT DEFAULT NULL,
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT '720 or 720.62'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PriceDetailBreakdown` generated from model 'PriceDetailBreakdown'
--

CREATE TABLE IF NOT EXISTS `PriceDetailBreakdown` (
  `base` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The base price, without any taxes (300 or 300.32)',
  `offerItemID` TEXT DEFAULT NULL COMMENT 'The ID for each offer',
  `passengerRefs` TEXT DEFAULT NULL COMMENT 'Passenger references',
  `passengerType` TEXT DEFAULT NULL COMMENT 'The passenger type',
  `surcharge` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The total sum of all surcharges (6 or 6.05)',
  `tax` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PriceDetailTax` generated from model 'PriceDetailTax'
--

CREATE TABLE IF NOT EXISTS `PriceDetailTax` (
  `breakdown` JSON DEFAULT NULL COMMENT 'The value price, currency, code and description for each tax for each AirlineOffer',
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT '120 or 120.62'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PriceDetailTaxBreakdown` generated from model 'PriceDetailTaxBreakdown'
--

CREATE TABLE IF NOT EXISTS `PriceDetailTaxBreakdown` (
  `code` TEXT DEFAULT NULL COMMENT 'The code used for each tax',
  `currency` TEXT DEFAULT NULL COMMENT 'The currency code used for each tax',
  `description` TEXT DEFAULT NULL COMMENT 'The description of each tax',
  `total` DECIMAL(20, 9) DEFAULT NULL COMMENT 'The price (12 or 12.09)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ProviderListMedia` generated from model 'ProviderListMedia'
-- ProviderListMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `ProviderListMedia` (
  `providers` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ProviderListMedia media type (default view)';

--
-- Table structure for table `Rows` generated from model 'Rows'
--

CREATE TABLE IF NOT EXISTS `Rows` (
  `first` BIGINT DEFAULT NULL COMMENT 'First row',
  `last` BIGINT DEFAULT NULL COMMENT 'Last row'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SSR` generated from model 'SSR'
--

CREATE TABLE IF NOT EXISTS `SSR` (
  `bookingInstructions` TEXT DEFAULT NULL,
  `code` TEXT DEFAULT NULL COMMENT 'Special service request code',
  `desc` TEXT DEFAULT NULL COMMENT 'Special service request description',
  `passengerType` TEXT DEFAULT NULL COMMENT 'Passenger type SSR applies to',
  `text_required` TINYINT(1) DEFAULT NULL COMMENT 'Special service request text required flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Seat` generated from model 'Seat'
--

CREATE TABLE IF NOT EXISTS `Seat` (
  `characteristics` JSON DEFAULT NULL COMMENT 'A list of characteristics about the seat',
  `description` TEXT DEFAULT NULL COMMENT 'Seat description',
  `listKey` TEXT DEFAULT NULL COMMENT 'This is an attribute for each seat.',
  `location` TEXT DEFAULT NULL,
  `passengerRefs` TEXT DEFAULT NULL COMMENT 'Reference to passenger which can select the seat. Sometimes the same seat has different price depending on the type of passenger, some other times two passengers of the same type are not allowed to get the same seats, for example when two adults travel with an infant, one of those adults will have a few specific seats.',
  `passengerType` TEXT DEFAULT NULL COMMENT 'Type of passenger which can select the seat (sometimes the same seat has different price depending on the type of passenger)',
  `price` TEXT DEFAULT NULL,
  `refs` TEXT DEFAULT NULL COMMENT 'This is an attribute for each seat.',
  `remarks` JSON DEFAULT NULL COMMENT 'Some seats have restriction about the age, blindness, deafness, state of pregnancy, etc...',
  `removable` TINYINT(1) DEFAULT NULL COMMENT 'Points when a seats is removable or not. Used only in OrderViewRS',
  `segment` TEXT DEFAULT NULL COMMENT 'Flight Segment Reference Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SeatAvailabilityMedia` generated from model 'SeatAvailabilityMedia'
-- SeatAvailabilityMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `SeatAvailabilityMedia` (
  `disclosures` JSON DEFAULT NULL,
  `exits` JSON DEFAULT NULL COMMENT 'Exit rows position',
  `owner` TEXT DEFAULT NULL COMMENT 'The owner of the segment flight that the SeatAvailability is requesting',
  `seatDisplay` JSON DEFAULT NULL COMMENT 'Info about seat display (rows and columns)',
  `seatList` JSON DEFAULT NULL COMMENT 'Info about seats location, description, characteristics, price...',
  `segments` JSON DEFAULT NULL COMMENT 'Info about flight segments'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SeatAvailabilityMedia media type (default view)';

--
-- Table structure for table `SeatAvailabilityPayload` generated from model 'SeatAvailabilityPayload'
-- SeatAvailability data
--

CREATE TABLE IF NOT EXISTS `SeatAvailabilityPayload` (
  `id` TEXT DEFAULT NULL COMMENT 'AirGateway order ID',
  `passengers` JSON DEFAULT NULL,
  `reshopOfferID` TEXT DEFAULT NULL COMMENT 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request SeatAvailable is called on the rebooking stage because order has seats.',
  `segmentID` TEXT DEFAULT NULL COMMENT 'Segment ID. Use when need to fetch a certain segment of flight',
  `shoppingResponseID` TEXT DEFAULT NULL COMMENT 'The responseID provided in OfferPrice response. Use when request SeatAvailability on Pre-Booking stage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SeatAvailability data';

--
-- Table structure for table `SeatDisplay` generated from model 'SeatDisplay'
--

CREATE TABLE IF NOT EXISTS `SeatDisplay` (
  `columns` TEXT DEFAULT NULL COMMENT 'All available seat columns',
  `rows` TEXT DEFAULT NULL,
  `segment` TEXT DEFAULT NULL COMMENT 'Flight Segment Reference Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SeatLocation` generated from model 'SeatLocation'
--

CREATE TABLE IF NOT EXISTS `SeatLocation` (
  `column` TEXT DEFAULT NULL COMMENT 'Column of the seat',
  `row` BIGINT DEFAULT NULL COMMENT 'Row of the seat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Service` generated from model 'Service'
-- Service List
--

CREATE TABLE IF NOT EXISTS `Service` (
  `bookingInstructions` TEXT DEFAULT NULL,
  `descriptions` JSON DEFAULT NULL COMMENT 'List of service descriptions',
  `maximumQuantity` BIGINT DEFAULT NULL COMMENT 'Maximum quantity of services',
  `minimumQuantity` BIGINT DEFAULT NULL COMMENT 'Minimum quantity of services',
  `name` TEXT DEFAULT NULL COMMENT 'Service name',
  `objectKey` TEXT DEFAULT NULL COMMENT 'Service object key',
  `price` TEXT DEFAULT NULL,
  `properties` JSON DEFAULT NULL COMMENT 'Properties',
  `ref` TEXT DEFAULT NULL COMMENT 'Service reference',
  `removable` TINYINT(1) DEFAULT NULL COMMENT 'Points when a service is removable or not. Used only in OrderViewRS',
  `segmentReferences` TEXT DEFAULT NULL COMMENT 'Segment references',
  `serviceID` TEXT DEFAULT NULL COMMENT 'Service ID',
  `travelerReferences` TEXT DEFAULT NULL COMMENT 'Traveler references'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Service List';

--
-- Table structure for table `ServiceListMedia` generated from model 'ServiceListMedia'
-- ServiceListMedia media type (default view)
--

CREATE TABLE IF NOT EXISTS `ServiceListMedia` (
  `disclosures` JSON DEFAULT NULL COMMENT 'List of disclosures',
  `passengers` JSON DEFAULT NULL COMMENT 'List of referenced travelers',
  `segments` JSON DEFAULT NULL,
  `services` JSON DEFAULT NULL COMMENT 'List of services',
  `warnings` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ServiceListMedia media type (default view)';

--
-- Table structure for table `ServiceListPayload` generated from model 'ServiceListPayload'
-- ServiceListPayload is the type for ServiceList endpoint request body
--

CREATE TABLE IF NOT EXISTS `ServiceListPayload` (
  `id` TEXT DEFAULT NULL COMMENT 'AirGateway order ID',
  `passengers` JSON DEFAULT NULL,
  `reshopOfferID` TEXT DEFAULT NULL COMMENT 'The offerID provided in OrderReshopReprice response on the rebooking process. Used when request ServiceList is called on the rebooking stage and order has services.',
  `shoppingResponseID` TEXT DEFAULT NULL COMMENT 'The responseID provided in OfferPrice response. Use when request ServiceList on Pre-Booking stage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ServiceListPayload is the type for ServiceList endpoint request body';

--
-- Table structure for table `ServiceRequest` generated from model 'ServiceRequest'
-- Service Request
--

CREATE TABLE IF NOT EXISTS `ServiceRequest` (
  `action` ENUM('Create', 'Cancel') NOT NULL COMMENT 'Action (Create/Cancel)',
  `owner` TEXT DEFAULT NULL COMMENT 'Service owner',
  `quantity` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Baggage type (deprecated)',
  `seatLocation` TEXT DEFAULT NULL,
  `segmentReference` TEXT DEFAULT NULL COMMENT 'Segment reference',
  `serviceID` TEXT DEFAULT NULL COMMENT 'Type of service (ID)',
  `text` TEXT DEFAULT NULL COMMENT 'Used in some services to indicate the quantity of some extra kilos in the baggage, the type of pet, etc...',
  `travelerReference` TEXT DEFAULT NULL COMMENT 'Traveler reference',
  `type` ENUM('seat', 'service') NOT NULL COMMENT 'Type of service object. Required for service object validation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Service Request';

--
-- Table structure for table `StopLocation` generated from model 'StopLocation'
-- Stop location details
--

CREATE TABLE IF NOT EXISTS `StopLocation` (
  `airportCode` TEXT DEFAULT NULL COMMENT 'Airport code',
  `airportName` TEXT DEFAULT NULL COMMENT 'Airport name',
  `arrivalDate` TEXT DEFAULT NULL COMMENT 'Arrival date',
  `arrivalTime` TEXT DEFAULT NULL COMMENT 'Arrival time',
  `departureDate` TEXT DEFAULT NULL COMMENT 'Departure date',
  `departureTime` TEXT DEFAULT NULL COMMENT 'Departure time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stop location details';

--
-- Table structure for table `TicketCoupon` generated from model 'TicketCoupon'
--

CREATE TABLE IF NOT EXISTS `TicketCoupon` (
  `dateOfService` TEXT DEFAULT NULL COMMENT 'Coupon date of service',
  `fareBasisCode` TEXT DEFAULT NULL COMMENT 'Coupon fareBasisCode',
  `media` TEXT DEFAULT NULL COMMENT 'Coupon media',
  `number` TEXT DEFAULT NULL COMMENT 'Coupon number',
  `price` TEXT DEFAULT NULL,
  `reference` TEXT DEFAULT NULL COMMENT 'Coupon ref',
  `remark` TEXT DEFAULT NULL COMMENT 'Coupon remark',
  `segment` TEXT DEFAULT NULL,
  `serviceReferences` TEXT DEFAULT NULL COMMENT 'Coupon service references',
  `status` TEXT DEFAULT NULL COMMENT 'Coupon status code',
  `statusDefinition` TEXT DEFAULT NULL COMMENT 'Coupon status description',
  `valid` TEXT DEFAULT NULL,
  `validatingAirline` TEXT DEFAULT NULL COMMENT 'Coupon validating airline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `TicketCouponAirlineInfo` generated from model 'TicketCouponAirlineInfo'
--

CREATE TABLE IF NOT EXISTS `TicketCouponAirlineInfo` (
  `arrival` TEXT DEFAULT NULL,
  `arrivalDateTime` TEXT DEFAULT NULL,
  `departure` TEXT DEFAULT NULL,
  `departureDateTime` TEXT DEFAULT NULL,
  `equipment` TEXT DEFAULT NULL,
  `marketingCarrier` TEXT DEFAULT NULL,
  `status` TEXT DEFAULT NULL COMMENT 'Flight Segment status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `TicketCouponAirlineInfoDepartureArrivalDateTime` generated from model 'TicketCouponAirlineInfoDepartureArrivalDateTime'
--

CREATE TABLE IF NOT EXISTS `TicketCouponAirlineInfoDepartureArrivalDateTime` (
  `date` TEXT DEFAULT NULL COMMENT 'Flight Segment status',
  `time` TEXT DEFAULT NULL COMMENT 'Flight Segment status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `TicketCouponValid` generated from model 'TicketCouponValid'
--

CREATE TABLE IF NOT EXISTS `TicketCouponValid` (
  `effective` TEXT DEFAULT NULL COMMENT 'Coupon effective date',
  `expiration` TEXT DEFAULT NULL COMMENT 'Coupon expiration date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `TicketInfo` generated from model 'TicketInfo'
--

CREATE TABLE IF NOT EXISTS `TicketInfo` (
  `coupons` JSON DEFAULT NULL COMMENT 'Ticket coupons&#39; details',
  `dateOfIssue` TEXT DEFAULT NULL COMMENT 'Ticket issue date',
  `numberOfBooklets` BIGINT DEFAULT NULL COMMENT 'Number of tickets for passenger',
  `passengerRef` TEXT DEFAULT NULL COMMENT 'Passenger reference',
  `price` TEXT DEFAULT NULL,
  `remark` TEXT DEFAULT NULL COMMENT 'Remark text',
  `ticketNumber` TEXT DEFAULT NULL COMMENT 'Ticket number of passenger',
  `timeOfIssue` TEXT DEFAULT NULL COMMENT 'Ticket issue time',
  `typeCode` TEXT DEFAULT NULL COMMENT 'Type of ticket',
  `typeCodeDefinition` TEXT DEFAULT NULL COMMENT 'The meaning of the type of ticket'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Travelers` generated from model 'Travelers'
--

CREATE TABLE IF NOT EXISTS `Travelers` (
  `ADT` DECIMAL(20, 9) NOT NULL COMMENT 'Number of adult passengers - older than 12 yo',
  `CHD` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of children - older than 2 yo',
  `INF` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of infants - younger than 2 yo',
  `V14` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of young adults for Tour Operators - 12-16 yo',
  `VFR` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of adult passengers for Tour Operators - older than 12 yo',
  `VNF` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of infants for Tour Operators - younger than 2 yo',
  `VNN` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of children for Tour Operators - older than 2 yo',
  `YAD` DECIMAL(20, 9) DEFAULT NULL COMMENT 'Number of young adults - 12-16 yo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


