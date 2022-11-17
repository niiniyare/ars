--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightDetailFare' definition.
--


--
-- SELECT template for table `FlightDetailFare`
--
SELECT `basisCode`, `cabin`, `code`, `marketingName`, `priceClassName`, `standardName`, `type` FROM `FlightDetailFare` WHERE 1;

--
-- INSERT template for table `FlightDetailFare`
--
INSERT INTO `FlightDetailFare`(`basisCode`, `cabin`, `code`, `marketingName`, `priceClassName`, `standardName`, `type`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightDetailFare`
--
UPDATE `FlightDetailFare` SET `basisCode` = ?, `cabin` = ?, `code` = ?, `marketingName` = ?, `priceClassName` = ?, `standardName` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `FlightDetailFare`
--
DELETE FROM `FlightDetailFare` WHERE 0;

