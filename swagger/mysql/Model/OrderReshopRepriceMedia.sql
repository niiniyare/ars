--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopRepriceMedia' definition.
--


--
-- SELECT template for table `OrderReshopRepriceMedia`
--
SELECT `benefits`, `cardSurcharges`, `disclosures`, `flights`, `offerID`, `owner`, `price`, `seatsToRebook`, `servicesToRebook`, `warnings` FROM `OrderReshopRepriceMedia` WHERE 1;

--
-- INSERT template for table `OrderReshopRepriceMedia`
--
INSERT INTO `OrderReshopRepriceMedia`(`benefits`, `cardSurcharges`, `disclosures`, `flights`, `offerID`, `owner`, `price`, `seatsToRebook`, `servicesToRebook`, `warnings`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderReshopRepriceMedia`
--
UPDATE `OrderReshopRepriceMedia` SET `benefits` = ?, `cardSurcharges` = ?, `disclosures` = ?, `flights` = ?, `offerID` = ?, `owner` = ?, `price` = ?, `seatsToRebook` = ?, `servicesToRebook` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopRepriceMedia`
--
DELETE FROM `OrderReshopRepriceMedia` WHERE 0;

