-- Drop old data
-- Drop database first, because it user `owner` depends on it
DROP DATABASE IF EXISTS control_post_db;

DROP USER IF EXISTS owner;
DROP USER IF EXISTS admin;
DROP USER IF EXISTS worker;

DROP GROUP IF EXISTS admins;
DROP GROUP IF EXISTS workers;

-- Create groups
CREATE GROUP admins;
CREATE GROUP workers;

-- Create users with different access rights
CREATE USER owner WITH
    SUPERUSER ENCRYPTED PASSWORD 'password';
CREATE USER admin WITH
    ENCRYPTED PASSWORD 'password';
CREATE USER worker WITH
    ENCRYPTED PASSWORD 'password';

-- Add users to groups
ALTER GROUP admins ADD USER admin;
ALTER GROUP workers ADD USER worker;

-- Create database
CREATE DATABASE control_post_db WITH
    OWNER owner
    ENCODING 'UTF-8';
