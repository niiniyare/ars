--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'ClassOfService' definition.
--


--
-- SELECT template for table `ClassOfService`
--
SELECT `cabinDesignator`, `code`, `disclosureRefs`, `fare`, `fareRules`, `generalClassCode`, `refs` FROM `ClassOfService` WHERE 1;

--
-- INSERT template for table `ClassOfService`
--
INSERT INTO `ClassOfService`(`cabinDesignator`, `code`, `disclosureRefs`, `fare`, `fareRules`, `generalClassCode`, `refs`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ClassOfService`
--
UPDATE `ClassOfService` SET `cabinDesignator` = ?, `code` = ?, `disclosureRefs` = ?, `fare` = ?, `fareRules` = ?, `generalClassCode` = ?, `refs` = ? WHERE 1;

--
-- DELETE template for table `ClassOfService`
--
DELETE FROM `ClassOfService` WHERE 0;

