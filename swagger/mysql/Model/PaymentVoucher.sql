--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PaymentVoucher' definition.
--


--
-- SELECT template for table `PaymentVoucher`
--
SELECT `amount`, `currency`, `email`, `number`, `surname` FROM `PaymentVoucher` WHERE 1;

--
-- INSERT template for table `PaymentVoucher`
--
INSERT INTO `PaymentVoucher`(`amount`, `currency`, `email`, `number`, `surname`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `PaymentVoucher`
--
UPDATE `PaymentVoucher` SET `amount` = ?, `currency` = ?, `email` = ?, `number` = ?, `surname` = ? WHERE 1;

--
-- DELETE template for table `PaymentVoucher`
--
DELETE FROM `PaymentVoucher` WHERE 0;

