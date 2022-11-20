--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PriceDetail' definition.
--


--
-- SELECT template for table `PriceDetail`
--
SELECT `base`, `breakdown`, `currency`, `surcharge`, `tax`, `total` FROM `PriceDetail` WHERE 1;

--
-- INSERT template for table `PriceDetail`
--
INSERT INTO `PriceDetail`(`base`, `breakdown`, `currency`, `surcharge`, `tax`, `total`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PriceDetail`
--
UPDATE `PriceDetail` SET `base` = ?, `breakdown` = ?, `currency` = ?, `surcharge` = ?, `tax` = ?, `total` = ? WHERE 1;

--
-- DELETE template for table `PriceDetail`
--
DELETE FROM `PriceDetail` WHERE 0;

