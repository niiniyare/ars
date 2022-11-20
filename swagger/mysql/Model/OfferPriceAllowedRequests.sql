--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OfferPriceAllowedRequests' definition.
--


--
-- SELECT template for table `OfferPriceAllowedRequests`
--
SELECT `OrderCreateWithPayment`, `SeatAvailability`, `ServiceList` FROM `OfferPriceAllowedRequests` WHERE 1;

--
-- INSERT template for table `OfferPriceAllowedRequests`
--
INSERT INTO `OfferPriceAllowedRequests`(`OrderCreateWithPayment`, `SeatAvailability`, `ServiceList`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OfferPriceAllowedRequests`
--
UPDATE `OfferPriceAllowedRequests` SET `OrderCreateWithPayment` = ?, `SeatAvailability` = ?, `ServiceList` = ? WHERE 1;

--
-- DELETE template for table `OfferPriceAllowedRequests`
--
DELETE FROM `OfferPriceAllowedRequests` WHERE 0;

