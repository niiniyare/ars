--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'MarketingCarrier' definition.
--


--
-- SELECT template for table `MarketingCarrier`
--
SELECT `airlineID`, `flightNumber`, `name` FROM `MarketingCarrier` WHERE 1;

--
-- INSERT template for table `MarketingCarrier`
--
INSERT INTO `MarketingCarrier`(`airlineID`, `flightNumber`, `name`) VALUES (?, ?, ?);

--
-- UPDATE template for table `MarketingCarrier`
--
UPDATE `MarketingCarrier` SET `airlineID` = ?, `flightNumber` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `MarketingCarrier`
--
DELETE FROM `MarketingCarrier` WHERE 0;

