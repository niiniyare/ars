--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PriceDetailBreakdown' definition.
--


--
-- SELECT template for table `PriceDetailBreakdown`
--
SELECT `base`, `offerItemID`, `passengerRefs`, `passengerType`, `surcharge`, `tax` FROM `PriceDetailBreakdown` WHERE 1;

--
-- INSERT template for table `PriceDetailBreakdown`
--
INSERT INTO `PriceDetailBreakdown`(`base`, `offerItemID`, `passengerRefs`, `passengerType`, `surcharge`, `tax`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PriceDetailBreakdown`
--
UPDATE `PriceDetailBreakdown` SET `base` = ?, `offerItemID` = ?, `passengerRefs` = ?, `passengerType` = ?, `surcharge` = ?, `tax` = ? WHERE 1;

--
-- DELETE template for table `PriceDetailBreakdown`
--
DELETE FROM `PriceDetailBreakdown` WHERE 0;

