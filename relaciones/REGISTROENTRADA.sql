drop table registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registro_entrada_PK primary key(codigo_registro)
)

drop table Empleados
create table Empleados(
	codeE int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint EmpleadoPK primary key(codeE)
)

alter table registros_entrada
add constraint entrada_empleadosFK 
foreign key(codigo_empleado)
references Empleados(codeE)

select * from registros_entrada
select * from Empleados

INSERT INTO Empleados (codeE, nombre, fecha, hora) VALUES 
(2201, 'Fernando López', '2023-08-01', '08:00:00'),
(2202, 'Lucía Fernández', '2023-08-05', '08:10:00'),
(2203, 'Jorge Ramírez', '2023-08-06', '08:15:00'),
(2204, 'Sofía Morales', '2023-08-07', '08:20:00'),
(2205, 'Diego Castro', '2023-08-08', '08:25:00');

INSERT INTO registros_entrada (codigo_registro, fecha, hora, codigo_empleado) VALUES 
(1, '2023-10-05', '09:30:00', 2201),
(2, '2023-11-10', '08:15:00', 2201),
(3, '2023-09-15', '10:15:00', 2201),
(4, '2023-12-01', '08:45:00', 2201),
(5, '2023-08-06', '09:15:00', 2202),
(6, '2023-11-20', '11:00:00', 2202),
(7, '2023-10-07', '08:50:00', 2203),
(8, '2023-09-12', '09:30:00', 2203),
(9, '2023-12-15', '10:00:00', 2204),
(10, '2023-08-13', '08:15:00', 2205);

