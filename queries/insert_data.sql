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
INSERT INTO enemy_pc(name, type, max_speed, max_height, min_height) VALUES(
    'Неизвестно', 'Неизвестно', 0, 0, 0
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
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    1, 1, 1, 1, NULL, 997.067, 8.525, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    2, 1, 1, 3, NULL, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    3, 1, 1, 4, NULL, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    4, 2, 1, 1, NULL, 997.067, 8.525, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    5, 2, 1, 3, NULL, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    6, 2, 1, 4, NULL, 997.067, 8.525, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    7, 1, 2, 1, NULL, 3499.626, 64.589, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    8, 1, 2, 3, NULL, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    9, 1, 2, 4, NULL, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    10, 2, 2, 1, NULL, 3499.626, 64.589, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    11, 2, 2, 3, NULL, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    12, 2, 2, 4, NULL, 3499.626, 64.589, 0, 0, 0, 0, 0, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    14, 1, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    15, 1, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    17, 2, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    18, 2, 3, 1, NULL, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    20, 1, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    21, 1, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    23, 2, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    24, 2, 3, 1, NULL, 296.226, 94.741, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 12:00', TIMESTAMP '5999/01/01 00:00'
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
-- Task #1
-- Task statement
INSERT INTO task(speed, height, range, start_dt, finish_dt) VALUES(
    10, 2000, 600, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 891.712, 308.542, 15, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);

-- Units movements
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 321.415, 160.232, 15, 2450, 161.466, 15, 0.99, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 281.729, 161.466, 15, 2450, 163.035, 15, 0.98, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 242.223, 163.035, 15, 2450, 165.132, 15, 0.97, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 202.968, 165.132, 15, 2450, 168.127, 15, 0.96, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 164.099, 168.127, 15, 2450, 172.827, 15, 0.95, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 125.918, 172.827, 15, 2450, 181.305, 15, 0.94, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 89.227, 181.305, 15, 2450, 200.063, 15, 0.93, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 56.856, 200.063, 15, 2450, 244.452, 15, 0.92, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 40.669, 244.452, 15, 2450, 288.943, 15, 0.91, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 56.663, 288.943, 15, 2450, 307.767, 15, 0.9, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 88.814, 307.767, 15, 2450, 316.270, 15, 0.89, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 125.183, 316.270, 15, 2450, 320.982, 15, 0.88, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 162.923, 320.982, 15, 2450, 323.987, 15, 0.87, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 201.227, 323.987, 15, 2450, 326.094, 15, 0.86, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 239.794, 326.094, 15, 2450, 327.672, 15, 0.85, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 278.486, 327.672, 15, 2450, 328.916, 15, 0.84, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 317.234, 328.916, 15, 2450, 329.935, 15, 0.83, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 355.997, 329.935, 15, 2450, 330.794, 15, 0.82, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 394.751, 330.794, 15, 2450, 331.538, 15, 0.81, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 433.482, 331.538, 15, 2450, 332.195, 15, 0.8, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 472.177, 332.195, 15, 2450, 332.785, 15, 0.79, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 510.829, 332.785, 15, 2450, 333.322, 15, 0.78, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 549.434, 333.322, 15, 2450, 331.966, 15, 0.77, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    13, 1, 3, 2, 1, 557.373, 331.966, 15, 2450, 331.966, 15, 0.76, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 876.576, 309.147, 15, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 861.950, 309.777, 15, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 847.303, 310.434, 15, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 832.823, 311.118, 15, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 818.519, 311.830, 15, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 804.399, 312.572, 15, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 790.474, 313.346, 15, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 776.754, 314.151, 15, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 763.251, 314.989, 15, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 749.975, 315.862, 15, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 736.939, 316.771, 15, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 724.156, 317.717, 15, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 711.640, 318.700, 15, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 699.404, 319.723, 15, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 687.462, 320.787, 15, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 675.832, 321.892, 15, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 664.529, 323.039, 15, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 653.569, 324.229, 15, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 642.970, 325.464, 15, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 632.749, 326.743, 15, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 622.926, 328.068, 15, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 613.519, 329.438, 15, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 604.547, 330.853, 15, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    1, 2, 1, 900, 596.030, 332.313, 15, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt) VALUES(
    13, 3, 0, TIMESTAMP '2020/08/02 13:24'
);

