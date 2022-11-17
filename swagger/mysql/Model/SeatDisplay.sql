--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'SeatDisplay' definition.
--


--
-- SELECT template for table `SeatDisplay`
--
SELECT `columns`, `rows`, `segment` FROM `SeatDisplay` WHERE 1;

--
-- INSERT template for table `SeatDisplay`
--
INSERT INTO `SeatDisplay`(`columns`, `rows`, `segment`) VALUES (?, ?, ?);

--
-- UPDATE template for table `SeatDisplay`
--
UPDATE `SeatDisplay` SET `columns` = ?, `rows` = ?, `segment` = ? WHERE 1;

--
-- DELETE template for table `SeatDisplay`
--
DELETE FROM `SeatDisplay` WHERE 0;

