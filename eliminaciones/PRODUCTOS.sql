drop table Productos

create table Productos(
	codigo int not null,
	nombre varchar(50) not null,
	detalles varchar(20),
	precio money not null,
	stock int not null,

	constraint Productos_pk primary key(codigo)
)

INSERT INTO productos (codigo, nombre, detalles, precio, stock) VALUES 
(1, 'Jabón', 'Lava todo', 3.50, 10),
(2, 'Shampoo', 'Savital', 2.50, 20),
(3, 'Deja', 'Deja', 1.50, 30),
(4, 'Pasta dental', 'Fortident', 3.0, 40),
(5, 'Cera', 'Cera de piso', 2.50, 50);

INSERT INTO productos (codigo, nombre, precio, stock) VALUES
(6, 'Pan', 1.50, 50),
(7, 'Queso', 5.50, 60),
(8, 'Leche', 2.50, 70),
(9, 'Jamon', 1.00, 120),
(10, 'Coca Cola', 3.50, 300);

select * from productos

select * from productos where stock = 10 and precio<'10'
select (nombre,stock) from productos where nombre like '%m%' or detalles is null
select (nombre) from productos where detalles is null or stock=0