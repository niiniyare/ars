--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderReviewPayload' definition.
--


--
-- SELECT template for table `OrderReviewPayload`
--
SELECT `action`, `id`, `reason` FROM `OrderReviewPayload` WHERE 1;

--
-- INSERT template for table `OrderReviewPayload`
--
INSERT INTO `OrderReviewPayload`(`action`, `id`, `reason`) VALUES (?, ?, ?);

--
-- UPDATE template for table `OrderReviewPayload`
--
UPDATE `OrderReviewPayload` SET `action` = ?, `id` = ?, `reason` = ? WHERE 1;

--
-- DELETE template for table `OrderReviewPayload`
--
DELETE FROM `OrderReviewPayload` WHERE 0;

