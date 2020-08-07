-- CASE: Create task
-- Create an actual task entity
INSERT INTO task(speed, height, range, start_dt, finish_dt) VALUES(
    1300, 12, 800, TIMESTAMP '2020/08/02 14:00', TIMESTAMP '5999/01/01 00:00'
);
-- Link new enemy unit with the task
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    5, 6, 5, 1000, 891.712, 308.542, 1, TIMESTAMP '2020/08/02 14:00', TIMESTAMP '5999/01/01 00:00'
);
-- Assign some fighter to the task
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    23, 2, 3, 2, 5, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 14:00', TIMESTAMP '5999/01/01 00:00'
);
-- Show that old fighter data is locked in
SELECT
    fighter.status_id, fighter.task_id, fighter.start_dt, fighter.finish_dt
FROM
    fighter
WHERE
    fighter.fighter_id = 23;

-- CASE: Select all free fighters located at the Lipetsk-2 airfield that can reach speed more than 2700 km/h
SELECT
    fighter.fighter_id
FROM
    fighter
    JOIN
        airfield
        ON
            fighter.airfield_id = airfield.id
    JOIN
        fighter_pc
        ON
            fighter.pc_id = fighter_pc.id
WHERE
    fighter.task_id IS NULL
    AND fighter.finish_dt = TIMESTAMP '5999/01/01 00:00'
    AND airfield.name = 'Липецк-2'
    AND fighter_pc.max_speed >= 2700;

-- CASE: Select all current unknown interception tasks, where speed is more than 1000 km/h and height is in the range of 15-17 km
SELECT
    enemy.enemy_id
FROM
    enemy
    JOIN
        enemy_pc
        ON
            enemy.pc_id = enemy_pc.id
WHERE
    enemy.speed >= 1000
    AND 10 <= range * TAN(RADIANS(enemy.elevation))
    AND 16 >= range * TAN(RADIANS(enemy.elevation))
    AND enemy.finish_dt = TIMESTAMP '5999/01/01 00:00'
    AND enemy_pc.type = 'Неизвестно';

-- CASE: Update fuel reserve and ammunition info of some fighter
-- Update fighter fuel reserve
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 557.373, 331.966, 1, 2450, 331.966, 1, 0.75, TIMESTAMP '2020/08/02 13:25', TIMESTAMP '5999/01/01 00:00'
);
-- Update fighter ammunition info
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt) VALUES(
    22, 1, 0, TIMESTAMP '2020/08/02 13:25'
);
-- Show that old fighter data is locked in
SELECT
    fighter.status_id, fighter.task_id, fighter.fuel_reserve, fighter.start_dt, fighter.finish_dt
FROM
    fighter
WHERE
    fighter.fighter_id = 22;
-- Show that old fighter ammunition data is locked in
SELECT
    fighter.id, ammunition.missile_id, ammunition.amount, ammunition.start_dt,
    ammunition.finish_dt, fighter.start_dt, fighter.finish_dt
FROM
    fighter
    JOIN
        ammunition
        ON
            fighter.id = ammunition.fighter_id
WHERE
    fighter.fighter_id = 22;

-- CASE: Delete completed tasks
-- Show all tasks (old + new)
SELECT
    *
FROM
    task;
-- Delete old rows
DELETE FROM
    task
WHERE 
    task.finish_dt != TIMESTAMP '5999/01/01 00:00';
-- Show active tasks
SELECT
    *
FROM
    task;
