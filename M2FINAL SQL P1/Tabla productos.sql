DROP TABLE IF EXISTS historial_movimientos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF  EXISTS categorias;

create table categorias(
	idC char(4) not null,
	nombre varchar(20) not null,
	constraint categoriasPK primary key(idC)
);

create table productos(
	idP char(5) not null,
	nombre varchar(25) not null,
	precio_venta money not null,
	precio_compra money not null,
	ID_Categoria char(4) not null,
	constraint productosPK primary key(idP),
	constraint produc_categorFK foreign key(ID_Categoria) references categorias(idC) 
);

create table historial_movimientos(
	No_Movimiento Serial not null,
	id_producto char(5) not null,
	cantidad int not null,
	fecha_del_movimiento TimeStamp not null,
	constraint HMPk primary key(No_Movimiento),
	constraint HMcodeP foreign key(id_producto) references productos(idP)
);

insert into categorias(idC, nombre) values
('C001', 'Bebidas'),
('C002', 'Snacks'),
('C003', 'Golosinas');

insert into productos(idP,nombre,precio_venta,precio_compra,ID_Categoria) values
('P0001','Coca cola 300 ml', 0.7, 0.55,'C001'),
('P0002','Coca cola 1000 ml', 1, 0.8,'C001'),
('P0003','Doritos 50g', 0.5, 0.42,'C001'),
('P0004','Manicho', 0.25, 0.21,'C001'),
('P0005','Tango', 0.5, 0.42,'C001');

insert into historial_movimientos(id_producto,cantidad,fecha_del_movimiento) values
('P0001',10,'28/10/2020 9:45'),
('P0002',-3,'28/10/2020 10:49'),
('P0003',5,'28/10/2020 12:23');

select * from categorias;
select * from productos;
select * from historial_movimientos;