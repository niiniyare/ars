--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryOption' definition.
--


--
-- SELECT template for table `ItineraryOption`
--
SELECT `details`, `disclosures`, `offerID`, `price`, `priceBreakdown` FROM `ItineraryOption` WHERE 1;

--
-- INSERT template for table `ItineraryOption`
--
INSERT INTO `ItineraryOption`(`details`, `disclosures`, `offerID`, `price`, `priceBreakdown`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryOption`
--
UPDATE `ItineraryOption` SET `details` = ?, `disclosures` = ?, `offerID` = ?, `price` = ?, `priceBreakdown` = ? WHERE 1;

--
-- DELETE template for table `ItineraryOption`
--
DELETE FROM `ItineraryOption` WHERE 0;

