drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	ci_empleado char(10) not null,
	fecha date not null,
	hora time not null,

	constraint registro_entrada_PK primary key(codigo_registro)
)