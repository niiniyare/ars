--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderListItem' definition.
--


--
-- SELECT template for table `OrderListItem`
--
SELECT `agency`, `approveStatus`, `bookingDate`, `bookingType`, `corporateID`, `disruptionStatus`, `flights`, `id`, `orderID`, `owner`, `passengers`, `paymentTimeLimit`, `pnr`, `provider`, `status` FROM `OrderListItem` WHERE 1;

--
-- INSERT template for table `OrderListItem`
--
INSERT INTO `OrderListItem`(`agency`, `approveStatus`, `bookingDate`, `bookingType`, `corporateID`, `disruptionStatus`, `flights`, `id`, `orderID`, `owner`, `passengers`, `paymentTimeLimit`, `pnr`, `provider`, `status`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderListItem`
--
UPDATE `OrderListItem` SET `agency` = ?, `approveStatus` = ?, `bookingDate` = ?, `bookingType` = ?, `corporateID` = ?, `disruptionStatus` = ?, `flights` = ?, `id` = ?, `orderID` = ?, `owner` = ?, `passengers` = ?, `paymentTimeLimit` = ?, `pnr` = ?, `provider` = ?, `status` = ? WHERE 1;

--
-- DELETE template for table `OrderListItem`
--
DELETE FROM `OrderListItem` WHERE 0;

