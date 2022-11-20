--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Document' definition.
--


--
-- SELECT template for table `Document`
--
SELECT `documentID`, `documentType`, `expirationDate` FROM `Document` WHERE 1;

--
-- INSERT template for table `Document`
--
INSERT INTO `Document`(`documentID`, `documentType`, `expirationDate`) VALUES (?, ?, ?);

--
-- UPDATE template for table `Document`
--
UPDATE `Document` SET `documentID` = ?, `documentType` = ?, `expirationDate` = ? WHERE 1;

--
-- DELETE template for table `Document`
--
DELETE FROM `Document` WHERE 0;

