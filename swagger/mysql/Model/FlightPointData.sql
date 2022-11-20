--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightPointData' definition.
--


--
-- SELECT template for table `FlightPointData`
--
SELECT `airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time` FROM `FlightPointData` WHERE 1;

--
-- INSERT template for table `FlightPointData`
--
INSERT INTO `FlightPointData`(`airportCode`, `airportName`, `countryID`, `date`, `parentLocation`, `terminalName`, `time`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightPointData`
--
UPDATE `FlightPointData` SET `airportCode` = ?, `airportName` = ?, `countryID` = ?, `date` = ?, `parentLocation` = ?, `terminalName` = ?, `time` = ? WHERE 1;

--
-- DELETE template for table `FlightPointData`
--
DELETE FROM `FlightPointData` WHERE 0;

