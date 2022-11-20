--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OperatingCarrier' definition.
--


--
-- SELECT template for table `OperatingCarrier`
--
SELECT `airlineID`, `flightNumber`, `name` FROM `OperatingCarrier` WHERE 1;

--
-- INSERT template for table `OperatingCarrier`
--
INSERT INTO `OperatingCarrier`(`airlineID`, `flightNumber`, `name`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OperatingCarrier`
--
UPDATE `OperatingCarrier` SET `airlineID` = ?, `flightNumber` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `OperatingCarrier`
--
DELETE FROM `OperatingCarrier` WHERE 0;

