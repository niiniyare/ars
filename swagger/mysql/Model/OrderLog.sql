--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderLog' definition.
--


--
-- SELECT template for table `OrderLog`
--
SELECT `severity`, `text`, `timestamp`, `type` FROM `OrderLog` WHERE 1;

--
-- INSERT template for table `OrderLog`
--
INSERT INTO `OrderLog`(`severity`, `text`, `timestamp`, `type`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `OrderLog`
--
UPDATE `OrderLog` SET `severity` = ?, `text` = ?, `timestamp` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `OrderLog`
--
DELETE FROM `OrderLog` WHERE 0;

