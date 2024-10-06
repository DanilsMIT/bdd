drop table Compras
create table Compras(
	id_compra int not null,
	cedula_Comprador char(10) not null,
	fecha_compra date,
	monto decimal(10,2) not null,
	constraint ComprasPK primary key (id_compra)
)

drop table clientes
create table clientes(
	ci char(10) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	constraint clientes_Compras_PK primary key(ci)
)

alter table compras
add constraint compras_clientes_fk foreign key(cedula_Comprador)
references clientes(ci)

INSERT INTO Compras (id_compra, cedula_Comprador, fecha_compra, monto) VALUES
(3, '2345678901', '2023-09-01', 320.75),
(1, '1234567890', '2023-08-15', 250.00),
(6, '3456789012', '2023-09-12', 800.00),
(5, '3456789012', '2023-09-10', 150.25),
(4, '2345678901', '2023-09-05', 600.00),
(8, '5678901234', '2023-09-18', 500.00),
(2, '1234567890', '2023-08-20', 450.50),
(10, '6789012345', '2023-09-22', 950.75),
(7, '4567890123', '2023-09-15', 375.40),
(9, '6789012345', '2023-09-20', 100.00);

INSERT INTO clientes (ci, nombre, apellido) VALUES
('1234567890', 'Juan', 'Pérez'),
('2345678901', 'María', 'Gómez'),
('3456789012', 'Mónica', 'López'),  -- Cambiado a Mónica
('4567890123', 'Ana', 'Martínez'),
('5678901234', 'Laura', 'Hernández'),
('6789012345', 'Pedro', 'Ramírez');

select * from compras
select * from clientes
