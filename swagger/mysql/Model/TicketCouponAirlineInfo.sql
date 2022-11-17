--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'TicketCouponAirlineInfo' definition.
--


--
-- SELECT template for table `TicketCouponAirlineInfo`
--
SELECT `arrival`, `arrivalDateTime`, `departure`, `departureDateTime`, `equipment`, `marketingCarrier`, `status` FROM `TicketCouponAirlineInfo` WHERE 1;

--
-- INSERT template for table `TicketCouponAirlineInfo`
--
INSERT INTO `TicketCouponAirlineInfo`(`arrival`, `arrivalDateTime`, `departure`, `departureDateTime`, `equipment`, `marketingCarrier`, `status`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `TicketCouponAirlineInfo`
--
UPDATE `TicketCouponAirlineInfo` SET `arrival` = ?, `arrivalDateTime` = ?, `departure` = ?, `departureDateTime` = ?, `equipment` = ?, `marketingCarrier` = ?, `status` = ? WHERE 1;

--
-- DELETE template for table `TicketCouponAirlineInfo`
--
DELETE FROM `TicketCouponAirlineInfo` WHERE 0;

