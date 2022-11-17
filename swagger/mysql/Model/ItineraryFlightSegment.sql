--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryFlightSegment' definition.
--


--
-- SELECT template for table `ItineraryFlightSegment`
--
SELECT `ODRef`, `detail`, `equipment`, `flightNumber`, `marketingCarrier`, `operatingCarrier`, `originDestination`, `segmentID` FROM `ItineraryFlightSegment` WHERE 1;

--
-- INSERT template for table `ItineraryFlightSegment`
--
INSERT INTO `ItineraryFlightSegment`(`ODRef`, `detail`, `equipment`, `flightNumber`, `marketingCarrier`, `operatingCarrier`, `originDestination`, `segmentID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryFlightSegment`
--
UPDATE `ItineraryFlightSegment` SET `ODRef` = ?, `detail` = ?, `equipment` = ?, `flightNumber` = ?, `marketingCarrier` = ?, `operatingCarrier` = ?, `originDestination` = ?, `segmentID` = ? WHERE 1;

--
-- DELETE template for table `ItineraryFlightSegment`
--
DELETE FROM `ItineraryFlightSegment` WHERE 0;

