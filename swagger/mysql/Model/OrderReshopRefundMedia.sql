--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopRefundMedia' definition.
--


--
-- SELECT template for table `OrderReshopRefundMedia`
--
SELECT `flights`, `originalOrder`, `penalty`, `refund`, `seats`, `services`, `tickets`, `voidPermited`, `warnings` FROM `OrderReshopRefundMedia` WHERE 1;

--
-- INSERT template for table `OrderReshopRefundMedia`
--
INSERT INTO `OrderReshopRefundMedia`(`flights`, `originalOrder`, `penalty`, `refund`, `seats`, `services`, `tickets`, `voidPermited`, `warnings`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderReshopRefundMedia`
--
UPDATE `OrderReshopRefundMedia` SET `flights` = ?, `originalOrder` = ?, `penalty` = ?, `refund` = ?, `seats` = ?, `services` = ?, `tickets` = ?, `voidPermited` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopRefundMedia`
--
DELETE FROM `OrderReshopRefundMedia` WHERE 0;

