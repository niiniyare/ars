--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Service' definition.
--


--
-- SELECT template for table `Service`
--
SELECT `bookingInstructions`, `descriptions`, `maximumQuantity`, `minimumQuantity`, `name`, `objectKey`, `price`, `properties`, `ref`, `removable`, `segmentReferences`, `serviceID`, `travelerReferences` FROM `Service` WHERE 1;

--
-- INSERT template for table `Service`
--
INSERT INTO `Service`(`bookingInstructions`, `descriptions`, `maximumQuantity`, `minimumQuantity`, `name`, `objectKey`, `price`, `properties`, `ref`, `removable`, `segmentReferences`, `serviceID`, `travelerReferences`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Service`
--
UPDATE `Service` SET `bookingInstructions` = ?, `descriptions` = ?, `maximumQuantity` = ?, `minimumQuantity` = ?, `name` = ?, `objectKey` = ?, `price` = ?, `properties` = ?, `ref` = ?, `removable` = ?, `segmentReferences` = ?, `serviceID` = ?, `travelerReferences` = ? WHERE 1;

--
-- DELETE template for table `Service`
--
DELETE FROM `Service` WHERE 0;

