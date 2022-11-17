--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightPointDataRSDepInner' definition.
--


--
-- SELECT template for table `FlightPointDataRSDepInner`
--
SELECT `airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time` FROM `FlightPointDataRSDepInner` WHERE 1;

--
-- INSERT template for table `FlightPointDataRSDepInner`
--
INSERT INTO `FlightPointDataRSDepInner`(`airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightPointDataRSDepInner`
--
UPDATE `FlightPointDataRSDepInner` SET `airportCode` = ?, `airportName` = ?, `countryID` = ?, `date` = ?, `parentLocation` = ?, `terminalName` = ?, `time` = ? WHERE 1;

--
-- DELETE template for table `FlightPointDataRSDepInner`
--
DELETE FROM `FlightPointDataRSDepInner` WHERE 0;

