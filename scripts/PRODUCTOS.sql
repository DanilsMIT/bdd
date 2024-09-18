drop table Productos

create table Productos(
	codigo int not null,
	nombre varchar(50) not null,
	detalles varchar(20),
	precio money not null,
	stock int not null,

	constraint Productos_pk primary key(codigo)
)