--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Travelers' definition.
--


--
-- SELECT template for table `Travelers`
--
SELECT `ADT`, `CHD`, `INF`, `V14`, `VFR`, `VNF`, `VNN`, `YAD` FROM `Travelers` WHERE 1;

--
-- INSERT template for table `Travelers`
--
INSERT INTO `Travelers`(`ADT`, `CHD`, `INF`, `V14`, `VFR`, `VNF`, `VNN`, `YAD`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Travelers`
--
UPDATE `Travelers` SET `ADT` = ?, `CHD` = ?, `INF` = ?, `V14` = ?, `VFR` = ?, `VNF` = ?, `VNN` = ?, `YAD` = ? WHERE 1;

--
-- DELETE template for table `Travelers`
--
DELETE FROM `Travelers` WHERE 0;

