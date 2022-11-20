--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FlightDetail' definition.
--


--
-- SELECT template for table `FlightDetail`
--
SELECT `classOfService`, `duration`, `seatsLeft`, `segmentType`, `stopLocations`, `stopQuantity` FROM `FlightDetail` WHERE 1;

--
-- INSERT template for table `FlightDetail`
--
INSERT INTO `FlightDetail`(`classOfService`, `duration`, `seatsLeft`, `segmentType`, `stopLocations`, `stopQuantity`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FlightDetail`
--
UPDATE `FlightDetail` SET `classOfService` = ?, `duration` = ?, `seatsLeft` = ?, `segmentType` = ?, `stopLocations` = ?, `stopQuantity` = ? WHERE 1;

--
-- DELETE template for table `FlightDetail`
--
DELETE FROM `FlightDetail` WHERE 0;

