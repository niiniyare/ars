--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'BaggageAllowanceItemOption' definition.
--


--
-- SELECT template for table `BaggageAllowanceItemOption`
--
SELECT `properties`, `quantity`, `text` FROM `BaggageAllowanceItemOption` WHERE 1;

--
-- INSERT template for table `BaggageAllowanceItemOption`
--
INSERT INTO `BaggageAllowanceItemOption`(`properties`, `quantity`, `text`) VALUES (?, ?, ?);

--
-- UPDATE template for table `BaggageAllowanceItemOption`
--
UPDATE `BaggageAllowanceItemOption` SET `properties` = ?, `quantity` = ?, `text` = ? WHERE 1;

--
-- DELETE template for table `BaggageAllowanceItemOption`
--
DELETE FROM `BaggageAllowanceItemOption` WHERE 0;

