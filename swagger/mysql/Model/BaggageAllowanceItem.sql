--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'BaggageAllowanceItem' definition.
--


--
-- SELECT template for table `BaggageAllowanceItem`
--
SELECT `chooseType`, `options`, `passengerRefs` FROM `BaggageAllowanceItem` WHERE 1;

--
-- INSERT template for table `BaggageAllowanceItem`
--
INSERT INTO `BaggageAllowanceItem`(`chooseType`, `options`, `passengerRefs`) VALUES (?, ?, ?);

--
-- UPDATE template for table `BaggageAllowanceItem`
--
UPDATE `BaggageAllowanceItem` SET `chooseType` = ?, `options` = ?, `passengerRefs` = ? WHERE 1;

--
-- DELETE template for table `BaggageAllowanceItem`
--
DELETE FROM `BaggageAllowanceItem` WHERE 0;

