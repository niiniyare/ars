--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightSegment' definition.
--


--
-- SELECT template for table `FlightSegment`
--
SELECT `ODRef`, `detail`, `equipment`, `fareCode`, `flightNumber`, `marketingCarrier`, `operatingCarrier`, `originDestination`, `segmentID` FROM `FlightSegment` WHERE 1;

--
-- INSERT template for table `FlightSegment`
--
INSERT INTO `FlightSegment`(`ODRef`, `detail`, `equipment`, `fareCode`, `flightNumber`, `marketingCarrier`, `operatingCarrier`, `originDestination`, `segmentID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightSegment`
--
UPDATE `FlightSegment` SET `ODRef` = ?, `detail` = ?, `equipment` = ?, `fareCode` = ?, `flightNumber` = ?, `marketingCarrier` = ?, `operatingCarrier` = ?, `originDestination` = ?, `segmentID` = ? WHERE 1;

--
-- DELETE template for table `FlightSegment`
--
DELETE FROM `FlightSegment` WHERE 0;

