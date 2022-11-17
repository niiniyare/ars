--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCommentsPayload' definition.
--


--
-- SELECT template for table `OrderCommentsPayload`
--
SELECT `comments`, `id` FROM `OrderCommentsPayload` WHERE 1;

--
-- INSERT template for table `OrderCommentsPayload`
--
INSERT INTO `OrderCommentsPayload`(`comments`, `id`) VALUES (?, ?);

--
-- UPDATE template for table `OrderCommentsPayload`
--
UPDATE `OrderCommentsPayload` SET `comments` = ?, `id` = ? WHERE 1;

--
-- DELETE template for table `OrderCommentsPayload`
--
DELETE FROM `OrderCommentsPayload` WHERE 0;

