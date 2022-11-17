--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderRemarksPayload' definition.
--


--
-- SELECT template for table `OrderRemarksPayload`
--
SELECT `data`, `id`, `result` FROM `OrderRemarksPayload` WHERE 1;

--
-- INSERT template for table `OrderRemarksPayload`
--
INSERT INTO `OrderRemarksPayload`(`data`, `id`, `result`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderRemarksPayload`
--
UPDATE `OrderRemarksPayload` SET `data` = ?, `id` = ?, `result` = ? WHERE 1;

--
-- DELETE template for table `OrderRemarksPayload`
--
DELETE FROM `OrderRemarksPayload` WHERE 0;

