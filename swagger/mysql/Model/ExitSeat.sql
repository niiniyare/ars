--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ExitSeat' definition.
--


--
-- SELECT template for table `ExitSeat`
--
SELECT `position`, `row`, `segmentID` FROM `ExitSeat` WHERE 1;

--
-- INSERT template for table `ExitSeat`
--
INSERT INTO `ExitSeat`(`position`, `row`, `segmentID`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ExitSeat`
--
UPDATE `ExitSeat` SET `position` = ?, `row` = ?, `segmentID` = ? WHERE 1;

--
-- DELETE template for table `ExitSeat`
--
DELETE FROM `ExitSeat` WHERE 0;

