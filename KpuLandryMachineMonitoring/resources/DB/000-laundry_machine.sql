create table laundry_machine
(
	machine_id int auto_increment
		primary key,
	locate_floor int not null,
	machine_type char not null,
	machine_number int not null
)
comment '세탁 기기의 정보를 저장하는 테이블';

