--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryFlightSegmentDetail' definition.
--


--
-- SELECT template for table `ItineraryFlightSegmentDetail`
--
SELECT `duration`, `segmentType`, `stopLocations`, `stopQuantity` FROM `ItineraryFlightSegmentDetail` WHERE 1;

--
-- INSERT template for table `ItineraryFlightSegmentDetail`
--
INSERT INTO `ItineraryFlightSegmentDetail`(`duration`, `segmentType`, `stopLocations`, `stopQuantity`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryFlightSegmentDetail`
--
UPDATE `ItineraryFlightSegmentDetail` SET `duration` = ?, `segmentType` = ?, `stopLocations` = ?, `stopQuantity` = ? WHERE 1;

--
-- DELETE template for table `ItineraryFlightSegmentDetail`
--
DELETE FROM `ItineraryFlightSegmentDetail` WHERE 0;

