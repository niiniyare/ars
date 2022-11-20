--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Rows' definition.
--


--
-- SELECT template for table `Rows`
--
SELECT `first`, `last` FROM `Rows` WHERE 1;

--
-- INSERT template for table `Rows`
--
INSERT INTO `Rows`(`first`, `last`) VALUES (?, ?);

--
-- UPDATE template for table `Rows`
--
UPDATE `Rows` SET `first` = ?, `last` = ? WHERE 1;

--
-- DELETE template for table `Rows`
--
DELETE FROM `Rows` WHERE 0;

