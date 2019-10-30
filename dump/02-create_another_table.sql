DROP TABLE IF EXISTS projects;

CREATE TABLE projects(
  project_id SERIAL NOT NULL PRIMARY KEY,
  project_name VARCHAR(32) NOT NULL,
  project_leader INT references users(user_id)
);

CREATE INDEX projects_id_leader_idx ON projects(project_id, project_leader);

INSERT INTO projects(project_name, project_leader) VALUES('Default Project', 1);