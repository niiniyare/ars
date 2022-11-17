--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreateAllowedRequestsTicketed' definition.
--


--
-- SELECT template for table `OrderCreateAllowedRequestsTicketed`
--
SELECT `OrderCancel`, `OrderCancelToVoucher`, `OrderReshop`, `OrderReshopRefund`, `OrderReshopRouteChange`, `OrderSplit`, `OrderVoid`, `SeatAvailability`, `ServiceList` FROM `OrderCreateAllowedRequestsTicketed` WHERE 1;

--
-- INSERT template for table `OrderCreateAllowedRequestsTicketed`
--
INSERT INTO `OrderCreateAllowedRequestsTicketed`(`OrderCancel`, `OrderCancelToVoucher`, `OrderReshop`, `OrderReshopRefund`, `OrderReshopRouteChange`, `OrderSplit`, `OrderVoid`, `SeatAvailability`, `ServiceList`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderCreateAllowedRequestsTicketed`
--
UPDATE `OrderCreateAllowedRequestsTicketed` SET `OrderCancel` = ?, `OrderCancelToVoucher` = ?, `OrderReshop` = ?, `OrderReshopRefund` = ?, `OrderReshopRouteChange` = ?, `OrderSplit` = ?, `OrderVoid` = ?, `SeatAvailability` = ?, `ServiceList` = ? WHERE 1;

--
-- DELETE template for table `OrderCreateAllowedRequestsTicketed`
--
DELETE FROM `OrderCreateAllowedRequestsTicketed` WHERE 0;

