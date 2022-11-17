--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AirShoppingOffer' definition.
--


--
-- SELECT template for table `AirShoppingOffer`
--
SELECT `benefits`, `createdAt`, `disclosures`, `error`, `flights`, `maxNumberOfStops`, `offerID`, `offerType`, `owner`, `paymentTimeLimit`, `price`, `priceBreakdown`, `provider` FROM `AirShoppingOffer` WHERE 1;

--
-- INSERT template for table `AirShoppingOffer`
--
INSERT INTO `AirShoppingOffer`(`benefits`, `createdAt`, `disclosures`, `error`, `flights`, `maxNumberOfStops`, `offerID`, `offerType`, `owner`, `paymentTimeLimit`, `price`, `priceBreakdown`, `provider`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `AirShoppingOffer`
--
UPDATE `AirShoppingOffer` SET `benefits` = ?, `createdAt` = ?, `disclosures` = ?, `error` = ?, `flights` = ?, `maxNumberOfStops` = ?, `offerID` = ?, `offerType` = ?, `owner` = ?, `paymentTimeLimit` = ?, `price` = ?, `priceBreakdown` = ?, `provider` = ? WHERE 1;

--
-- DELETE template for table `AirShoppingOffer`
--
DELETE FROM `AirShoppingOffer` WHERE 0;

