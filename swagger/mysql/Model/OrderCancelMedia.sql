--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'OrderCancelMedia' definition.
--


--
-- SELECT template for table `OrderCancelMedia`
--
SELECT `orderID`, `warnings` FROM `OrderCancelMedia` WHERE 1;

--
-- INSERT template for table `OrderCancelMedia`
--
INSERT INTO `OrderCancelMedia`(`orderID`, `warnings`) VALUES (?, ?);

--
-- UPDATE template for table `OrderCancelMedia`
--
UPDATE `OrderCancelMedia` SET `orderID` = ?, `warnings` = ? WHERE 1;

--
-- DELETE template for table `OrderCancelMedia`
--
DELETE FROM `OrderCancelMedia` WHERE 0;

