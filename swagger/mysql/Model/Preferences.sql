--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Preferences' definition.
--


--
-- SELECT template for table `Preferences`
--
SELECT `cabin`, `discounts`, `fare`, `fareList`, `nonStop` FROM `Preferences` WHERE 1;

--
-- INSERT template for table `Preferences`
--
INSERT INTO `Preferences`(`cabin`, `discounts`, `fare`, `fareList`, `nonStop`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `Preferences`
--
UPDATE `Preferences` SET `cabin` = ?, `discounts` = ?, `fare` = ?, `fareList` = ?, `nonStop` = ? WHERE 1;

--
-- DELETE template for table `Preferences`
--
DELETE FROM `Preferences` WHERE 0;

