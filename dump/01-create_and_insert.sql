DROP TABLE IF EXISTS users;

CREATE TABLE users(
  user_id SERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  birth_year INT NOT NULL
);

CREATE INDEX users_birth_year_idx ON users (birth_year);

INSERT INTO users(first_name, last_name, birth_year) VALUES('Default', 'Manager', 1970);
