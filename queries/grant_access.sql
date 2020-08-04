-- Grant different access levels to users
-- Admin
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO GROUP admins;

-- Worker
GRANT SELECT ON ALL TABLES IN SCHEMA public TO GROUP workers;
GRANT INSERT, UPDATE, DELETE ON task, ammunition, enemy, fighter TO GROUP workers;
