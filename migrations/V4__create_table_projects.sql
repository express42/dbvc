CREATE TABLE projects(
  project_id SERIAL NOT NULL PRIMARY KEY,
  project_name VARCHAR(32) NOT NULL,
  project_leader INT references users(user_id)
);