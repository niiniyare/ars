--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AncillariesToRebook' definition.
--


--
-- SELECT template for table `AncillariesToRebook`
--
SELECT `flightKey`, `rebook` FROM `AncillariesToRebook` WHERE 1;

--
-- INSERT template for table `AncillariesToRebook`
--
INSERT INTO `AncillariesToRebook`(`flightKey`, `rebook`) VALUES (?, ?);

--
-- UPDATE template for table `AncillariesToRebook`
--
UPDATE `AncillariesToRebook` SET `flightKey` = ?, `rebook` = ? WHERE 1;

--
-- DELETE template for table `AncillariesToRebook`
--
DELETE FROM `AncillariesToRebook` WHERE 0;

