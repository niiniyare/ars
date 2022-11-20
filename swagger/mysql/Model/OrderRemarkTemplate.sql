--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderRemarkTemplate' definition.
--


--
-- SELECT template for table `OrderRemarkTemplate`
--
SELECT `data`, `name`, `neededOnCreation` FROM `OrderRemarkTemplate` WHERE 1;

--
-- INSERT template for table `OrderRemarkTemplate`
--
INSERT INTO `OrderRemarkTemplate`(`data`, `name`, `neededOnCreation`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderRemarkTemplate`
--
UPDATE `OrderRemarkTemplate` SET `data` = ?, `name` = ?, `neededOnCreation` = ? WHERE 1;

--
-- DELETE template for table `OrderRemarkTemplate`
--
DELETE FROM `OrderRemarkTemplate` WHERE 0;

