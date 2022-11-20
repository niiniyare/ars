--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'TicketCouponValid' definition.
--


--
-- SELECT template for table `TicketCouponValid`
--
SELECT `effective`, `expiration` FROM `TicketCouponValid` WHERE 1;

--
-- INSERT template for table `TicketCouponValid`
--
INSERT INTO `TicketCouponValid`(`effective`, `expiration`) VALUES (?, ?);

--
-- UPDATE template for table `TicketCouponValid`
--
UPDATE `TicketCouponValid` SET `effective` = ?, `expiration` = ? WHERE 1;

--
-- DELETE template for table `TicketCouponValid`
--
DELETE FROM `TicketCouponValid` WHERE 0;

