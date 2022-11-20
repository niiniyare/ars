--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Disclosure' definition.
--


--
-- SELECT template for table `Disclosure`
--
SELECT `descriptions`, `listKey` FROM `Disclosure` WHERE 1;

--
-- INSERT template for table `Disclosure`
--
INSERT INTO `Disclosure`(`descriptions`, `listKey`) VALUES (?, ?);

--
-- UPDATE template for table `Disclosure`
--
UPDATE `Disclosure` SET `descriptions` = ?, `listKey` = ? WHERE 1;

--
-- DELETE template for table `Disclosure`
--
DELETE FROM `Disclosure` WHERE 0;

