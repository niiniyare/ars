--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderUpdatePayload' definition.
--


--
-- SELECT template for table `OrderUpdatePayload`
--
SELECT `action`, `id`, `passengersUpdate` FROM `OrderUpdatePayload` WHERE 1;

--
-- INSERT template for table `OrderUpdatePayload`
--
INSERT INTO `OrderUpdatePayload`(`action`, `id`, `passengersUpdate`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderUpdatePayload`
--
UPDATE `OrderUpdatePayload` SET `action` = ?, `id` = ?, `passengersUpdate` = ? WHERE 1;

--
-- DELETE template for table `OrderUpdatePayload`
--
DELETE FROM `OrderUpdatePayload` WHERE 0;

