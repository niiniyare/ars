--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OfferPriceMedia' definition.
--


--
-- SELECT template for table `OfferPriceMedia`
--
SELECT `agencyData`, `allowedPaymentMethods`, `allowedRequests`, `benefits`, `cardSurcharges`, `createdAt`, `disclosures`, `discounts`, `extraInfoMandatory`, `flights`, `instantPayment`, `offerExpiration`, `offerID`, `owner`, `passengers`, `paymentTimeLimit`, `price`, `remarks`, `shoppingResponseID`, `specialServices`, `warnings` FROM `OfferPriceMedia` WHERE 1;

--
-- INSERT template for table `OfferPriceMedia`
--
INSERT INTO `OfferPriceMedia`(`agencyData`, `allowedPaymentMethods`, `allowedRequests`, `benefits`, `cardSurcharges`, `createdAt`, `disclosures`, `discounts`, `extraInfoMandatory`, `flights`, `instantPayment`, `offerExpiration`, `offerID`, `owner`, `passengers`, `paymentTimeLimit`, `price`, `remarks`, `shoppingResponseID`, `specialServices`, `warnings`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OfferPriceMedia`
--
UPDATE `OfferPriceMedia` SET `agencyData` = ?, `allowedPaymentMethods` = ?, `allowedRequests` = ?, `benefits` = ?, `cardSurcharges` = ?, `createdAt` = ?, `disclosures` = ?, `discounts` = ?, `extraInfoMandatory` = ?, `flights` = ?, `instantPayment` = ?, `offerExpiration` = ?, `offerID` = ?, `owner` = ?, `passengers` = ?, `paymentTimeLimit` = ?, `price` = ?, `remarks` = ?, `shoppingResponseID` = ?, `specialServices` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OfferPriceMedia`
--
DELETE FROM `OfferPriceMedia` WHERE 0;

