--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FareRule' definition.
--


--
-- SELECT template for table `FareRule`
--
SELECT `cancel`, `cancelEnum`, `change`, `changeEnum`, `passengerRef`, `passengerType`, `penalties` FROM `FareRule` WHERE 1;

--
-- INSERT template for table `FareRule`
--
INSERT INTO `FareRule`(`cancel`, `cancelEnum`, `change`, `changeEnum`, `passengerRef`, `passengerType`, `penalties`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FareRule`
--
UPDATE `FareRule` SET `cancel` = ?, `cancelEnum` = ?, `change` = ?, `changeEnum` = ?, `passengerRef` = ?, `passengerType` = ?, `penalties` = ? WHERE 1;

--
-- DELETE template for table `FareRule`
--
DELETE FROM `FareRule` WHERE 0;

