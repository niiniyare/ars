--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'BaggageAllowance' definition.
--


--
-- SELECT template for table `BaggageAllowance`
--
SELECT `carryOn`, `checked` FROM `BaggageAllowance` WHERE 1;

--
-- INSERT template for table `BaggageAllowance`
--
INSERT INTO `BaggageAllowance`(`carryOn`, `checked`) VALUES (?, ?);

--
-- UPDATE template for table `BaggageAllowance`
--
UPDATE `BaggageAllowance` SET `carryOn` = ?, `checked` = ? WHERE 1;

--
-- DELETE template for table `BaggageAllowance`
--
DELETE FROM `BaggageAllowance` WHERE 0;

