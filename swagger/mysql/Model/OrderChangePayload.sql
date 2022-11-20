--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderChangePayload' definition.
--


--
-- SELECT template for table `OrderChangePayload`
--
SELECT `action`, `id`, `loyaltyProgramAccount`, `passengerUpdate`, `passengers`, `payment`, `reshopOfferID`, `services` FROM `OrderChangePayload` WHERE 1;

--
-- INSERT template for table `OrderChangePayload`
--
INSERT INTO `OrderChangePayload`(`action`, `id`, `loyaltyProgramAccount`, `passengerUpdate`, `passengers`, `payment`, `reshopOfferID`, `services`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderChangePayload`
--
UPDATE `OrderChangePayload` SET `action` = ?, `id` = ?, `loyaltyProgramAccount` = ?, `passengerUpdate` = ?, `passengers` = ?, `payment` = ?, `reshopOfferID` = ?, `services` = ? WHERE 1;

--
-- DELETE template for table `OrderChangePayload`
--
DELETE FROM `OrderChangePayload` WHERE 0;

