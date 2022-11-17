--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightPointDataRSArrInner' definition.
--


--
-- SELECT template for table `FlightPointDataRSArrInner`
--
SELECT `airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time` FROM `FlightPointDataRSArrInner` WHERE 1;

--
-- INSERT template for table `FlightPointDataRSArrInner`
--
INSERT INTO `FlightPointDataRSArrInner`(`airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightPointDataRSArrInner`
--
UPDATE `FlightPointDataRSArrInner` SET `airportCode` = ?, `airportName` = ?, `countryID` = ?, `date` = ?, `parentLocation` = ?, `terminalName` = ?, `time` = ? WHERE 1;

--
-- DELETE template for table `FlightPointDataRSArrInner`
--
DELETE FROM `FlightPointDataRSArrInner` WHERE 0;

