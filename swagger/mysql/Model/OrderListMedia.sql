--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderListMedia' definition.
--


--
-- SELECT template for table `OrderListMedia`
--
SELECT `agencies`, `count`, `counters`, `orders` FROM `OrderListMedia` WHERE 1;

--
-- INSERT template for table `OrderListMedia`
--
INSERT INTO `OrderListMedia`(`agencies`, `count`, `counters`, `orders`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `OrderListMedia`
--
UPDATE `OrderListMedia` SET `agencies` = ?, `count` = ?, `counters` = ?, `orders` = ? WHERE 1;

--
-- DELETE template for table `OrderListMedia`
--
DELETE FROM `OrderListMedia` WHERE 0;

