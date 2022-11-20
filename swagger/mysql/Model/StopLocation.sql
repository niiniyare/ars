--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'StopLocation' definition.
--


--
-- SELECT template for table `StopLocation`
--
SELECT `airportCode`, `airportName`, `arrivalDate`, `arrivalTime`, `departureDate`, `departureTime` FROM `StopLocation` WHERE 1;

--
-- INSERT template for table `StopLocation`
--
INSERT INTO `StopLocation`(`airportCode`, `airportName`, `arrivalDate`, `arrivalTime`, `departureDate`, `departureTime`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `StopLocation`
--
UPDATE `StopLocation` SET `airportCode` = ?, `airportName` = ?, `arrivalDate` = ?, `arrivalTime` = ?, `departureDate` = ?, `departureTime` = ? WHERE 1;

--
-- DELETE template for table `StopLocation`
--
DELETE FROM `StopLocation` WHERE 0;

