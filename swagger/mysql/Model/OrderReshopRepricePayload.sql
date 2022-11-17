--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopRepricePayload' definition.
--


--
-- SELECT template for table `OrderReshopRepricePayload`
--
SELECT `id`, `offerID` FROM `OrderReshopRepricePayload` WHERE 1;

--
-- INSERT template for table `OrderReshopRepricePayload`
--
INSERT INTO `OrderReshopRepricePayload`(`id`, `offerID`) VALUES (?, ?);

--
-- UPDATE template for table `OrderReshopRepricePayload`
--
UPDATE `OrderReshopRepricePayload` SET `id` = ?, `offerID` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopRepricePayload`
--
DELETE FROM `OrderReshopRepricePayload` WHERE 0;

