--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PriceDetailTaxBreakdown' definition.
--


--
-- SELECT template for table `PriceDetailTaxBreakdown`
--
SELECT `code`, `currency`, `description`, `total` FROM `PriceDetailTaxBreakdown` WHERE 1;

--
-- INSERT template for table `PriceDetailTaxBreakdown`
--
INSERT INTO `PriceDetailTaxBreakdown`(`code`, `currency`, `description`, `total`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `PriceDetailTaxBreakdown`
--
UPDATE `PriceDetailTaxBreakdown` SET `code` = ?, `currency` = ?, `description` = ?, `total` = ? WHERE 1;

--
-- DELETE template for table `PriceDetailTaxBreakdown`
--
DELETE FROM `PriceDetailTaxBreakdown` WHERE 0;

