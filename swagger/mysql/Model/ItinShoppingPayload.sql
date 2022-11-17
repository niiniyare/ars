--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItinShoppingPayload' definition.
--


--
-- SELECT template for table `ItinShoppingPayload`
--
SELECT `itinerary`, `metadata`, `travelers` FROM `ItinShoppingPayload` WHERE 1;

--
-- INSERT template for table `ItinShoppingPayload`
--
INSERT INTO `ItinShoppingPayload`(`itinerary`, `metadata`, `travelers`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ItinShoppingPayload`
--
UPDATE `ItinShoppingPayload` SET `itinerary` = ?, `metadata` = ?, `travelers` = ? WHERE 1;

--
-- DELETE template for table `ItinShoppingPayload`
--
DELETE FROM `ItinShoppingPayload` WHERE 0;

