CREATE TABLE satellite (
  satellite_id serial,
  name varchar(255) NOT NULL,
  name_alternate varchar(255) DEFAULT NULL,
  country_un varchar(255) DEFAULT NULL,
  country_owner varchar(255) DEFAULT NULL,
  owner varchar(255) DEFAULT NULL,
  users varchar(255) DEFAULT NULL,
  purpose varchar(255) DEFAULT NULL,
  purpose_detailed varchar(255) DEFAULT NULL,
  orbit varchar(10) DEFAULT NULL,
  type varchar(255) DEFAULT NULL,
  longitude_geo float DEFAULT NULL,
  perigee float DEFAULT NULL,
  apogee float DEFAULT NULL,
  eccentricity float DEFAULT NULL,
  inclination float DEFAULT NULL,
  period float DEFAULT NULL,
  launch_mass float DEFAULT NULL,
  dry_mass float DEFAULT NULL,
  power float DEFAULT NULL,
  launch_date timestamp NULL DEFAULT NULL,
  lifetime varchar(255) DEFAULT NULL,
  contractor varchar(255) DEFAULT NULL,
  country_contractor varchar(255) DEFAULT NULL,
  launch_site varchar(255) DEFAULT NULL,
  launch_vehicule varchar(255) NULL DEFAULT NULL,
  cospar varchar(255) DEFAULT NULL,
  norad varchar(255) DEFAULT NULL,
  comments text,
  source_orbital varchar(255) DEFAULT NULL,
  sources text,
  model varchar(255) DEFAULT NULL,
  icon varchar(255) DEFAULT NULL,
  wikipedia varchar(255) DEFAULT NULL,
  image varchar(255) DEFAULT NULL,
  image_copyright varchar(255) DEFAULT NULL
);

ALTER TABLE satellite ADD PRIMARY KEY (satellite_id);
CREATE INDEX name_idx ON satellite USING btree(name);