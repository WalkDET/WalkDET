-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS users;

CREATE TABLE users (
id SERIAL PRIMARY KEY,
username varchar(32) NOT NULL UNIQUE,
password varchar(32) NOT NULL,
salt varchar(255) NOT NULL,
role varchar(32)
);

CREATE TABLE landmarks (
landmark_id SERIAL PRIMARY KEY,
name varchar (64) NOT NULL,
address varchar (1250) NOT NULL,
coordinate_x varchar(64) NOT NULL,
coordinate_y varchar(64) NOT NULL,
venue_type varchar(64) NOT NULL,
description varchar(8000) NOT NULL,
website varchar(1000),
images varchar(1000),
Sunday varchar (64),
Monday varchar (64),
Tuesday varchar (64),
Wednesday varchar (64),
Thursday varchar (64),
Friday varchar (64),
Saturday varchar (64)
);

CREATE TABLE user_checkins (
checkin_id SERIAL PRIMARY KEY,
username varchar(32) NOT NULL,
landmark_id int NOT NULL,
checkin_date DATE NOT NULL DEFAULT CURRENT_DATE,
CONSTRAINT fk_username FOREIGN KEY(username) REFERENCES users(username),
CONSTRAINT fk_landmark_id FOREIGN KEY(landmark_id) REFERENCES landmarks(landmark_id)
);

CREATE TABLE user_itinerary (
itinerary_id SERIAL PRIMARY KEY,
username varchar(32) NOT NULL,
landmark_id int NOT NULL,
CONSTRAINT fk_user_name FOREIGN KEY(username) REFERENCES users(username),
CONSTRAINT fk_landmark_id FOREIGN KEY(landmark_id) REFERENCES landmarks(landmark_id)
);

COMMIT;