--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ItineraryRS' definition.
--


--
-- SELECT template for table `ItineraryRS`
--
SELECT `createdAt`, `flights`, `maxNumberOfStops`, `offerType`, `options`, `owner`, `paymentTimeLimit` FROM `ItineraryRS` WHERE 1;

--
-- INSERT template for table `ItineraryRS`
--
INSERT INTO `ItineraryRS`(`createdAt`, `flights`, `maxNumberOfStops`, `offerType`, `options`, `owner`, `paymentTimeLimit`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ItineraryRS`
--
UPDATE `ItineraryRS` SET `createdAt` = ?, `flights` = ?, `maxNumberOfStops` = ?, `offerType` = ?, `options` = ?, `owner` = ?, `paymentTimeLimit` = ? WHERE 1;

--
-- DELETE template for table `ItineraryRS`
--
DELETE FROM `ItineraryRS` WHERE 0;

