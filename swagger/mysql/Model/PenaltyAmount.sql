--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PenaltyAmount' definition.
--


--
-- SELECT template for table `PenaltyAmount`
--
SELECT `amount`, `currency`, `providerAmount`, `providerCurrency`, `remark` FROM `PenaltyAmount` WHERE 1;

--
-- INSERT template for table `PenaltyAmount`
--
INSERT INTO `PenaltyAmount`(`amount`, `currency`, `providerAmount`, `providerCurrency`, `remark`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `PenaltyAmount`
--
UPDATE `PenaltyAmount` SET `amount` = ?, `currency` = ?, `providerAmount` = ?, `providerCurrency` = ?, `remark` = ? WHERE 1;

--
-- DELETE template for table `PenaltyAmount`
--
DELETE FROM `PenaltyAmount` WHERE 0;

