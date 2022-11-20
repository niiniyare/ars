--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderFile' definition.
--


--
-- SELECT template for table `OrderFile`
--
SELECT `id`, `type` FROM `OrderFile` WHERE 1;

--
-- INSERT template for table `OrderFile`
--
INSERT INTO `OrderFile`(`id`, `type`) VALUES (?, ?);

--
-- UPDATE template for table `OrderFile`
--
UPDATE `OrderFile` SET `id` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `OrderFile`
--
DELETE FROM `OrderFile` WHERE 0;

