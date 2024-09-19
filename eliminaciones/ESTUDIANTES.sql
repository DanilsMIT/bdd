drop table students

create table students(

	CI char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	birth_date date,

	constraint students_pk primary key(CI)
)

INSERT INTO students (CI, nombre, apellido, email, birth_date) VALUES 
(1835326801, 'Pablo', 'Martínez', 'raumart01@gmail.com', '04/02/2003');
(1235476801, 'Raul', 'Martínez', 'raumart01@gmail.com', '04/02/2003'),
(1735476802, 'Mario', 'Guaman', 'MarioG25@gmail.com', '08/12/2000'),
(1235476803, 'Roberto', 'Quishpe', 'RobQuishpe64@gmail.com', '29/06/2005'),
(1735476804, 'Paul', 'Noguera', 'PaulNog55@gmail.com', '22/07/2002'),
(1235476805, 'Marcelo', 'Ramos', 'MarceloR72@gmail.com', '15/08/2008'),
(1735476806, 'Anthony', 'Agual', 'KAgual22@gmail.com', '25/03/2002'),
(1235476807, 'Paula', 'Celi', 'PauCeli31@gmail.com', '30/09/2010'),
(1735476808, 'Mónica', 'Martínez', 'MoniMar15@gmail.com', '22/01/2001'),
(1235476809, 'Anabel', 'Perlaza', 'WPerlaza18@gmail.com', '12/04/2000'),
(1735476810, 'Sofía', 'Jimenez', 'SofiJz22@gmail.com', '22/01/2001');

select * from students

select (nombre,apellido) from students where nombre like 'M%' or nombre like '%Z'
select (nombre) from students where CI like '%32%' and CI like '18%'
select (nombre,apellido) from students where CI like '%06' or CI like '17&'