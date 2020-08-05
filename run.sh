#!/usr/bin/env bash

# Create database structure
echo Create database structure
psql -d postgres -U postgres -f queries/create_db.sql
echo

# Create tables and triggers
echo Create tables and triggers
psql -d control_post_db -U owner -f queries/create_tables.sql
echo

# Insert data to tables
echo Insert data to tables
psql -d control_post_db -U owner -f queries/insert_data.sql
echo

# Grant different access levels to users
echo Grant different access levels to users
psql -d control_post_db -U owner -f queries/grant_access.sql
echo