-- Task completion
UPDATE task SET finish_dt = TIMESTAMP '2020/08/02 13:25' WHERE id = 1;

-- Task #2
-- Task statement
INSERT INTO task(speed, height, range, start_dt, finish_dt) VALUES(
    11, 1500, 700, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 891.712, 308.542, 15, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);

-- Units movements
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 321.415, 160.232, 15, 2450, 161.466, 15, 0.99, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 281.729, 161.466, 15, 2450, 163.035, 15, 0.98, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 242.223, 163.035, 15, 2450, 165.132, 15, 0.97, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 202.968, 165.132, 15, 2450, 168.127, 15, 0.96, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 164.099, 168.127, 15, 2450, 172.827, 15, 0.95, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 125.918, 172.827, 15, 2450, 181.305, 15, 0.94, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 89.227, 181.305, 15, 2450, 200.063, 15, 0.93, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 56.856, 200.063, 15, 2450, 244.452, 15, 0.92, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 40.669, 244.452, 15, 2450, 288.943, 15, 0.91, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 56.663, 288.943, 15, 2450, 307.767, 15, 0.9, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 88.814, 307.767, 15, 2450, 316.270, 15, 0.89, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 125.183, 316.270, 15, 2450, 320.982, 15, 0.88, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 162.923, 320.982, 15, 2450, 323.987, 15, 0.87, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 201.227, 323.987, 15, 2450, 326.094, 15, 0.86, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 239.794, 326.094, 15, 2450, 327.672, 15, 0.85, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 278.486, 327.672, 15, 2450, 328.916, 15, 0.84, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 317.234, 328.916, 15, 2450, 329.935, 15, 0.83, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 355.997, 329.935, 15, 2450, 330.794, 15, 0.82, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 394.751, 330.794, 15, 2450, 331.538, 15, 0.81, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 433.482, 331.538, 15, 2450, 332.195, 15, 0.8, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 472.177, 332.195, 15, 2450, 332.785, 15, 0.79, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 510.829, 332.785, 15, 2450, 333.322, 15, 0.78, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 549.434, 333.322, 15, 2450, 331.966, 15, 0.77, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    16, 2, 3, 2, 2, 557.373, 331.966, 15, 2450, 331.966, 15, 0.76, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 876.576, 309.147, 15, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 861.950, 309.777, 15, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 847.303, 310.434, 15, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 832.823, 311.118, 15, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 818.519, 311.830, 15, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 804.399, 312.572, 15, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 790.474, 313.346, 15, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 776.754, 314.151, 15, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 763.251, 314.989, 15, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 749.975, 315.862, 15, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 736.939, 316.771, 15, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 724.156, 317.717, 15, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 711.640, 318.700, 15, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 699.404, 319.723, 15, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 687.462, 320.787, 15, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 675.832, 321.892, 15, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 664.529, 323.039, 15, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 653.569, 324.229, 15, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 642.970, 325.464, 15, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 632.749, 326.743, 15, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 622.926, 328.068, 15, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 613.519, 329.438, 15, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 604.547, 330.853, 15, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    2, 6, 2, 1000, 596.030, 332.313, 15, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt) VALUES(
    16, 2, 0, TIMESTAMP '2020/08/02 13:24'
);

-- Task completion
UPDATE task SET finish_dt = TIMESTAMP '2020/08/02 13:25' WHERE id = 2;

-- Task #3
-- Task statement
INSERT INTO task(speed, height, range, start_dt, finish_dt) VALUES(
    10, 2000, 600, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 891.712, 308.542, 15, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);

