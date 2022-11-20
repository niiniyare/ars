--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Seat' definition.
--


--
-- SELECT template for table `Seat`
--
SELECT `characteristics`, `description`, `listKey`, `location`, `passengerRefs`, `passengerType`, `price`, `refs`, `remarks`, `removable`, `segment` FROM `Seat` WHERE 1;

--
-- INSERT template for table `Seat`
--
INSERT INTO `Seat`(`characteristics`, `description`, `listKey`, `location`, `passengerRefs`, `passengerType`, `price`, `refs`, `remarks`, `removable`, `segment`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Seat`
--
UPDATE `Seat` SET `characteristics` = ?, `description` = ?, `listKey` = ?, `location` = ?, `passengerRefs` = ?, `passengerType` = ?, `price` = ?, `refs` = ?, `remarks` = ?, `removable` = ?, `segment` = ? WHERE 1;

--
-- DELETE template for table `Seat`
--
DELETE FROM `Seat` WHERE 0;

