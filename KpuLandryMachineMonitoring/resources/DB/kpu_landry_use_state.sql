create table use_state
(
    start_time     datetime not null,
    end_time       datetime not null,
    student_number int      not null,
    machine_id     int      not null,
    primary key (machine_id, student_number),
    constraint use_state_laundry_machine_machine_id_fk
        foreign key (machine_id) references laundry_machine (machine_id),
    constraint use_state_student_student_number_fk
        foreign key (student_number) references student (student_number)
)
    comment '유저의 세탁 기기 사용 현황을 저장하고 있는 테이블';

INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 14:54:08', '2020-11-29 15:42:15', 2019551008, 1);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 18:06:58', '2020-11-29 18:43:01', 2019551008, 2);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-30 21:50:08', '2020-11-30 22:28:10', 2019551010, 3);
INSERT INTO kpu_landry.use_state (start_time, end_time, student_number, machine_id)
VALUES ('2020-11-29 20:43:39', '2020-11-29 21:31:43', 2019551009, 5);