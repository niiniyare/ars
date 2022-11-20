--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Equipment' definition.
--


--
-- SELECT template for table `Equipment`
--
SELECT `aircraftCode`, `name` FROM `Equipment` WHERE 1;

--
-- INSERT template for table `Equipment`
--
INSERT INTO `Equipment`(`aircraftCode`, `name`) VALUES (?, ?);

--
-- UPDATE template for table `Equipment`
--
UPDATE `Equipment` SET `aircraftCode` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `Equipment`
--
DELETE FROM `Equipment` WHERE 0;

