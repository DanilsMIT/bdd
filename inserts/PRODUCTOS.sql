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
