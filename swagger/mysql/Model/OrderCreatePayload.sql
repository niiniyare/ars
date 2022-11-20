--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreatePayload' definition.
--


--
-- SELECT template for table `OrderCreatePayload`
--
SELECT `corporateID`, `loyaltyProgramAccount`, `metas`, `passengers`, `payment`, `remarks`, `shoppingResponseID` FROM `OrderCreatePayload` WHERE 1;

--
-- INSERT template for table `OrderCreatePayload`
--
INSERT INTO `OrderCreatePayload`(`corporateID`, `loyaltyProgramAccount`, `metas`, `passengers`, `payment`, `remarks`, `shoppingResponseID`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderCreatePayload`
--
UPDATE `OrderCreatePayload` SET `corporateID` = ?, `loyaltyProgramAccount` = ?, `metas` = ?, `passengers` = ?, `payment` = ?, `remarks` = ?, `shoppingResponseID` = ? WHERE 1;

--
-- DELETE template for table `OrderCreatePayload`
--
DELETE FROM `OrderCreatePayload` WHERE 0;

