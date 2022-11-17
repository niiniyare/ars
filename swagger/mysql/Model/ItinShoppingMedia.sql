--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItinShoppingMedia' definition.
--


--
-- SELECT template for table `ItinShoppingMedia`
--
SELECT `itinerary`, `status` FROM `ItinShoppingMedia` WHERE 1;

--
-- INSERT template for table `ItinShoppingMedia`
--
INSERT INTO `ItinShoppingMedia`(`itinerary`, `status`) VALUES (?, ?);

--
-- UPDATE template for table `ItinShoppingMedia`
--
UPDATE `ItinShoppingMedia` SET `itinerary` = ?, `status` = ? WHERE 1;

--
-- DELETE template for table `ItinShoppingMedia`
--
DELETE FROM `ItinShoppingMedia` WHERE 0;

