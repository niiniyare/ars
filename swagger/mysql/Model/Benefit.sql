--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Benefit' definition.
--


--
-- SELECT template for table `Benefit`
--
SELECT `amount`, `application`, `description`, `term` FROM `Benefit` WHERE 1;

--
-- INSERT template for table `Benefit`
--
INSERT INTO `Benefit`(`amount`, `application`, `description`, `term`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `Benefit`
--
UPDATE `Benefit` SET `amount` = ?, `application` = ?, `description` = ?, `term` = ? WHERE 1;

--
-- DELETE template for table `Benefit`
--
DELETE FROM `Benefit` WHERE 0;

