--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReshopRefundPayload' definition.
--


--
-- SELECT template for table `OrderReshopRefundPayload`
--
SELECT `id`, `type` FROM `OrderReshopRefundPayload` WHERE 1;

--
-- INSERT template for table `OrderReshopRefundPayload`
--
INSERT INTO `OrderReshopRefundPayload`(`id`, `type`) VALUES (?, ?);

--
-- UPDATE template for table `OrderReshopRefundPayload`
--
UPDATE `OrderReshopRefundPayload` SET `id` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `OrderReshopRefundPayload`
--
DELETE FROM `OrderReshopRefundPayload` WHERE 0;

