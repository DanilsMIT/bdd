--Numero de Plataformas para cada videojuego
select vg.code, count(plf.plataforma) from plataformas plf, videogames vg
where vg.code=plf.code_game
group by vg.code

--Promedio de valoracion de todos los juegos
select round(avg(valoracion),2) from videogames