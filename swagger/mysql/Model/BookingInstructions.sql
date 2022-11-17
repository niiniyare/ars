--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'BookingInstructions' definition.
--


--
-- SELECT template for table `BookingInstructions`
--
SELECT `mandatoryText`, `pattern`, `placeHolder`, `type` FROM `BookingInstructions` WHERE 1;

--
-- INSERT template for table `BookingInstructions`
--
INSERT INTO `BookingInstructions`(`mandatoryText`, `pattern`, `placeHolder`, `type`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `BookingInstructions`
--
UPDATE `BookingInstructions` SET `mandatoryText` = ?, `pattern` = ?, `placeHolder` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `BookingInstructions`
--
DELETE FROM `BookingInstructions` WHERE 0;

