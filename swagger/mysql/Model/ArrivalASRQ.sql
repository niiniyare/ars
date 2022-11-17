--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ArrivalASRQ' definition.
--


--
-- SELECT template for table `ArrivalASRQ`
--
SELECT `airportCode`, `date` FROM `ArrivalASRQ` WHERE 1;

--
-- INSERT template for table `ArrivalASRQ`
--
INSERT INTO `ArrivalASRQ`(`airportCode`, `date`) VALUES (?, ?);

--
-- UPDATE template for table `ArrivalASRQ`
--
UPDATE `ArrivalASRQ` SET `airportCode` = ?, `date` = ? WHERE 1;

--
-- DELETE template for table `ArrivalASRQ`
--
DELETE FROM `ArrivalASRQ` WHERE 0;

