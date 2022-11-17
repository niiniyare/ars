--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PriceBreakdown' definition.
--


--
-- SELECT template for table `PriceBreakdown`
--
SELECT `inbound`, `outbound` FROM `PriceBreakdown` WHERE 1;

--
-- INSERT template for table `PriceBreakdown`
--
INSERT INTO `PriceBreakdown`(`inbound`, `outbound`) VALUES (?, ?);

--
-- UPDATE template for table `PriceBreakdown`
--
UPDATE `PriceBreakdown` SET `inbound` = ?, `outbound` = ? WHERE 1;

--
-- DELETE template for table `PriceBreakdown`
--
DELETE FROM `PriceBreakdown` WHERE 0;

