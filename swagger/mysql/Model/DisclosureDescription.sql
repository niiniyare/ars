--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'DisclosureDescription' definition.
--


--
-- SELECT template for table `DisclosureDescription`
--
SELECT `category`, `item`, `media`, `metadataToken`, `originDestinationReference`, `properties`, `text`, `units` FROM `DisclosureDescription` WHERE 1;

--
-- INSERT template for table `DisclosureDescription`
--
INSERT INTO `DisclosureDescription`(`category`, `item`, `media`, `metadataToken`, `originDestinationReference`, `properties`, `text`, `units`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `DisclosureDescription`
--
UPDATE `DisclosureDescription` SET `category` = ?, `item` = ?, `media` = ?, `metadataToken` = ?, `originDestinationReference` = ?, `properties` = ?, `text` = ?, `units` = ? WHERE 1;

--
-- DELETE template for table `DisclosureDescription`
--
DELETE FROM `DisclosureDescription` WHERE 0;

