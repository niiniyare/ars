--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ServiceListPayload' definition.
--


--
-- SELECT template for table `ServiceListPayload`
--
SELECT `id`, `passengers`, `reshopOfferID`, `shoppingResponseID` FROM `ServiceListPayload` WHERE 1;

--
-- INSERT template for table `ServiceListPayload`
--
INSERT INTO `ServiceListPayload`(`id`, `passengers`, `reshopOfferID`, `shoppingResponseID`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ServiceListPayload`
--
UPDATE `ServiceListPayload` SET `id` = ?, `passengers` = ?, `reshopOfferID` = ?, `shoppingResponseID` = ? WHERE 1;

--
-- DELETE template for table `ServiceListPayload`
--
DELETE FROM `ServiceListPayload` WHERE 0;

