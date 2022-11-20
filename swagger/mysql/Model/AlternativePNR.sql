--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AlternativePNR' definition.
--


--
-- SELECT template for table `AlternativePNR`
--
SELECT `id`, `providerID` FROM `AlternativePNR` WHERE 1;

--
-- INSERT template for table `AlternativePNR`
--
INSERT INTO `AlternativePNR`(`id`, `providerID`) VALUES (?, ?);

--
-- UPDATE template for table `AlternativePNR`
--
UPDATE `AlternativePNR` SET `id` = ?, `providerID` = ? WHERE 1;

--
-- DELETE template for table `AlternativePNR`
--
DELETE FROM `AlternativePNR` WHERE 0;

