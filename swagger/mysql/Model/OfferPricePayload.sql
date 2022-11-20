--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OfferPricePayload' definition.
--


--
-- SELECT template for table `OfferPricePayload`
--
SELECT `offerID`, `offerIDs`, `reshopOfferID`, `services` FROM `OfferPricePayload` WHERE 1;

--
-- INSERT template for table `OfferPricePayload`
--
INSERT INTO `OfferPricePayload`(`offerID`, `offerIDs`, `reshopOfferID`, `services`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `OfferPricePayload`
--
UPDATE `OfferPricePayload` SET `offerID` = ?, `offerIDs` = ?, `reshopOfferID` = ?, `services` = ? WHERE 1;

--
-- DELETE template for table `OfferPricePayload`
--
DELETE FROM `OfferPricePayload` WHERE 0;

