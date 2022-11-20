--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PassengerData' definition.
--


--
-- SELECT template for table `PassengerData`
--
SELECT `address`, `birthdate`, `email`, `fqtvInfo`, `gender`, `name`, `phone`, `surname`, `title` FROM `PassengerData` WHERE 1;

--
-- INSERT template for table `PassengerData`
--
INSERT INTO `PassengerData`(`address`, `birthdate`, `email`, `fqtvInfo`, `gender`, `name`, `phone`, `surname`, `title`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PassengerData`
--
UPDATE `PassengerData` SET `address` = ?, `birthdate` = ?, `email` = ?, `fqtvInfo` = ?, `gender` = ?, `name` = ?, `phone` = ?, `surname` = ?, `title` = ? WHERE 1;

--
-- DELETE template for table `PassengerData`
--
DELETE FROM `PassengerData` WHERE 0;

