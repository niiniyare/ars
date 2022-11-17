--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'CarbonOffset' definition.
--


--
-- SELECT template for table `CarbonOffset`
--
SELECT `destination`, `footprint`, `origin`, `segmentKey` FROM `CarbonOffset` WHERE 1;

--
-- INSERT template for table `CarbonOffset`
--
INSERT INTO `CarbonOffset`(`destination`, `footprint`, `origin`, `segmentKey`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `CarbonOffset`
--
UPDATE `CarbonOffset` SET `destination` = ?, `footprint` = ?, `origin` = ?, `segmentKey` = ? WHERE 1;

--
-- DELETE template for table `CarbonOffset`
--
DELETE FROM `CarbonOffset` WHERE 0;

