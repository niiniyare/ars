--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'AirDocIssuePayloadPayload' definition.
--


--
-- SELECT template for table `AirDocIssuePayloadPayload`
--
SELECT `id`, `payment` FROM `AirDocIssuePayloadPayload` WHERE 1;

--
-- INSERT template for table `AirDocIssuePayloadPayload`
--
INSERT INTO `AirDocIssuePayloadPayload`(`id`, `payment`) VALUES (?, ?);

--
-- UPDATE template for table `AirDocIssuePayloadPayload`
--
UPDATE `AirDocIssuePayloadPayload` SET `id` = ?, `payment` = ? WHERE 1;

--
-- DELETE template for table `AirDocIssuePayloadPayload`
--
DELETE FROM `AirDocIssuePayloadPayload` WHERE 0;

