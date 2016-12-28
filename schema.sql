
--  This file exists to create your database for you.
-- Anyone who clones this repo can run this file from their terminal
-- to be sure they're using the same database setup.
-- Run this to create the database, then run seed to populate it with data!
DROP TABLE IF EXISTS artwork;
CREATE TABLE artwork (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  image_url VARCHAR,
  artist INTEGER
);

DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  image_url VARCHAR
);

DROP TABLE IF EXISTS media;
CREATE TABLE media (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  image_url VARCHAR
);

DROP TABLE IF EXISTS artwork_media;
CREATE TABLE artwork_media
(
  artwork_id INTEGER NOT NULL,
  media_id INTEGER NOT NULL
);
