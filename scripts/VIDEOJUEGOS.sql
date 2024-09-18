drop table videogames

create table videogames(
	code int not null,
	nombre varchar(100) not null,
	detalles varchar(300),
	valoracion int not null,

	constraint videogames_PK primary key(code)
)