--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Identity4Discount' definition.
--


--
-- SELECT template for table `Identity4Discount`
--
SELECT `identityDocumentNumber`, `identityDocumentType`, `remark` FROM `Identity4Discount` WHERE 1;

--
-- INSERT template for table `Identity4Discount`
--
INSERT INTO `Identity4Discount`(`identityDocumentNumber`, `identityDocumentType`, `remark`) VALUES (?, ?, ?);

--
-- UPDATE template for table `Identity4Discount`
--
UPDATE `Identity4Discount` SET `identityDocumentNumber` = ?, `identityDocumentType` = ?, `remark` = ? WHERE 1;

--
-- DELETE template for table `Identity4Discount`
--
DELETE FROM `Identity4Discount` WHERE 0;

