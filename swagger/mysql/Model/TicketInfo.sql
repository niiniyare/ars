--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'TicketInfo' definition.
--


--
-- SELECT template for table `TicketInfo`
--
SELECT `coupons`, `dateOfIssue`, `numberOfBooklets`, `passengerRef`, `price`, `remark`, `ticketNumber`, `timeOfIssue`, `typeCode`, `typeCodeDefinition` FROM `TicketInfo` WHERE 1;

--
-- INSERT template for table `TicketInfo`
--
INSERT INTO `TicketInfo`(`coupons`, `dateOfIssue`, `numberOfBooklets`, `passengerRef`, `price`, `remark`, `ticketNumber`, `timeOfIssue`, `typeCode`, `typeCodeDefinition`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `TicketInfo`
--
UPDATE `TicketInfo` SET `coupons` = ?, `dateOfIssue` = ?, `numberOfBooklets` = ?, `passengerRef` = ?, `price` = ?, `remark` = ?, `ticketNumber` = ?, `timeOfIssue` = ?, `typeCode` = ?, `typeCodeDefinition` = ? WHERE 1;

--
-- DELETE template for table `TicketInfo`
--
DELETE FROM `TicketInfo` WHERE 0;

