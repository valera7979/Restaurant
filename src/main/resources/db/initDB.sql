DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS deashes;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS votes;

DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100000;

CREATE TABLE users
(
  id         INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  name       VARCHAR NOT NULL,
  email      VARCHAR NOT NULL,
  password   VARCHAR NOT NULL,
  registered TIMESTAMP DEFAULT now(),
  enabled    BOOL DEFAULT TRUE
);
CREATE UNIQUE INDEX users_unique_email_idx ON users (email);

CREATE TABLE user_roles
(
  user_id INTEGER NOT NULL,
  role    VARCHAR,
  CONSTRAINT user_roles_idx UNIQUE (user_id, role),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE "restaurants" (
  id INTEGER  PRIMARY KEY DEFAULT nextval('global_seq'),
  name varchar NOT NULL
);

CREATE TABLE "dishes" (
  id          INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  "restaurant_id" integer NOT NULL,
  "description" TEXT NOT NULL,
  "price" integer NOT NULL,
  "date_time" TIMESTAMP NOT NULL,
  FOREIGN KEY (restaurant_id) REFERENCES restaurants (id) ON DELETE CASCADE
);

CREATE TABLE "votes" (
  "restaurant_id" integer NOT NULL,
  "date" TIMESTAMP NOT NULL,
  "user_id" integer NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
);
CREATE UNIQUE INDEX votes_unique_restaurant_date_idx ON votes(restaurant_id, date)
