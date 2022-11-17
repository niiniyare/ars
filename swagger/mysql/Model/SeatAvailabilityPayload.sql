--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'SeatAvailabilityPayload' definition.
--


--
-- SELECT template for table `SeatAvailabilityPayload`
--
SELECT `id`, `passengers`, `reshopOfferID`, `segmentID`, `shoppingResponseID` FROM `SeatAvailabilityPayload` WHERE 1;

--
-- INSERT template for table `SeatAvailabilityPayload`
--
INSERT INTO `SeatAvailabilityPayload`(`id`, `passengers`, `reshopOfferID`, `segmentID`, `shoppingResponseID`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `SeatAvailabilityPayload`
--
UPDATE `SeatAvailabilityPayload` SET `id` = ?, `passengers` = ?, `reshopOfferID` = ?, `segmentID` = ?, `shoppingResponseID` = ? WHERE 1;

--
-- DELETE template for table `SeatAvailabilityPayload`
--
DELETE FROM `SeatAvailabilityPayload` WHERE 0;

