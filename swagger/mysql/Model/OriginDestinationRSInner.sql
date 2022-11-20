--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OriginDestinationRS_Inner' definition.
--


--
-- SELECT template for table `OriginDestinationRS_Inner`
--
SELECT `arrival`, `departure` FROM `OriginDestinationRS_Inner` WHERE 1;

--
-- INSERT template for table `OriginDestinationRS_Inner`
--
INSERT INTO `OriginDestinationRS_Inner`(`arrival`, `departure`) VALUES (?, ?);

--
-- UPDATE template for table `OriginDestinationRS_Inner`
--
UPDATE `OriginDestinationRS_Inner` SET `arrival` = ?, `departure` = ? WHERE 1;

--
-- DELETE template for table `OriginDestinationRS_Inner`
--
DELETE FROM `OriginDestinationRS_Inner` WHERE 0;

