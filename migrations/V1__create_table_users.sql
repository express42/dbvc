CREATE TABLE users(
  user_id SERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  birth_year INT NOT NULL
);