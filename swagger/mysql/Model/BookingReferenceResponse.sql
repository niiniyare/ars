--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'BookingReferenceResponse' definition.
--


--
-- SELECT template for table `BookingReferenceResponse`
--
SELECT `airlineID`, `alternativeIDs`, `id`, `otherID` FROM `BookingReferenceResponse` WHERE 1;

--
-- INSERT template for table `BookingReferenceResponse`
--
INSERT INTO `BookingReferenceResponse`(`airlineID`, `alternativeIDs`, `id`, `otherID`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `BookingReferenceResponse`
--
UPDATE `BookingReferenceResponse` SET `airlineID` = ?, `alternativeIDs` = ?, `id` = ?, `otherID` = ? WHERE 1;

--
-- DELETE template for table `BookingReferenceResponse`
--
DELETE FROM `BookingReferenceResponse` WHERE 0;

