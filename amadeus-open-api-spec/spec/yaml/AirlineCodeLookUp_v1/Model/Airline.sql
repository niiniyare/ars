--
-- Airline Code Lookup API.
-- Prepared SQL queries for 'Airline' definition.
--


--
-- SELECT template for table `Airline`
--
SELECT `type`, `iataCode`, `icaoCode`, `businessName`, `commonName` FROM `Airline` WHERE 1;

--
-- INSERT template for table `Airline`
--
INSERT INTO `Airline`(`type`, `iataCode`, `icaoCode`, `businessName`, `commonName`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `Airline`
--
UPDATE `Airline` SET `type` = ?, `iataCode` = ?, `icaoCode` = ?, `businessName` = ?, `commonName` = ? WHERE 1;

--
-- DELETE template for table `Airline`
--
DELETE FROM `Airline` WHERE 0;