-- Units movements
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 321.415, 160.232, 15, 2450, 161.466, 15, 0.99, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 281.729, 161.466, 15, 2450, 163.035, 15, 0.98, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 242.223, 163.035, 15, 2450, 165.132, 15, 0.97, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 202.968, 165.132, 15, 2450, 168.127, 15, 0.96, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 164.099, 168.127, 15, 2450, 172.827, 15, 0.95, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 125.918, 172.827, 15, 2450, 181.305, 15, 0.94, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 89.227, 181.305, 15, 2450, 200.063, 15, 0.93, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 56.856, 200.063, 15, 2450, 244.452, 15, 0.92, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 40.669, 244.452, 15, 2450, 288.943, 15, 0.91, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 56.663, 288.943, 15, 2450, 307.767, 15, 0.9, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 88.814, 307.767, 15, 2450, 316.270, 15, 0.89, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 125.183, 316.270, 15, 2450, 320.982, 15, 0.88, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 162.923, 320.982, 15, 2450, 323.987, 15, 0.87, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 201.227, 323.987, 15, 2450, 326.094, 15, 0.86, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 239.794, 326.094, 15, 2450, 327.672, 15, 0.85, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 278.486, 327.672, 15, 2450, 328.916, 15, 0.84, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 317.234, 328.916, 15, 2450, 329.935, 15, 0.83, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 355.997, 329.935, 15, 2450, 330.794, 15, 0.82, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 394.751, 330.794, 15, 2450, 331.538, 15, 0.81, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 433.482, 331.538, 15, 2450, 332.195, 15, 0.8, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 472.177, 332.195, 15, 2450, 332.785, 15, 0.79, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 510.829, 332.785, 15, 2450, 333.322, 15, 0.78, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 549.434, 333.322, 15, 2450, 331.966, 15, 0.77, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    19, 1, 3, 2, 3, 557.373, 331.966, 15, 2450, 331.966, 15, 0.76, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 876.576, 309.147, 15, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 861.950, 309.777, 15, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 847.303, 310.434, 15, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 832.823, 311.118, 15, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 818.519, 311.830, 15, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 804.399, 312.572, 15, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 790.474, 313.346, 15, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 776.754, 314.151, 15, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 763.251, 314.989, 15, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 749.975, 315.862, 15, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 736.939, 316.771, 15, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 724.156, 317.717, 15, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 711.640, 318.700, 15, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 699.404, 319.723, 15, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 687.462, 320.787, 15, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 675.832, 321.892, 15, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 664.529, 323.039, 15, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 653.569, 324.229, 15, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 642.970, 325.464, 15, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 632.749, 326.743, 15, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 622.926, 328.068, 15, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 613.519, 329.438, 15, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 604.547, 330.853, 15, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    3, 2, 3, 900, 596.030, 332.313, 15, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt) VALUES(
    13, 3, 0, TIMESTAMP '2020/08/02 13:24'
);

-- Task #4
-- Task statement
INSERT INTO task(speed, height, range, start_dt, finish_dt) VALUES(
    11, 1500, 700, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 891.712, 308.542, 15, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 361.242, 159.225, 0, 0, 0, 0, 1, TIMESTAMP '2020/08/02 13:00', TIMESTAMP '5999/01/01 00:00'
);

