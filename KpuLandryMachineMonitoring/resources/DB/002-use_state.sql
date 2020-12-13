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

