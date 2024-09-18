drop table videogames

create table videogames(
	code int not null,
	nombre varchar(100) not null,
	detalles varchar(300),
	valoracion int not null,

	constraint videogames_PK primary key(code)
)

insert into videogames(code,nombre,detalles,valoracion) values
(200, 'The Legend of Zelda: Breath of the Wild', 'Sale zelda y sale link.', 10),
(201, 'God of War', 'Sale kratos.', 9),
(202, 'Minecraft', 'Sale steve.', 8),
(203, 'The Witcher 3: Wild Hunt', 'Sale ese man de pelo blanco.', 10),
(204, 'Among Us', 'Soy un impostor.', 7);

insert into videogames(code,nombre,valoracion) values
(205, 'Final Fantasy VII Remake', 9),
(206, 'Red Dead Redemption 2', 10),
(207, 'DarkSouls II', 8);

select * from videogames where nombre like 'C%'
select * from videogames where valoracion >=9 and valoracion <= 10
select * from videogames where detalles is null
Descripción de los registros:

update videogames set detalles='Mejor puntuado' where valoracion>9
select * from videogames

delete from videogames where valoracion<=7