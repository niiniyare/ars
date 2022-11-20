--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCreateMedia' definition.
--


--
-- SELECT template for table `OrderCreateMedia`
--
SELECT `agency`, `agencyData`, `allowedPaymentMethods`, `allowedRequests`, `approvalStatus`, `approved`, `benefits`, `bookingDate`, `bookingReference`, `bookingType`, `carbonOffset`, `comments`, `corporateID`, `createdAt`, `disclosures`, `disruptionMessage`, `disruptionStatus`, `externalOrderID`, `files`, `flights`, `formOfPayment`, `history`, `id`, `logs`, `metas`, `orderID`, `passengers`, `payment`, `paymentTimeLimit`, `penalties`, `pnr`, `price`, `priceGuaranteeTimeLimit`, `readyToTicketIssue`, `refundType`, `refundedAmount`, `remarks`, `seats`, `sendForApprovalAllowed`, `services`, `status`, `ticketIssue`, `tickets`, `updatedAt`, `viewMode`, `warnings` FROM `OrderCreateMedia` WHERE 1;

--
-- INSERT template for table `OrderCreateMedia`
--
INSERT INTO `OrderCreateMedia`(`agency`, `agencyData`, `allowedPaymentMethods`, `allowedRequests`, `approvalStatus`, `approved`, `benefits`, `bookingDate`, `bookingReference`, `bookingType`, `carbonOffset`, `comments`, `corporateID`, `createdAt`, `disclosures`, `disruptionMessage`, `disruptionStatus`, `externalOrderID`, `files`, `flights`, `formOfPayment`, `history`, `id`, `logs`, `metas`, `orderID`, `passengers`, `payment`, `paymentTimeLimit`, `penalties`, `pnr`, `price`, `priceGuaranteeTimeLimit`, `readyToTicketIssue`, `refundType`, `refundedAmount`, `remarks`, `seats`, `sendForApprovalAllowed`, `services`, `status`, `ticketIssue`, `tickets`, `updatedAt`, `viewMode`, `warnings`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `OrderCreateMedia`
--
UPDATE `OrderCreateMedia` SET `agency` = ?, `agencyData` = ?, `allowedPaymentMethods` = ?, `allowedRequests` = ?, `approvalStatus` = ?, `approved` = ?, `benefits` = ?, `bookingDate` = ?, `bookingReference` = ?, `bookingType` = ?, `carbonOffset` = ?, `comments` = ?, `corporateID` = ?, `createdAt` = ?, `disclosures` = ?, `disruptionMessage` = ?, `disruptionStatus` = ?, `externalOrderID` = ?, `files` = ?, `flights` = ?, `formOfPayment` = ?, `history` = ?, `id` = ?, `logs` = ?, `metas` = ?, `orderID` = ?, `passengers` = ?, `payment` = ?, `paymentTimeLimit` = ?, `penalties` = ?, `pnr` = ?, `price` = ?, `priceGuaranteeTimeLimit` = ?, `readyToTicketIssue` = ?, `refundType` = ?, `refundedAmount` = ?, `remarks` = ?, `seats` = ?, `sendForApprovalAllowed` = ?, `services` = ?, `status` = ?, `ticketIssue` = ?, `tickets` = ?, `updatedAt` = ?, `viewMode` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OrderCreateMedia`
--
DELETE FROM `OrderCreateMedia` WHERE 0;

