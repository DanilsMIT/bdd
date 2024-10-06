drop table videogames

create table videogames(
	code int not null,
	nombre varchar(100) not null,
	detalles varchar(300),
	valoracion int not null,

	constraint videogames_PK primary key(code)
)

insert into videogames(code,nombre,detalles,valoracion) values
(200, 'The Legend of Zelda: Breath of the Wild', 'La uno', 10),
(201, 'God of War', 'Guerra', 9),
(202, 'Crash', 'Sale el Crash', 8),
(203, 'The Witcher 3: Wild Hunt', 'Guerra', 10),
(204, 'Among Us', 'Soy un impostor.', 7);

insert into videogames(code,nombre,valoracion) values
(205, 'Final Fantasy VII Remake', 9),
(206, 'Red Dead Redemption 2', 10),
(207, 'DarkSouls II', 8);

select * from videogames
select * from plataformas

drop table plataformas
create table plataformas(
	id_plataforma int,
	plataforma varchar(50) not null,
	code_game int,
	constraint plataformasPK primary key (id_plataforma)
)

alter table plataformas
add constraint videojuegos_plataformas_fK
foreign key (code_game)
references videogames(code)

INSERT INTO plataformas (id_plataforma, plataforma, code_game) VALUES
(1, 'Nintendo Switch', 200),   
(2, 'PlayStation 4', 201),      
(3, 'PC', 202),                
(4, 'Xbox One', 203),          
(5, 'PC', 204),               
(6, 'Nintendo Switch', 204),   
(7, 'PC', 200),                
(9, 'Xbox Series X', 201);                  
