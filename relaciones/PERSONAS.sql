drop table persona
create table persona (
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10, 2),
    fecha_nacimiento date not null,
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int,
	constraint personaPK primary key(cedula)
)

drop table prestamo
create table prestamo (
    cedulaP char(10) not null,
    monto money,
    fecha_prestamo date not null,
    hora_prestamo time,
    garante varchar(40),
	constraint prestamos primary key(cedulaP)
)

alter table prestamo
add constraint persona_prestamoFK foreign key(cedulaP)
references persona(cedula)

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) values
('1234567890', 'Juan', 'Pérez', 1.75, '1990-05-15', '08:30:00', 1500.00, 2),
('2345678901', 'María', 'Gómez', 1.62, '1985-08-27', '09:00:00', 2000.00, 1),
('3456789012', 'Luis', 'Martínez', 1.80, '1992-01-10', '10:00:00', 1200.50, 0),
('4567890123', 'Ana', 'López', 1.68, '1988-12-22', '07:45:00', 1800.25, 3),
('5678901234', 'Carlos', 'Fernández', 1.77, '1995-03-18', '11:15:00', 900.75, 2),
('6789012345', 'Laura', 'Díaz', 1.65, '1991-07-05', '12:00:00', 2500.00, 1),
('7890123456', 'Sean', 'Smith', 1.70, '1989-04-10', '13:30:00', 1300.00, 0),
('8901234567', 'Pedro', 'Ramírez', 1.82, '1993-11-11', '14:00:00', 1800.50, 2),
('9012345678', 'Sofía', 'Torres', 1.60, '1994-02-02', '15:00:00', 1100.00, 1),
('0123456789', 'Javier', 'Cruz', 1.78, '1990-09-30', '16:00:00', 2000.00, 0);


insert into prestamo (cedulaP, monto, fecha_prestamo, hora_prestamo, garante) values
('6789012345', 780.00, '2023-06-20', '10:00:00', 'Luis Martínez'),
('1234567890', 850.00, '2023-01-15', '14:30:00', 'Carlos Fernández'),
('8901234567', 400.00, '2023-08-25', '12:30:00', 'Ana López'),
('4567890123', 320.00, '2023-04-05', '17:30:00', 'María Gómez'),
('5678901234', 650.75, '2023-05-12', '09:45:00', 'Juan Pérez'),
('9012345678', 670.25, '2023-09-30', '13:45:00', 'Laura Díaz'),
('2345678901', 450.00, '2023-02-20', '15:00:00', 'Ana López'),
('3456789012', 950.00, '2023-03-10', '16:15:00', 'Laura Díaz'),
('0123456789', 150.00, '2023-10-10', '14:00:00', 'Juan Pérez'),
('7890123456', 250.00, '2023-07-15', '11:15:00', 'Carlos Fernández');

select * from persona
select * from prestamo


