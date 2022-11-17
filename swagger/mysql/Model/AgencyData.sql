--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AgencyData' definition.
--


--
-- SELECT template for table `AgencyData`
--
SELECT `countryCode`, `iataCode` FROM `AgencyData` WHERE 1;

--
-- INSERT template for table `AgencyData`
--
INSERT INTO `AgencyData`(`countryCode`, `iataCode`) VALUES (?, ?);

--
-- UPDATE template for table `AgencyData`
--
UPDATE `AgencyData` SET `countryCode` = ?, `iataCode` = ? WHERE 1;

--
-- DELETE template for table `AgencyData`
--
DELETE FROM `AgencyData` WHERE 0;

