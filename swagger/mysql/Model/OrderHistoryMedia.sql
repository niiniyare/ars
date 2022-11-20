--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderHistoryMedia' definition.
--


--
-- SELECT template for table `OrderHistoryMedia`
--
SELECT `count`, `history` FROM `OrderHistoryMedia` WHERE 1;

--
-- INSERT template for table `OrderHistoryMedia`
--
INSERT INTO `OrderHistoryMedia`(`count`, `history`) VALUES (?, ?);

--
-- UPDATE template for table `OrderHistoryMedia`
--
UPDATE `OrderHistoryMedia` SET `count` = ?, `history` = ? WHERE 1;

--
-- DELETE template for table `OrderHistoryMedia`
--
DELETE FROM `OrderHistoryMedia` WHERE 0;

