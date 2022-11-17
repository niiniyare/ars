--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'metadata' definition.
--


--
-- SELECT template for table `metadata`
--
SELECT `country`, `currency`, `locale` FROM `metadata` WHERE 1;

--
-- INSERT template for table `metadata`
--
INSERT INTO `metadata`(`country`, `currency`, `locale`) VALUES (?, ?, ?);

--
-- UPDATE template for table `metadata`
--
UPDATE `metadata` SET `country` = ?, `currency` = ?, `locale` = ? WHERE 1;

--
-- DELETE template for table `metadata`
--
DELETE FROM `metadata` WHERE 0;

