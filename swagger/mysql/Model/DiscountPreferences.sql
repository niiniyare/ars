--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'DiscountPreferences' definition.
--


--
-- SELECT template for table `DiscountPreferences`
--
SELECT `largeFamily`, `residentCode` FROM `DiscountPreferences` WHERE 1;

--
-- INSERT template for table `DiscountPreferences`
--
INSERT INTO `DiscountPreferences`(`largeFamily`, `residentCode`) VALUES (?, ?);

--
-- UPDATE template for table `DiscountPreferences`
--
UPDATE `DiscountPreferences` SET `largeFamily` = ?, `residentCode` = ? WHERE 1;

--
-- DELETE template for table `DiscountPreferences`
--
DELETE FROM `DiscountPreferences` WHERE 0;

