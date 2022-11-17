--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreateAllowedRequestsPending' definition.
--


--
-- SELECT template for table `OrderCreateAllowedRequestsPending`
--
SELECT `OrderCancel`, `OrderReprice`, `OrderSplit`, `SeatAvailability`, `ServiceList`, `TicketIssue` FROM `OrderCreateAllowedRequestsPending` WHERE 1;

--
-- INSERT template for table `OrderCreateAllowedRequestsPending`
--
INSERT INTO `OrderCreateAllowedRequestsPending`(`OrderCancel`, `OrderReprice`, `OrderSplit`, `SeatAvailability`, `ServiceList`, `TicketIssue`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderCreateAllowedRequestsPending`
--
UPDATE `OrderCreateAllowedRequestsPending` SET `OrderCancel` = ?, `OrderReprice` = ?, `OrderSplit` = ?, `SeatAvailability` = ?, `ServiceList` = ?, `TicketIssue` = ? WHERE 1;

--
-- DELETE template for table `OrderCreateAllowedRequestsPending`
--
DELETE FROM `OrderCreateAllowedRequestsPending` WHERE 0;

