--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreateAllowedRequests' definition.
--


--
-- SELECT template for table `OrderCreateAllowedRequests`
--
SELECT `pending`, `started`, `ticketed` FROM `OrderCreateAllowedRequests` WHERE 1;

--
-- INSERT template for table `OrderCreateAllowedRequests`
--
INSERT INTO `OrderCreateAllowedRequests`(`pending`, `started`, `ticketed`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderCreateAllowedRequests`
--
UPDATE `OrderCreateAllowedRequests` SET `pending` = ?, `started` = ?, `ticketed` = ? WHERE 1;

--
-- DELETE template for table `OrderCreateAllowedRequests`
--
DELETE FROM `OrderCreateAllowedRequests` WHERE 0;

