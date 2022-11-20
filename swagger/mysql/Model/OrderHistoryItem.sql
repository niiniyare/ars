--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderHistoryItem' definition.
--


--
-- SELECT template for table `OrderHistoryItem`
--
SELECT `agency`, `agent`, `details`, `eventID`, `eventTime`, `id`, `price`, `tickets`, `transactionType` FROM `OrderHistoryItem` WHERE 1;

--
-- INSERT template for table `OrderHistoryItem`
--
INSERT INTO `OrderHistoryItem`(`agency`, `agent`, `details`, `eventID`, `eventTime`, `id`, `price`, `tickets`, `transactionType`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderHistoryItem`
--
UPDATE `OrderHistoryItem` SET `agency` = ?, `agent` = ?, `details` = ?, `eventID` = ?, `eventTime` = ?, `id` = ?, `price` = ?, `tickets` = ?, `transactionType` = ? WHERE 1;

--
-- DELETE template for table `OrderHistoryItem`
--
DELETE FROM `OrderHistoryItem` WHERE 0;

