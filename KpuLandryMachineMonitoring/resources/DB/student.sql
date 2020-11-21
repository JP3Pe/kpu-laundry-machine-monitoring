create table student
(
	student_number int not null
		primary key,
	phone_number char(12) not null,
	room_number varchar(8) not null,
	name varchar(20) not null,
	password char(128) not null,
	password_salt char(32) not null,
	email varchar(60) not null,
	constraint student_email_uindex
		unique (email),
	constraint student_phone_number_uindex
		unique (phone_number)
)
comment '학생들의 정보를 저장하는 테이블';

