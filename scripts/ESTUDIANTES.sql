drop table students

create table students(

	CI char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	birth_date date,

	constraint students_pk primary key(CI)
)