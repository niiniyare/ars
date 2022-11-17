--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'DepartureASRQ' definition.
--


--
-- SELECT template for table `DepartureASRQ`
--
SELECT `airportCode`, `date` FROM `DepartureASRQ` WHERE 1;

--
-- INSERT template for table `DepartureASRQ`
--
INSERT INTO `DepartureASRQ`(`airportCode`, `date`) VALUES (?, ?);

--
-- UPDATE template for table `DepartureASRQ`
--
UPDATE `DepartureASRQ` SET `airportCode` = ?, `date` = ? WHERE 1;

--
-- DELETE template for table `DepartureASRQ`
--
DELETE FROM `DepartureASRQ` WHERE 0;

