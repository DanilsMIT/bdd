 drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	ci_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,

	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta, ci_propietario, fecha_creacion, saldo) values
('10001', '12345', '2023-09-15', 1000.00),
('10002', '23456', '2023-08-22', 100.50),
('10003', '34567', '2023-09-10', 300.75),
('10004', '45678', '2023-09-05', 1000.00),
('10005', '56789', '2023-09-12', 250.00),
('10006', '67890', '2023-09-01', 100.25),
('10007', '78901', '2023-08-22', 750.30),
('10008', '89012', '2023-09-15', 500.00),
('10009', '90123', '2023-09-10', 100.00),
('10010', '01234', '2023-08-21', 900.50);

select * from cuentas

drop table usuario
create table usuario(
	ci char(5) not null,
	nombre varchar(25) not null,
	lastname varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10, 5),
	constraint usuario_pk primary key(ci)
)

alter table cuentas
add constraint cuentas_usuario_fk foreign key(ci_propietario)
references usuario(ci)

INSERT INTO usuario (ci, nombre, lastname, tipo_cuenta, limite_credito) VALUES
('12345', 'Juan', 'Pérez', 'Ahorros', 300.00),
('23456', 'María', 'Gómez', 'Corriente', 450.50),
('34567', 'Carlos', 'López', 'Ahorros', 750.75),
('45678', 'Ana', 'Martínez', 'Corriente', 600.00),
('56789', 'Luis', 'Rodríguez', 'Ahorros', 250.00),
('67890', 'Sofía', 'Hernández', 'Corriente', 150.25),
('78901', 'Javier', 'Jiménez', 'Ahorros', 500.30),
('89012', 'Laura', 'Fernández', 'Corriente', 800.00),
('90123', 'Diego', 'Sánchez', 'Ahorros', 100.00),
('01234', 'Valeria', 'Torres', 'Corriente', 900.50);

select * from usuario

--Consulta de nombres de usuario con saldo entre 100 y 1000
select cu.numero_cuenta, u.nombre FROM cuentas cu, usuario u
where cu.ci_propietario = u.ci
and cu.saldo BETWEEN '100' AND '1000';


--Consulta de datos de cuentras creadas el 22 de sep del 2022 hasta el otro año
select * from cuentas CU, usuario U 
where CU.ci_propietario=U.ci
and cu.fecha_creacion between '2022-09-22' and '2023-09-22'