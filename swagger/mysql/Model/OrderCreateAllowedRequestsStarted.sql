--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreateAllowedRequestsStarted' definition.
--


--
-- SELECT template for table `OrderCreateAllowedRequestsStarted`
--
SELECT `OrderCancel`, `OrderReshop`, `OrderReshopRefund` FROM `OrderCreateAllowedRequestsStarted` WHERE 1;

--
-- INSERT template for table `OrderCreateAllowedRequestsStarted`
--
INSERT INTO `OrderCreateAllowedRequestsStarted`(`OrderCancel`, `OrderReshop`, `OrderReshopRefund`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderCreateAllowedRequestsStarted`
--
UPDATE `OrderCreateAllowedRequestsStarted` SET `OrderCancel` = ?, `OrderReshop` = ?, `OrderReshopRefund` = ? WHERE 1;

--
-- DELETE template for table `OrderCreateAllowedRequestsStarted`
--
DELETE FROM `OrderCreateAllowedRequestsStarted` WHERE 0;

