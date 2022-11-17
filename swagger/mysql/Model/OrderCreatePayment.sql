--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreatePayment' definition.
--


--
-- SELECT template for table `OrderCreatePayment`
--
SELECT `amount`, `cardInformation`, `currency`, `status`, `type` FROM `OrderCreatePayment` WHERE 1;

--
-- INSERT template for table `OrderCreatePayment`
--
INSERT INTO `OrderCreatePayment`(`amount`, `cardInformation`, `currency`, `status`, `type`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderCreatePayment`
--
UPDATE `OrderCreatePayment` SET `amount` = ?, `cardInformation` = ?, `currency` = ?, `status` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `OrderCreatePayment`
--
DELETE FROM `OrderCreatePayment` WHERE 0;

