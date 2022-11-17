--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Address' definition.
--


--
-- SELECT template for table `Address`
--
SELECT `cityName`, `countryCode`, `postalCode`, `street` FROM `Address` WHERE 1;

--
-- INSERT template for table `Address`
--
INSERT INTO `Address`(`cityName`, `countryCode`, `postalCode`, `street`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `Address`
--
UPDATE `Address` SET `cityName` = ?, `countryCode` = ?, `postalCode` = ?, `street` = ? WHERE 1;

--
-- DELETE template for table `Address`
--
DELETE FROM `Address` WHERE 0;

