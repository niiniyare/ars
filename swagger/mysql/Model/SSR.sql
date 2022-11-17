--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'SSR' definition.
--


--
-- SELECT template for table `SSR`
--
SELECT `bookingInstructions`, `code`, `desc`, `passengerType`, `text_required` FROM `SSR` WHERE 1;

--
-- INSERT template for table `SSR`
--
INSERT INTO `SSR`(`bookingInstructions`, `code`, `desc`, `passengerType`, `text_required`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `SSR`
--
UPDATE `SSR` SET `bookingInstructions` = ?, `code` = ?, `desc` = ?, `passengerType` = ?, `text_required` = ? WHERE 1;

--
-- DELETE template for table `SSR`
--
DELETE FROM `SSR` WHERE 0;

