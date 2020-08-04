-- Make datetime-sorting easy
set DATESTYLE to 'YMD';

-- Defautl values
-- airfield_weight_class
INSERT INTO airfield_weight_class(class) VALUES('Вне класса');
INSERT INTO airfield_weight_class(class) VALUES('1');
INSERT INTO airfield_weight_class(class) VALUES('2');
INSERT INTO airfield_weight_class(class) VALUES('3');
INSERT INTO airfield_weight_class(class) VALUES('4');

-- airfield_length_class
INSERT INTO airfield_length_class(class) VALUES('А');
INSERT INTO airfield_length_class(class) VALUES('Б');
INSERT INTO airfield_length_class(class) VALUES('В');
INSERT INTO airfield_length_class(class) VALUES('Г');
INSERT INTO airfield_length_class(class) VALUES('Д');
INSERT INTO airfield_length_class(class) VALUES('Е');

-- missile
INSERT INTO missile(name) VALUES('Р-37');
INSERT INTO missile(name) VALUES('Р-77');
INSERT INTO missile(name) VALUES('КС-172');

-- task_status
INSERT INTO task_status(status) VALUES('Наводить');
INSERT INTO task_status(status) VALUES('Атака состоялась');

-- fighter_status
INSERT INTO fighter_status(status) VALUES('Свободен');
INSERT INTO fighter_status(status) VALUES('На боевом задании');
INSERT INTO fighter_status(status) VALUES('На ремонте');
INSERT INTO fighter_status(status) VALUES('Выведен из строя');

-- fighter_description
INSERT INTO fighter_description(description) VALUES(
    'Перспективный российский многофункциональный истребитель пятого поколения'
);
INSERT INTO fighter_description(description) VALUES(
    'Российский многофункциональный лёгкий истребитель поколения «4++»'
);

-- fighter_pc
INSERT INTO fighter_pc(name, max_speed, cruise_speed, max_height, min_height, max_range) VALUES(
    'Су-57', 3000, 2450, 20, 0, 2000
);
INSERT INTO fighter_pc(name, max_speed, cruise_speed, max_height, min_height, max_range) VALUES(
    'МиГ-35', 2560, 1223, 16, 0, 1000
);

-- enemy_pc
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'Minuteman III', 'МБР', 24100, 1100, 0
);
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'F-15', 'Истребитель', 2655, 20, 0
);
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'F-16', 'Истребитель', 2120, 15.24, 0
);
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'B-52', 'Бомбардировщик', 957, 16.765, 0
);
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'B-2', 'Бомбардировщик', 1010, 15.24, 0
);

-- airfield
INSERT INTO airfield(name, azimuth, elevation, range, weight_class, length_class, runway_azimuth) VALUES(
    'Талаги', 8.525, 0, 997.067, 2, 2, 260
);
INSERT INTO airfield(name, azimuth, elevation, range, weight_class, length_class, runway_azimuth) VALUES(
    'Канск', 64.589, 0, 3499.626, 2, 1, 230
);
INSERT INTO airfield(name, azimuth, elevation, range, weight_class, length_class, runway_azimuth) VALUES(
    'Липецк-2', 159.225, 0, 361.242, 1, 1, 330
);
INSERT INTO airfield(name, azimuth, elevation, range, weight_class, length_class, runway_azimuth) VALUES(
    'Саваслейка', 94.741, 0, 296.226, 2, 1, 200
);

-- fighter
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    1, 1, 1, 1, 997.067, 8.525, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    2, 1, 1, 3, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    3, 1, 1, 4, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    4, 2, 1, 1, 997.067, 8.525, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    5, 2, 1, 3, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    6, 2, 1, 4, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    7, 1, 2, 1, 3499.626, 64.589, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    8, 1, 2, 3, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    9, 1, 2, 4, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    10, 2, 2, 1, 3499.626, 64.589, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    11, 2, 2, 3, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    12, 2, 2, 4, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    14, 1, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    15, 1, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    17, 2, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    18, 2, 3, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);

INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    20, 1, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    21, 1, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    23, 2, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    24, 2, 3, 1, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);

-- ammunition
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    1, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    4, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    4, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    7, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    10, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    10, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    13, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    14, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    15, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    16, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    16, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    17, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    17, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    18, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    18, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    19, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    20, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    21, 3, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    22, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    22, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    23, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    23, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    24, 1, 3, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt, finish_dt) VALUES(
    24, 2, 6, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);

-- Action immitation
-- task_condition
-- enemy
-- fighter
-- ammunition
-- task
