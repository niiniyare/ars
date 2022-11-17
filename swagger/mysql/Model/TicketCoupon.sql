--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'TicketCoupon' definition.
--


--
-- SELECT template for table `TicketCoupon`
--
SELECT `dateOfService`, `fareBasisCode`, `media`, `number`, `price`, `reference`, `remark`, `segment`, `serviceReferences`, `status`, `statusDefinition`, `valid`, `validatingAirline` FROM `TicketCoupon` WHERE 1;

--
-- INSERT template for table `TicketCoupon`
--
INSERT INTO `TicketCoupon`(`dateOfService`, `fareBasisCode`, `media`, `number`, `price`, `reference`, `remark`, `segment`, `serviceReferences`, `status`, `statusDefinition`, `valid`, `validatingAirline`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `TicketCoupon`
--
UPDATE `TicketCoupon` SET `dateOfService` = ?, `fareBasisCode` = ?, `media` = ?, `number` = ?, `price` = ?, `reference` = ?, `remark` = ?, `segment` = ?, `serviceReferences` = ?, `status` = ?, `statusDefinition` = ?, `valid` = ?, `validatingAirline` = ? WHERE 1;

--
-- DELETE template for table `TicketCoupon`
--
DELETE FROM `TicketCoupon` WHERE 0;

