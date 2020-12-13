create schema kpu_landry;

use kpu_landry;

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
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (10, 9, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (11, 9, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (12, 9, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (13, 11, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (14, 11, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (15, 11, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (16, 13, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (17, 13, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (18, 13, 'l', 2);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (19, 15, 'd', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (20, 15, 'l', 1);
INSERT INTO kpu_landry.laundry_machine (machine_id, locate_floor, machine_type, machine_number)
VALUES (21, 15, 'l', 2);

create table student
(
    student_number int         not null
        primary key,
    phone_number   char(12)    not null,
    room_number    varchar(8)  not null,
    name           varchar(20) not null,
    password       char(128)   null,
    password_salt  char(32)    null,
    email          varchar(60) not null,
    constraint student_email_uindex
        unique (email),
    constraint student_phone_number_uindex
        unique (phone_number)
)
    comment '학생들의 정보를 저장하는 테이블';

INSERT INTO kpu_landry.student (student_number, phone_number, room_number, name, password, password_salt, email)
VALUES (2019551008, '01071871279', '334', '김재광', null, null, 'rlaworhkd430@kpu.ac.kr');
INSERT INTO kpu_landry.student (student_number, phone_number, room_number, name, password, password_salt, email)
VALUES (2019551009, '01071871277', '333', '김철수', null, null, 'rlachulsu@kpu.ac.kr');
INSERT INTO kpu_landry.student (student_number, phone_number, room_number, name, password, password_salt, email)
VALUES (2019551010, '01071879721', '332', '김선화', null, null, 'senhoa@kpu.ac.kr');

create table use_state
(
    start_time     datetime not null,
    end_time       datetime not null,
    student_number int      not null,
    machine_id     int      not null,
    constraint use_state_laundry_machine_machine_id_fk
        foreign key (machine_id) references laundry_machine (machine_id),
    constraint use_state_student_student_number_fk
        foreign key (student_number) references student (student_number)
)
    comment '유저의 세탁 기기 사용 현황을 저장 하고 있는 테이블';

INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 14:54:08', '2020-11-29 15:42:15', 2019551008, 1);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 18:06:58', '2020-11-29 18:43:01', 2019551008, 2);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-30 21:50:08', '2020-11-30 22:28:10', 2019551010, 3);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 20:43:39', '2020-11-29 21:31:43', 2019551009, 5);