-- Units movements
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 321.415, 160.232, 15, 2450, 161.466, 15, 0.99, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 281.729, 161.466, 15, 2450, 163.035, 15, 0.98, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 242.223, 163.035, 15, 2450, 165.132, 15, 0.97, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 202.968, 165.132, 15, 2450, 168.127, 15, 0.96, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 164.099, 168.127, 15, 2450, 172.827, 15, 0.95, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 125.918, 172.827, 15, 2450, 181.305, 15, 0.94, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 89.227, 181.305, 15, 2450, 200.063, 15, 0.93, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 56.856, 200.063, 15, 2450, 244.452, 15, 0.92, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 40.669, 244.452, 15, 2450, 288.943, 15, 0.91, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 56.663, 288.943, 15, 2450, 307.767, 15, 0.9, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 88.814, 307.767, 15, 2450, 316.270, 15, 0.89, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 125.183, 316.270, 15, 2450, 320.982, 15, 0.88, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 162.923, 320.982, 15, 2450, 323.987, 15, 0.87, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 201.227, 323.987, 15, 2450, 326.094, 15, 0.86, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 239.794, 326.094, 15, 2450, 327.672, 15, 0.85, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 278.486, 327.672, 15, 2450, 328.916, 15, 0.84, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 317.234, 328.916, 15, 2450, 329.935, 15, 0.83, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 355.997, 329.935, 15, 2450, 330.794, 15, 0.82, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 394.751, 330.794, 15, 2450, 331.538, 15, 0.81, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 433.482, 331.538, 15, 2450, 332.195, 15, 0.8, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 472.177, 332.195, 15, 2450, 332.785, 15, 0.79, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 510.829, 332.785, 15, 2450, 333.322, 15, 0.78, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 549.434, 333.322, 15, 2450, 331.966, 15, 0.77, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO fighter(
    fighter_id, pc_id, airfield_id, status_id, task_id, range, azimuth, elevation, speed,
    velocity_azimuth, velocity_elevation, fuel_reserve, start_dt, finish_dt
) VALUES(
    22, 2, 3, 2, 4, 557.373, 331.966, 15, 2450, 331.966, 15, 0.76, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 876.576, 309.147, 15, TIMESTAMP '2020/08/02 13:01', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 861.950, 309.777, 15, TIMESTAMP '2020/08/02 13:02', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 847.303, 310.434, 15, TIMESTAMP '2020/08/02 13:03', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 832.823, 311.118, 15, TIMESTAMP '2020/08/02 13:04', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 818.519, 311.830, 15, TIMESTAMP '2020/08/02 13:05', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 804.399, 312.572, 15, TIMESTAMP '2020/08/02 13:06', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 790.474, 313.346, 15, TIMESTAMP '2020/08/02 13:07', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 776.754, 314.151, 15, TIMESTAMP '2020/08/02 13:08', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 763.251, 314.989, 15, TIMESTAMP '2020/08/02 13:09', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 749.975, 315.862, 15, TIMESTAMP '2020/08/02 13:10', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 736.939, 316.771, 15, TIMESTAMP '2020/08/02 13:11', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 724.156, 317.717, 15, TIMESTAMP '2020/08/02 13:12', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 711.640, 318.700, 15, TIMESTAMP '2020/08/02 13:13', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 699.404, 319.723, 15, TIMESTAMP '2020/08/02 13:14', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 687.462, 320.787, 15, TIMESTAMP '2020/08/02 13:15', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 675.832, 321.892, 15, TIMESTAMP '2020/08/02 13:16', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 664.529, 323.039, 15, TIMESTAMP '2020/08/02 13:17', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 653.569, 324.229, 15, TIMESTAMP '2020/08/02 13:18', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 642.970, 325.464, 15, TIMESTAMP '2020/08/02 13:19', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 632.749, 326.743, 15, TIMESTAMP '2020/08/02 13:20', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 622.926, 328.068, 15, TIMESTAMP '2020/08/02 13:21', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 613.519, 329.438, 15, TIMESTAMP '2020/08/02 13:22', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 604.547, 330.853, 15, TIMESTAMP '2020/08/02 13:23', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO enemy(enemy_id, pc_id, task_id, speed, range, azimuth, elevation, start_dt, finish_dt) VALUES(
    4, 6, 4, 1000, 596.030, 332.313, 15, TIMESTAMP '2020/08/02 13:24', TIMESTAMP '5999/01/01 00:00'
);
INSERT INTO ammunition(fighter_id, missile_id, amount, start_dt) VALUES(
    16, 2, 0, TIMESTAMP '2020/08/02 13:24'
);
