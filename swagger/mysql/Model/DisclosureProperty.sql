--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'DisclosureProperty' definition.
--


--
-- SELECT template for table `DisclosureProperty`
--
SELECT `UOM`, `type`, `value` FROM `DisclosureProperty` WHERE 1;

--
-- INSERT template for table `DisclosureProperty`
--
INSERT INTO `DisclosureProperty`(`UOM`, `type`, `value`) VALUES (?, ?, ?);

--
-- UPDATE template for table `DisclosureProperty`
--
UPDATE `DisclosureProperty` SET `UOM` = ?, `type` = ?, `value` = ? WHERE 1;

--
-- DELETE template for table `DisclosureProperty`
--
DELETE FROM `DisclosureProperty` WHERE 0;

