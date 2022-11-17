--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OriginDestinationASRQ' definition.
--


--
-- SELECT template for table `OriginDestinationASRQ`
--
SELECT `arrival`, `departure`, `type` FROM `OriginDestinationASRQ` WHERE 1;

--
-- INSERT template for table `OriginDestinationASRQ`
--
INSERT INTO `OriginDestinationASRQ`(`arrival`, `departure`, `type`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OriginDestinationASRQ`
--
UPDATE `OriginDestinationASRQ` SET `arrival` = ?, `departure` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `OriginDestinationASRQ`
--
DELETE FROM `OriginDestinationASRQ` WHERE 0;

