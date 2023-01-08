  --
  -- Airline Code Lookup API.
  -- Prepared SQL queries for 'CollectionLinks' definition.
  --


  --
  -- SELECT template for table CollectionLinks
  --
  SELECT self, next, previous, last, first, up FROM CollectionLinks WHERE 1;

  --
  -- INSERT template for table CollectionLinks
  --
  INSERT INTO CollectionLinks(self, next, previous, last, first, up) VALUES (?, ?, ?, ?, ?, ?);

  --
  -- UPDATE template for table CollectionLinks
  --
  UPDATE CollectionLinks SET self = ?, next = ?, previous = ?, last = ?, first = ?, up = ? WHERE 1;

  --
  -- DELETE template for table CollectionLinks
  --
  DELETE FROM CollectionLinks WHERE 0;

