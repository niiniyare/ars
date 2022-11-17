--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'CardInformation' definition.
--


--
-- SELECT template for table `CardInformation`
--
SELECT `cardCode`, `cardNumber`, `expirationDate` FROM `CardInformation` WHERE 1;

--
-- INSERT template for table `CardInformation`
--
INSERT INTO `CardInformation`(`cardCode`, `cardNumber`, `expirationDate`) VALUES (?, ?, ?);

--
-- UPDATE template for table `CardInformation`
--
UPDATE `CardInformation` SET `cardCode` = ?, `cardNumber` = ?, `expirationDate` = ? WHERE 1;

--
-- DELETE template for table `CardInformation`
--
DELETE FROM `CardInformation` WHERE 0;

