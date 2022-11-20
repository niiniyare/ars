--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'SeatAvailabilityMedia' definition.
--


--
-- SELECT template for table `SeatAvailabilityMedia`
--
SELECT `disclosures`, `exits`, `owner`, `seatDisplay`, `seatList`, `segments` FROM `SeatAvailabilityMedia` WHERE 1;

--
-- INSERT template for table `SeatAvailabilityMedia`
--
INSERT INTO `SeatAvailabilityMedia`(`disclosures`, `exits`, `owner`, `seatDisplay`, `seatList`, `segments`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `SeatAvailabilityMedia`
--
UPDATE `SeatAvailabilityMedia` SET `disclosures` = ?, `exits` = ?, `owner` = ?, `seatDisplay` = ?, `seatList` = ?, `segments` = ? WHERE 1;

--
-- DELETE template for table `SeatAvailabilityMedia`
--
DELETE FROM `SeatAvailabilityMedia` WHERE 0;

