drop table Productos

create table Productos(
	codigo int not null,
	nombre varchar(50) not null,
	detalles varchar(20),
	precio money not null,
	stock int not null,

	constraint Productos_pk primary key(codigo)
)

insert into Productos (codigo,nombre,detalles,precio,stock) values
 (104,'manzanaVerde','fruta',4,25),
 (103,'manzana','fruta',3,105),
 (102,'uva','fruta',2,35),
 (101,'pera','fruta',2,40),
 (100,'guayaba','fruta',3,50);

insert into Productos (codigo,nombre,precio,stock) values 
	(107,'tomate',0.5,45),
	(106,'Sapallo',5.20,30),
	(105,'Sandia',5.50,25);

select * from Productos

drop table Ventas
create table Ventas(
	id_venta int,
	code_product int not null,
	fecha_venta date not null,
	cantidad int,
	constraint VentasPK primary key(id_venta)
)

alter table Ventas
add constraint Ventas_productosFK foreign key(code_product)
references Productos(codigo)

INSERT INTO Ventas (id_venta, code_product, fecha_venta, cantidad) VALUES
(1001, 100, '2023-05-01', 3),
(1002, 101, '2023-05-02', 5),  
(1003, 102, '2023-05-03', 2),
(1004, 100, '2023-05-04', 1),
(1005, 103, '2023-05-05', 4),
(1006, 104, '2023-05-06', 3),
(1007, 105, '2023-05-07', 2),
(1008, 101, '2023-05-08', 1),
(1009, 106, '2023-05-09', 5),  
(1010, 107, '2023-05-10', 2);

select * from Ventas

--Consulta de productos con la letra m o de descripcion null
select p.nombre, p.stock, v.cantidad from Productos p, Ventas v
where  p.codigo=v.code_product and p.detalles is null or p.codigo=v.code_product and p.nombre like '%m%' 

--Consultas de ventas con cantidad igual a 5
select p.nombre, p.stock from Productos p, Ventas v
where  p.codigo=v.code_product and v.cantidad = 5