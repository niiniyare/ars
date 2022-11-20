--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Price' definition.
--


--
-- SELECT template for table `Price`
--
SELECT `consumer`, `provider` FROM `Price` WHERE 1;

--
-- INSERT template for table `Price`
--
INSERT INTO `Price`(`consumer`, `provider`) VALUES (?, ?);

--
-- UPDATE template for table `Price`
--
UPDATE `Price` SET `consumer` = ?, `provider` = ? WHERE 1;

--
-- DELETE template for table `Price`
--
DELETE FROM `Price` WHERE 0;

