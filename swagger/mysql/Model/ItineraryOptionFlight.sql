--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryOptionFlight' definition.
--


--
-- SELECT template for table `ItineraryOptionFlight`
--
SELECT `baggageAllowance`, `key`, `segments` FROM `ItineraryOptionFlight` WHERE 1;

--
-- INSERT template for table `ItineraryOptionFlight`
--
INSERT INTO `ItineraryOptionFlight`(`baggageAllowance`, `key`, `segments`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ItineraryOptionFlight`
--
UPDATE `ItineraryOptionFlight` SET `baggageAllowance` = ?, `key` = ?, `segments` = ? WHERE 1;

--
-- DELETE template for table `ItineraryOptionFlight`
--
DELETE FROM `ItineraryOptionFlight` WHERE 0;

