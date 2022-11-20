--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'TicketCouponAirlineInfoDepartureArrivalDateTime' definition.
--


--
-- SELECT template for table `TicketCouponAirlineInfoDepartureArrivalDateTime`
--
SELECT `date`, `time` FROM `TicketCouponAirlineInfoDepartureArrivalDateTime` WHERE 1;

--
-- INSERT template for table `TicketCouponAirlineInfoDepartureArrivalDateTime`
--
INSERT INTO `TicketCouponAirlineInfoDepartureArrivalDateTime`(`date`, `time`) VALUES (?, ?);

--
-- UPDATE template for table `TicketCouponAirlineInfoDepartureArrivalDateTime`
--
UPDATE `TicketCouponAirlineInfoDepartureArrivalDateTime` SET `date` = ?, `time` = ? WHERE 1;

--
-- DELETE template for table `TicketCouponAirlineInfoDepartureArrivalDateTime`
--
DELETE FROM `TicketCouponAirlineInfoDepartureArrivalDateTime` WHERE 0;

