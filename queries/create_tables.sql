-- Drop old data
DROP TABLE IF EXISTS task;
DROP TABLE IF EXISTS ammunition;
DROP TABLE IF EXISTS enemy;
DROP TABLE IF EXISTS fighter;
DROP TABLE IF EXISTS airfield;
DROP TABLE IF EXISTS enemy_pc;
DROP TABLE IF EXISTS fighter_pc;
DROP TABLE IF EXISTS fighter_description;
DROP TABLE IF EXISTS fighter_status;
DROP TABLE IF EXISTS task_status;
DROP TABLE IF EXISTS task_condition;
DROP TABLE IF EXISTS missile;
DROP TABLE IF EXISTS airfield_length_class;
DROP TABLE IF EXISTS airfield_weight_class;

-- Create tables
CREATE TABLE airfield_weight_class(
    id SERIAL PRIMARY KEY,
    class TEXT NOT NULL UNIQUE
);

CREATE TABLE airfield_length_class(
    id SERIAL PRIMARY KEY,
    class TEXT NOT NULL UNIQUE
);

CREATE TABLE missile(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE task_condition(
    id SERIAL PRIMARY KEY,
    height REAL NOT NULL CHECK(height >= 0),
    speed REAL NOT NULL CHECK(speed >= 0),
    range REAL NOT NULL CHECK(range >= 0)
);

CREATE TABLE task_status(
    id SERIAL PRIMARY KEY,
    status TEXT NOT NULL UNIQUE
);

CREATE TABLE fighter_status(
    id SERIAL PRIMARY KEY,
    status TEXT NOT NULL UNIQUE
);

CREATE TABLE fighter_description(
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL UNIQUE
);

CREATE TABLE fighter_pc(
    id SERIAL PRIMARY KEY REFERENCES fighter_description(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    name TEXT NOT NULL,
    max_speed REAL NOT NULL CHECK(max_speed >= 0),
    cruise_speed REAL NOT NULL CHECK(cruise_speed >= 0),
    max_height REAL NOT NULL CHECK(max_height >= 0),
    min_height REAL NOT NULL CHECK(min_height >= 0),
    max_range REAL NOT NULL CHECK(max_range >= 0),
    CHECK(max_height >= min_height)
);

CREATE TABLE enemy_pc(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    max_speed REAL NOT NULL CHECK(max_speed >= 0),
    max_height REAL NOT NULL CHECK(max_height >= 0),
    min_height REAL NOT NULL CHECK(min_height >= 0),
    CHECK(max_height >= min_height)
);

CREATE TABLE airfield(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    azimuth REAL NOT NULL CHECK(azimuth >= 0 AND azimuth <= 360),
    elevation REAL NOT NULL CHECK(elevation >= 0 AND elevation <= 90),
    range REAL NOT NULL CHECK(range >= 0),
    weight_class INTEGER REFERENCES airfield_weight_class(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    length_class INTEGER REFERENCES airfield_length_class(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    runway_azimuth REAL NOT NULL CHECK(azimuth >= 0 AND azimuth <= 360)
);

CREATE TABLE fighter(
    id SERIAL PRIMARY KEY,
    fighter_id INTEGER NOT NULL,
    pc_id INTEGER REFERENCES fighter_pc(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    airfield_id INTEGER REFERENCES airfield(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    status_id INTEGER REFERENCES fighter_status(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    range REAL NOT NULL CHECK(range >= 0),
    azimuth REAL NOT NULL CHECK(azimuth >= 0 AND azimuth <= 360),
    elevation REAL NOT NULL CHECK(elevation >= 0 AND elevation <= 90),
    speed REAL NOT NULL CHECK(speed >= 0),
    velocity_azimuth REAL NOT NULL CHECK(velocity_azimuth >= 0 AND velocity_azimuth <= 360),
    velocity_elevation REAL NOT NULL CHECK(velocity_elevation >= 0 AND velocity_elevation <= 90),
    fuel_reserve REAL NOT NULL CHECK(fuel_reserve >= 0),
    start_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    finish_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    CHECK(finish_dt >= start_dt)
);

CREATE TABLE enemy(
    id SERIAL PRIMARY KEY,
    enemy_id INTEGER NOT NULL,
    pc_id INTEGER REFERENCES enemy_pc(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    speed REAL NOT NULL CHECK(speed >= 0),
    range REAL NOT NULL CHECK(range >= 0),
    azimuth REAL NOT NULL CHECK(azimuth >= 0 AND azimuth <= 360),
    elevation REAL NOT NULL CHECK(elevation >= 0 AND elevation <= 90),
    start_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    finish_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    CHECK(finish_dt >= start_dt)
);

CREATE TABLE ammunition(
    id SERIAL PRIMARY KEY,
    fighter_id INTEGER REFERENCES fighter(id) ON DELETE CASCADE ON UPDATE CASCADE,
    missile_id INTEGER REFERENCES missile(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    amount INTEGER NOT NULL CHECK(amount >= 0),
    start_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    finish_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    CHECK(finish_dt >= start_dt)
);

CREATE TABLE task(
    id SERIAL PRIMARY KEY,
    task_id INTEGER NOT NULL,
    status_id INTEGER REFERENCES task_status(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    enemy_id INTEGER REFERENCES enemy(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    fighter_id INTEGER REFERENCES fighter(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    task_condition_id INTEGER REFERENCES task_condition(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    start_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    finish_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    CHECK(finish_dt >= start_dt)
);
