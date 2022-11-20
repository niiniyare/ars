--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'MediaData' definition.
--


--
-- SELECT template for table `MediaData`
--
SELECT `id`, `link` FROM `MediaData` WHERE 1;

--
-- INSERT template for table `MediaData`
--
INSERT INTO `MediaData`(`id`, `link`) VALUES (?, ?);

--
-- UPDATE template for table `MediaData`
--
UPDATE `MediaData` SET `id` = ?, `link` = ? WHERE 1;

--
-- DELETE template for table `MediaData`
--
DELETE FROM `MediaData` WHERE 0;

