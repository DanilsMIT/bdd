drop table videogames

create table videogames(
	code int not null,
	nombre varchar(100) not null,
	detalles varchar(300),
	valoracion int not null,

	constraint videogames_PK primary key(code)
)

INSERT INTO videogames (code, nombre, detalles, valoracion) VALUES 
(7563, 'Call of Duty', 'juego de terror', 9),
(85421, 'Free Fire', 'juego de acción', 7),
(93475, 'Call of Clans', 'juego de terror', 10),
(15983, 'Fornite', 'juego de suspenso', 10),
(54682, 'Tom and Jerry', 'juego de comedia', 8),
(1456, 'Ajedrez', 'juego de psicología', 6),
(70215, 'God of War', 'juego de aprendizaje', 7),
(63240, 'Crash', 'juego de deporte', 9),
(63549, 'Dragon Ball', 'juego de baile', 8);

INSERT INTO videogames (code, nombre, valoracion) VALUES 
(35784, 'Minecraft', 3);

select * from videogames

select * from videogames where nombre like '%C%' or valoracion=7
select * from videogames where code >=3 and code <=7 or valoracion=7 
select * from videogames where detalles like '%terror%' or detalles like '%acción%'
and valoracion=7 and nombre like 'C%' or valoracion>8 and nombre like 'D%'