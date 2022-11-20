--
-- AirGateway NDC JSON API.
-- Prepared SQL queries for 'Payment' definition.
--


--
-- SELECT template for table `Payment`
--
SELECT `cardCode`, `cardHolderEmail`, `cardHolderName`, `cardHolderSurname`, `cardHolderTitle`, `cardNumber`, `cardType`, `cashEmail`, `cashName`, `cashSurname`, `cashTitle`, `cityName`, `countryCode`, `expiration`, `method`, `passengerType`, `phone`, `postalCode`, `remark`, `seriesCode`, `stateProv`, `street1`, `street2`, `voucher` FROM `Payment` WHERE 1;

--
-- INSERT template for table `Payment`
--
INSERT INTO `Payment`(`cardCode`, `cardHolderEmail`, `cardHolderName`, `cardHolderSurname`, `cardHolderTitle`, `cardNumber`, `cardType`, `cashEmail`, `cashName`, `cashSurname`, `cashTitle`, `cityName`, `countryCode`, `expiration`, `method`, `passengerType`, `phone`, `postalCode`, `remark`, `seriesCode`, `stateProv`, `street1`, `street2`, `voucher`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Payment`
--
UPDATE `Payment` SET `cardCode` = ?, `cardHolderEmail` = ?, `cardHolderName` = ?, `cardHolderSurname` = ?, `cardHolderTitle` = ?, `cardNumber` = ?, `cardType` = ?, `cashEmail` = ?, `cashName` = ?, `cashSurname` = ?, `cashTitle` = ?, `cityName` = ?, `countryCode` = ?, `expiration` = ?, `method` = ?, `passengerType` = ?, `phone` = ?, `postalCode` = ?, `remark` = ?, `seriesCode` = ?, `stateProv` = ?, `street1` = ?, `street2` = ?, `voucher` = ? WHERE 1;

--
-- DELETE template for table `Payment`
--
DELETE FROM `Payment` WHERE 0;

