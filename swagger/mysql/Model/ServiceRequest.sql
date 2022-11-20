--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ServiceRequest' definition.
--


--
-- SELECT template for table `ServiceRequest`
--
SELECT `action`, `owner`, `quantity`, `seatLocation`, `segmentReference`, `serviceID`, `text`, `travelerReference`, `type` FROM `ServiceRequest` WHERE 1;

--
-- INSERT template for table `ServiceRequest`
--
INSERT INTO `ServiceRequest`(`action`, `owner`, `quantity`, `seatLocation`, `segmentReference`, `serviceID`, `text`, `travelerReference`, `type`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ServiceRequest`
--
UPDATE `ServiceRequest` SET `action` = ?, `owner` = ?, `quantity` = ?, `seatLocation` = ?, `segmentReference` = ?, `serviceID` = ?, `text` = ?, `travelerReference` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `ServiceRequest`
--
DELETE FROM `ServiceRequest` WHERE 0;

