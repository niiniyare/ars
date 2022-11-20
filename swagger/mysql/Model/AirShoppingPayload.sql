--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AirShoppingPayload' definition.
--


--
-- SELECT template for table `AirShoppingPayload`
--
SELECT `corporateDiscountCodes`, `metadata`, `originDestinations`, `preferences`, `travelers` FROM `AirShoppingPayload` WHERE 1;

--
-- INSERT template for table `AirShoppingPayload`
--
INSERT INTO `AirShoppingPayload`(`corporateDiscountCodes`, `metadata`, `originDestinations`, `preferences`, `travelers`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `AirShoppingPayload`
--
UPDATE `AirShoppingPayload` SET `corporateDiscountCodes` = ?, `metadata` = ?, `originDestinations` = ?, `preferences` = ?, `travelers` = ? WHERE 1;

--
-- DELETE template for table `AirShoppingPayload`
--
DELETE FROM `AirShoppingPayload` WHERE 0;

