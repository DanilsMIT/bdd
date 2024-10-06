drop table students

create table students(
	CI char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	birth_date date,
	code_teacher int,
	constraint students_pk primary key(CI)
)

insert into students (CI, nombre, apellido, email, birth_date,code_teacher) values
('1234567890', 'Julián', 'Martínez', 'julian.martinez@example.com', '2000-01-15',1805),
('0987654321', 'María', 'Gómenez', 'maria.gomez@example.com', '1999-02-20',1806),
('1122334455', 'Carlos', 'López', 'carlos.lopez@example.com', '1998-03-10',1805),
('2233445566', 'Ana', 'Pérez', 'ana.perez@example.com', '2001-04-05',1807),
('3344556677', 'Luis', 'Sánchez', 'luis.sanchez@example.com', '2002-05-12',1810),
('4455667788', 'Sofía', 'Ramírez', 'sofia.ramirez@example.com', '2000-06-01',1809),
('5566778899', 'Diego', 'Hernández', 'diego.hernandez@example.com', '1997-07-20',1809),
('6677889900', 'Clara', 'Fernández', 'clara.fernandez@example.com', '1996-08-15',1807);

select * from students

drop table Profesores
create table Profesores(
	code int,
	nombre varchar(50) not null,
	constraint ProfesoresPK primary key(code)
)

insert into Profesores(code,nombre)values
(1805,'Profe Alex'),
(1806,'Profe David'),
(1807,'Carlos Pepe'),
(1809,'Tia Tammy'),
(1810,'Profe Francisco.M')

alter table students
add constraint teachers_students foreign key(code_teacher)
references Profesores(code)

select * from Profesores