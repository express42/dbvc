DROP VIEW IF EXISTS view_projects;

CREATE VIEW view_projects AS
SELECT p.project_id, p.project_name, u.* FROM projects p
LEFT JOIN users u ON u.user_id = p.project_leader;

DROP VIEW IF EXISTS view_users_pressure;

CREATE VIEW view_users_pressure AS
SELECT u.first_name, u.last_name, COUNT(p.project_leader) number FROM projects p
LEFT JOIN users u ON u.user_id = p.project_leader
GROUP BY p.project_leader, u.first_name, u.last_name ORDER BY number DESC;