--
-- Airline Code Lookup API.
-- Prepared SQL queries for 'Collection_Meta' definition.
--


--
-- SELECT template for table Collection_Meta
--
SELECT count, links FROM Collection_Meta WHERE 1;

--
-- INSERT template for table Collection_Meta
--
INSERT INTO Collection_Meta(count, links) VALUES (?, ?);

--
-- UPDATE template for table Collection_Meta
--
UPDATE Collection_Meta SET count = ?, links = ? WHERE 1;

--
-- DELETE template for table Collection_Meta
--
DELETE FROM Collection_Meta WHERE 0;

