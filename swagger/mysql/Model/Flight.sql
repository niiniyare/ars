--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Flight' definition.
--


--
-- SELECT template for table `Flight`
--
SELECT `arrival`, `baggageAllowance`, `departure`, `duration`, `key`, `segments` FROM `Flight` WHERE 1;

--
-- INSERT template for table `Flight`
--
INSERT INTO `Flight`(`arrival`, `baggageAllowance`, `departure`, `duration`, `key`, `segments`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Flight`
--
UPDATE `Flight` SET `arrival` = ?, `baggageAllowance` = ?, `departure` = ?, `duration` = ?, `key` = ?, `segments` = ? WHERE 1;

--
-- DELETE template for table `Flight`
--
DELETE FROM `Flight` WHERE 0;

