--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderListCounters' definition.
--


--
-- SELECT template for table `OrderListCounters`
--
SELECT `active`, `approved`, `cancelled`, `disrupted`, `pending`, `refused`, `ticketed`, `underApproval`, `unused`, `voided` FROM `OrderListCounters` WHERE 1;

--
-- INSERT template for table `OrderListCounters`
--
INSERT INTO `OrderListCounters`(`active`, `approved`, `cancelled`, `disrupted`, `pending`, `refused`, `ticketed`, `underApproval`, `unused`, `voided`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderListCounters`
--
UPDATE `OrderListCounters` SET `active` = ?, `approved` = ?, `cancelled` = ?, `disrupted` = ?, `pending` = ?, `refused` = ?, `ticketed` = ?, `underApproval` = ?, `unused` = ?, `voided` = ? WHERE 1;

--
-- DELETE template for table `OrderListCounters`
--
DELETE FROM `OrderListCounters` WHERE 0;

