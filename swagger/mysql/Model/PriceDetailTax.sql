--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PriceDetailTax' definition.
--


--
-- SELECT template for table `PriceDetailTax`
--
SELECT `breakdown`, `total` FROM `PriceDetailTax` WHERE 1;

--
-- INSERT template for table `PriceDetailTax`
--
INSERT INTO `PriceDetailTax`(`breakdown`, `total`) VALUES (?, ?);

--
-- UPDATE template for table `PriceDetailTax`
--
UPDATE `PriceDetailTax` SET `breakdown` = ?, `total` = ? WHERE 1;

--
-- DELETE template for table `PriceDetailTax`
--
DELETE FROM `PriceDetailTax` WHERE 0;

