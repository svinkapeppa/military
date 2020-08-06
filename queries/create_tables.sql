-- Drop old data
DROP TRIGGER IF EXISTS task_trigger ON task;

DROP TABLE IF EXISTS ammunition;
DROP TABLE IF EXISTS enemy;
DROP TABLE IF EXISTS fighter;
DROP TABLE IF EXISTS airfield;
DROP TABLE IF EXISTS enemy_pc;
DROP TABLE IF EXISTS fighter_pc;
DROP TABLE IF EXISTS fighter_description;
DROP TABLE IF EXISTS task;
DROP TABLE IF EXISTS fighter_status;
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

CREATE TABLE task(
    id SERIAL PRIMARY KEY,
    speed REAL NOT NULL CHECK(speed >= 0),
    height REAL NOT NULL CHECK(height >= 0),
    range REAL NOT NULL CHECK(range >= 0),
    start_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    finish_dt TIMESTAMP(4) WITHOUT TIME ZONE,
    CHECK(finish_dt >= start_dt)
);

CREATE TABLE fighter(
    id SERIAL PRIMARY KEY,
    fighter_id INTEGER NOT NULL,
    pc_id INTEGER REFERENCES fighter_pc(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    airfield_id INTEGER REFERENCES airfield(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    status_id INTEGER REFERENCES fighter_status(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    task_id INTEGER REFERENCES task(id) ON DELETE SET NULL ON UPDATE CASCADE,
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
    task_id INTEGER REFERENCES task(id) ON DELETE CASCADE ON UPDATE CASCADE,
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

-- Functions
CREATE OR REPLACE FUNCTION finish_task() RETURNS TRIGGER AS $$
DECLARE
    fighter_id INTEGER;
    pc_id INTEGER;
    airfield_id INTEGER;
    status_id INTEGER;
    task_id INTEGER;
    range REAL;
    azimuth REAL;
    elevation REAL;
    speed REAL;
    velocity_azimuth REAL;
    velocity_elevation REAL;
    fuel_reserve REAL;
BEGIN
    UPDATE
        enemy
    SET
        finish_dt = NEW.finish_dt
    WHERE
        enemy.task_id = NEW.id
        AND enemy.finish_dt = TIMESTAMP '5999/01/01 00:00';

    SELECT
        fighter.fighter_id, fighter.pc_id, fighter.airfield_id, fighter.status_id,
        fighter.task_id, fighter.range, fighter.azimuth, fighter.elevation, fighter.speed,
        fighter.velocity_azimuth, fighter.velocity_elevation, fighter.fuel_reserve
    INTO
        fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth,
        elevation, speed, velocity_azimuth, velocity_elevation, fuel_reserve
    FROM
        fighter
    WHERE
        fighter.task_id = NEW.id
        AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00';

    INSERT INTO fighter(
        fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
        velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
    ) VALUES(
        fighter_id, pc_id, airfield_id, status_id, NULL, range, azimuth, elevation, speed,
        velocity_azimuth, velocity_elevation, fuel_reserve, NEW.finish_dt, TIMESTAMP '5999/01/01 00:00'
    );

    RETURN NEW;
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION update_enemy() RETURNS TRIGGER AS $$
BEGIN
    UPDATE
        enemy
    SET
        finish_dt = NEW.start_dt
    WHERE
        enemy.enemy_id = NEW.enemy_id
        AND enemy.finish_dt = TIMESTAMP '5999/01/01 00:00';

    RETURN NEW;
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION update_fighter() RETURNS TRIGGER AS $$
DECLARE
    current_fighter_id INTEGER;
    row_missile_id INTEGER;
    row_amount INTEGER;
    row_start_dt TIMESTAMP;
BEGIN
    SELECT
        fighter.id
    INTO
        current_fighter_id
    FROM
        fighter
    WHERE
        fighter.fighter_id = NEW.fighter_id
        AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00';

    UPDATE
        fighter
    SET
        finish_dt = NEW.start_dt
    WHERE
        fighter.fighter_id = NEW.fighter_id
        AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00';

    FOR row_missile_id, row_amount, row_start_dt IN SELECT
        ammunition.missile_id, ammunition.amount, ammunition.start_dt
    FROM
        ammunition
    WHERE
        ammunition.fighter_id = current_fighter_id
        AND ammunition.finish_dt = TIMESTAMP '5999/01/01 00:00'
    LOOP
        UPDATE
            ammunition
        SET
            finish_dt = NEW.start_dt
        WHERE
            ammunition.fighter_id = current_fighter_id
            AND ammunition.missile_id = row_missile_id
            AND ammunition.finish_dt = TIMESTAMP '5999/01/01 00:00';

        INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
            NEW.fighter_id, row_missile_id, row_amount, row_start_dt, TIMESTAMP '5999/01/01 00:00'
        );
    END LOOP;

    RETURN NEW;
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION update_ammunition() RETURNS TRIGGER AS $$
DECLARE
    old_finish_dt TIMESTAMP;
    old_fighter_id INTEGER;
    current_fighter_id INTEGER;
BEGIN
    SELECT
        fighter.start_dt
    INTO
        old_finish_dt
    FROM
        fighter
    WHERE
        fighter.fighter_id = NEW.fighter_id
        AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00';

    SELECT
        fighter.id
    INTO
        old_fighter_id
    FROM
        fighter
    WHERE
        fighter.finish_dt = old_finish_dt
        AND fighter.fighter_id = NEW.fighter_id;

    SELECT
        fighter.id
    INTO
        current_fighter_id
    FROM
        fighter
    WHERE
        fighter.fighter_id = NEW.fighter_id
        AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00';

    UPDATE
        ammunition
    SET
        finish_dt = NEW.start_dt
    WHERE
        ammunition.fighter_id = old_fighter_id
        AND ammunition.missile_id = NEW.missile_id
        AND ammunition.finish_dt = TIMESTAMP '5999/01/01 00:00';

    INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
        current_fighter_id, NEW.missile_id, NEW.amount, NEW.start_dt, TIMESTAMP '5999/01/01 00:00'
    );

    RETURN NULL;
END;
$$ LANGUAGE PLPGSQL;

-- Triggers
CREATE TRIGGER task_trigger
BEFORE UPDATE
ON task
FOR EACH ROW
EXECUTE PROCEDURE finish_task();

CREATE TRIGGER enemy_update
BEFORE INSERT
ON enemy
FOR EACH ROW
EXECUTE PROCEDURE update_enemy();

CREATE TRIGGER fighter_update
BEFORE INSERT
ON fighter
FOR EACH ROW
EXECUTE PROCEDURE update_fighter();

CREATE TRIGGER ammunition_update
BEFORE INSERT
ON ammunition
FOR EACH ROW
WHEN (NEW.finish_dt IS NULL)
EXECUTE PROCEDURE update_ammunition();
