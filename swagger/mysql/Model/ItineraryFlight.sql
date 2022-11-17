--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryFlight' definition.
--


--
-- SELECT template for table `ItineraryFlight`
--
SELECT `arrival`, `departure`, `duration`, `key`, `segments` FROM `ItineraryFlight` WHERE 1;

--
-- INSERT template for table `ItineraryFlight`
--
INSERT INTO `ItineraryFlight`(`arrival`, `departure`, `duration`, `key`, `segments`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryFlight`
--
UPDATE `ItineraryFlight` SET `arrival` = ?, `departure` = ?, `duration` = ?, `key` = ?, `segments` = ? WHERE 1;

--
-- DELETE template for table `ItineraryFlight`
--
DELETE FROM `ItineraryFlight` WHERE 0;

