--
-- Airline Code Lookup API.
-- Prepared SQL queries for 'Issue' definition.
--


--
-- SELECT template for table Issue
--
SELECT status, code, title, detail, source FROM Issue WHERE 1;

--
-- INSERT template for table Issue
--
INSERT INTO Issue(status, code, title, detail, source) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table Issue
--
UPDATE Issue SET status = ?, code = ?, title = ?, detail = ?, source = ? WHERE 1;

--
-- DELETE template for table Issue
--
DELETE FROM Issue WHERE 0;

