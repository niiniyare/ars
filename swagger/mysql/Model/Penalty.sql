--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Penalty' definition.
--


--
-- SELECT template for table `Penalty`
--
SELECT `amounts`, `description`, `type` FROM `Penalty` WHERE 1;

--
-- INSERT template for table `Penalty`
--
INSERT INTO `Penalty`(`amounts`, `description`, `type`) VALUES (?, ?, ?);

--
-- UPDATE template for table `Penalty`
--
UPDATE `Penalty` SET `amounts` = ?, `description` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `Penalty`
--
DELETE FROM `Penalty` WHERE 0;

