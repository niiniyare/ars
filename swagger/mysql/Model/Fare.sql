--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Fare' definition.
--


--
-- SELECT template for table `Fare`
--
SELECT `Code`, `Definition` FROM `Fare` WHERE 1;

--
-- INSERT template for table `Fare`
--
INSERT INTO `Fare`(`Code`, `Definition`) VALUES (?, ?);

--
-- UPDATE template for table `Fare`
--
UPDATE `Fare` SET `Code` = ?, `Definition` = ? WHERE 1;

--
-- DELETE template for table `Fare`
--
DELETE FROM `Fare` WHERE 0;

