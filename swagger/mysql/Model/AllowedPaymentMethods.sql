--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AllowedPaymentMethods' definition.
--


--
-- SELECT template for table `AllowedPaymentMethods`
--
SELECT `agencyCard`, `agencyCash`, `card`, `none`, `unusedTicket` FROM `AllowedPaymentMethods` WHERE 1;

--
-- INSERT template for table `AllowedPaymentMethods`
--
INSERT INTO `AllowedPaymentMethods`(`agencyCard`, `agencyCash`, `card`, `none`, `unusedTicket`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `AllowedPaymentMethods`
--
UPDATE `AllowedPaymentMethods` SET `agencyCard` = ?, `agencyCash` = ?, `card` = ?, `none` = ?, `unusedTicket` = ? WHERE 1;

--
-- DELETE template for table `AllowedPaymentMethods`
--
DELETE FROM `AllowedPaymentMethods` WHERE 0;

