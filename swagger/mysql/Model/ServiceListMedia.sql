--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ServiceListMedia' definition.
--


--
-- SELECT template for table `ServiceListMedia`
--
SELECT `disclosures`, `passengers`, `segments`, `services`, `warnings` FROM `ServiceListMedia` WHERE 1;

--
-- INSERT template for table `ServiceListMedia`
--
INSERT INTO `ServiceListMedia`(`disclosures`, `passengers`, `segments`, `services`, `warnings`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ServiceListMedia`
--
UPDATE `ServiceListMedia` SET `disclosures` = ?, `passengers` = ?, `segments` = ?, `services` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `ServiceListMedia`
--
DELETE FROM `ServiceListMedia` WHERE 0;

