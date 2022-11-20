--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Passenger' definition.
--


--
-- SELECT template for table `Passenger`
--
SELECT `data`, `document`, `fareBasisCodes`, `identity4Discount`, `infantReference`, `passengerType`, `seats`, `services`, `specialServices`, `travelerReference` FROM `Passenger` WHERE 1;

--
-- INSERT template for table `Passenger`
--
INSERT INTO `Passenger`(`data`, `document`, `fareBasisCodes`, `identity4Discount`, `infantReference`, `passengerType`, `seats`, `services`, `specialServices`, `travelerReference`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Passenger`
--
UPDATE `Passenger` SET `data` = ?, `document` = ?, `fareBasisCodes` = ?, `identity4Discount` = ?, `infantReference` = ?, `passengerType` = ?, `seats` = ?, `services` = ?, `specialServices` = ?, `travelerReference` = ? WHERE 1;

--
-- DELETE template for table `Passenger`
--
DELETE FROM `Passenger` WHERE 0;

