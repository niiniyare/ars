--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryOptionFlightSegmentDetail' definition.
--


--
-- SELECT template for table `ItineraryOptionFlightSegmentDetail`
--
SELECT `ODRef`, `cabinDesignator`, `code`, `disclosureRefs`, `fare`, `fareRules`, `generalClassCode`, `refs`, `seatsLeft`, `segmentID` FROM `ItineraryOptionFlightSegmentDetail` WHERE 1;

--
-- INSERT template for table `ItineraryOptionFlightSegmentDetail`
--
INSERT INTO `ItineraryOptionFlightSegmentDetail`(`ODRef`, `cabinDesignator`, `code`, `disclosureRefs`, `fare`, `fareRules`, `generalClassCode`, `refs`, `seatsLeft`, `segmentID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryOptionFlightSegmentDetail`
--
UPDATE `ItineraryOptionFlightSegmentDetail` SET `ODRef` = ?, `cabinDesignator` = ?, `code` = ?, `disclosureRefs` = ?, `fare` = ?, `fareRules` = ?, `generalClassCode` = ?, `refs` = ?, `seatsLeft` = ?, `segmentID` = ? WHERE 1;

--
-- DELETE template for table `ItineraryOptionFlightSegmentDetail`
--
DELETE FROM `ItineraryOptionFlightSegmentDetail` WHERE 0;

