create table laundry_machine
(
    machine_id     int auto_increment
        primary key,
    locate_floor   int  not null,
    machine_type   char not null,
    machine_number int  not null
)
    comment '세탁 기기의 정보를 저장하는 테이블';

INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (1, 3, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (2, 3, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (3, 3, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (4, 5, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (5, 5, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (6, 5, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (7, 7, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (8, 7, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (9, 7, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (10, 9, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (11, 9, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (12, 9, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (13, 11, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (14, 11, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (15, 11, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (16, 13, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (17, 13, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (18, 13, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (19, 15, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (20, 15, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number) VALUES (21, 15, 'l', 2);