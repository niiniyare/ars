--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopMediaType' definition.
--


--
-- SELECT template for table `OrderReshopMediaType`
--
SELECT `benefits`, `disclosures`, `flights`, `offerID`, `offerType`, `owner`, `price`, `priceBreakdown`, `priceChange`, `warnings` FROM `OrderReshopMediaType` WHERE 1;

--
-- INSERT template for table `OrderReshopMediaType`
--
INSERT INTO `OrderReshopMediaType`(`benefits`, `disclosures`, `flights`, `offerID`, `offerType`, `owner`, `price`, `priceBreakdown`, `priceChange`, `warnings`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderReshopMediaType`
--
UPDATE `OrderReshopMediaType` SET `benefits` = ?, `disclosures` = ?, `flights` = ?, `offerID` = ?, `offerType` = ?, `owner` = ?, `price` = ?, `priceBreakdown` = ?, `priceChange` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopMediaType`
--
DELETE FROM `OrderReshopMediaType` WHERE 0;

