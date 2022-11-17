--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'FQTVInfo' definition.
--


--
-- SELECT template for table `FQTVInfo`
--
SELECT `account`, `airlineID` FROM `FQTVInfo` WHERE 1;

--
-- INSERT template for table `FQTVInfo`
--
INSERT INTO `FQTVInfo`(`account`, `airlineID`) VALUES (?, ?);

--
-- UPDATE template for table `FQTVInfo`
--
UPDATE `FQTVInfo` SET `account` = ?, `airlineID` = ? WHERE 1;

--
-- DELETE template for table `FQTVInfo`
--
DELETE FROM `FQTVInfo` WHERE 0;

