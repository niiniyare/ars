--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderRemarks' definition.
--


--
-- SELECT template for table `OrderRemarks`
--
SELECT `data`, `result`, `templates` FROM `OrderRemarks` WHERE 1;

--
-- INSERT template for table `OrderRemarks`
--
INSERT INTO `OrderRemarks`(`data`, `result`, `templates`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderRemarks`
--
UPDATE `OrderRemarks` SET `data` = ?, `result` = ?, `templates` = ? WHERE 1;

--
-- DELETE template for table `OrderRemarks`
--
DELETE FROM `OrderRemarks` WHERE 0;

