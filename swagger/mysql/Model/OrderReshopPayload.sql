--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopPayload' definition.
--


--
-- SELECT template for table `OrderReshopPayload`
--
SELECT `id`, `originDestinations`, `preferences` FROM `OrderReshopPayload` WHERE 1;

--
-- INSERT template for table `OrderReshopPayload`
--
INSERT INTO `OrderReshopPayload`(`id`, `originDestinations`, `preferences`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderReshopPayload`
--
UPDATE `OrderReshopPayload` SET `id` = ?, `originDestinations` = ?, `preferences` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopPayload`
--
DELETE FROM `OrderReshopPayload` WHERE 0;

