--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'error' definition.
--


--
-- SELECT template for table `error`
--
SELECT `code`, `detail`, `id`, `meta`, `status` FROM `error` WHERE 1;

--
-- INSERT template for table `error`
--
INSERT INTO `error`(`code`, `detail`, `id`, `meta`, `status`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `error`
--
UPDATE `error` SET `code` = ?, `detail` = ?, `id` = ?, `meta` = ?, `status` = ? WHERE 1;

--
-- DELETE template for table `error`
--
DELETE FROM `error` WHERE 0;

