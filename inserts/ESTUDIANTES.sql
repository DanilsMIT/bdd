drop table students

create table students(

	CI char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	birth_date date,

	constraint students_pk primary key(CI)
)

insert into students (CI, nombre, apellido, email, birth_date) values
('1234567890', 'Julián', 'Martínez', 'julian.martinez@example.com', '2000-01-15'),
('0987654321', 'María', 'Gómez', 'maria.gomez@example.com', '1999-02-20'),
('1122334455', 'Carlos', 'López', 'carlos.lopez@example.com', '1998-03-10'),
('2233445566', 'Ana', 'Pérez', 'ana.perez@example.com', '2001-04-05'),
('3344556677', 'Luis', 'Sánchez', 'luis.sanchez@example.com', '2002-05-12'),
('4455667788', 'Sofía', 'Ramírez', 'sofia.ramirez@example.com', '2000-06-01'),
('5566778899', 'Diego', 'Hernández', 'diego.hernandez@example.com', '1997-07-20'),
('6677889900', 'Clara', 'Fernández', 'clara.fernandez@example.com', '1996-08-15');

select * from students
