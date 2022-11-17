--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Characteristics' definition.
--


--
-- SELECT template for table `Characteristics`
--
SELECT `code`, `definition` FROM `Characteristics` WHERE 1;

--
-- INSERT template for table `Characteristics`
--
INSERT INTO `Characteristics`(`code`, `definition`) VALUES (?, ?);

--
-- UPDATE template for table `Characteristics`
--
UPDATE `Characteristics` SET `code` = ?, `definition` = ? WHERE 1;

--
-- DELETE template for table `Characteristics`
--
DELETE FROM `Characteristics` WHERE 0;

