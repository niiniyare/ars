--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderMetasPayload' definition.
--


--
-- SELECT template for table `OrderMetasPayload`
--
SELECT `id`, `metas` FROM `OrderMetasPayload` WHERE 1;

--
-- INSERT template for table `OrderMetasPayload`
--
INSERT INTO `OrderMetasPayload`(`id`, `metas`) VALUES (?, ?);

--
-- UPDATE template for table `OrderMetasPayload`
--
UPDATE `OrderMetasPayload` SET `id` = ?, `metas` = ? WHERE 1;

--
-- DELETE template for table `OrderMetasPayload`
--
DELETE FROM `OrderMetasPayload` WHERE 0;

