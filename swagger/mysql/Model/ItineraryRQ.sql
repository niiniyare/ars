--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryRQ' definition.
--


--
-- SELECT template for table `ItineraryRQ`
--
SELECT `arrival`, `date`, `departure`, `flightNumbers` FROM `ItineraryRQ` WHERE 1;

--
-- INSERT template for table `ItineraryRQ`
--
INSERT INTO `ItineraryRQ`(`arrival`, `date`, `departure`, `flightNumbers`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryRQ`
--
UPDATE `ItineraryRQ` SET `arrival` = ?, `date` = ?, `departure` = ?, `flightNumbers` = ? WHERE 1;

--
-- DELETE template for table `ItineraryRQ`
--
DELETE FROM `ItineraryRQ` WHERE 0;

