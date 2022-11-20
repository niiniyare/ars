--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'PreferencesAS' definition.
--


--
-- SELECT template for table `PreferencesAS`
--
SELECT `cabin`, `discounts`, `fare`, `fareList`, `maxDuration`, `maxDurationRatio`, `maxStops`, `nonStop` FROM `PreferencesAS` WHERE 1;

--
-- INSERT template for table `PreferencesAS`
--
INSERT INTO `PreferencesAS`(`cabin`, `discounts`, `fare`, `fareList`, `maxDuration`, `maxDurationRatio`, `maxStops`, `nonStop`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PreferencesAS`
--
UPDATE `PreferencesAS` SET `cabin` = ?, `discounts` = ?, `fare` = ?, `fareList` = ?, `maxDuration` = ?, `maxDurationRatio` = ?, `maxStops` = ?, `nonStop` = ? WHERE 1;

--
-- DELETE template for table `PreferencesAS`
--
DELETE FROM `PreferencesAS` WHERE 0;

