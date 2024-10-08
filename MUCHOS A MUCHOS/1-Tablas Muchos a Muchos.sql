---Tablas Muchos a Muchos
-----1 
---RELACION MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO
create table usuarios(
	id int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuariosPK primary key(id)
)

create table grupo(
	id int,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupoPK primary key(id)
)

create table usuarios_grupo(
	us_id int not null,
	gr_id int not null,
	constraint us_ug foreign key(us_id) references usuarios(id),
	constraint gr_ug foreign key(gr_id) references grupo(id),
	constraint usuarios_grupoPK primary key(us_id,gr_id)
)

insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							
							
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


insert into usuarios_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
								 						 
------2-----------------------------------------------------------------
--RELACION MUCHOS A MUCHOS HABITACIONES Y HUESPEDES
create table habitaciones(
	habitacion_numero int,
	precio_por_noche float not null,
	piso int not null,
	max_personas int,
	constraint habitacionesPK primary key (habitacion_numero)
)

create table huespedes(
	id int,
	nombre varchar(25)not null,
	apellido varchar(25) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedesPK primary key(id)
)

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion_id int not null,
	huespedes_id int not null,
	constraint rhuesped_id foreign key(huespedes_id) references huespedes(id),
	constraint rhabitacion_id foreign key(habitacion_id) references habitaciones(habitacion_numero),
	constraint reservasPK primary key(habitacion_id,huespedes_id)
)

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
						
-------------3------------------------------------------------------------
--RELACION MUCHOS A MUCHOS MUNICIPIO Y PROYECTOS
create table ciudad(
	id int ,
	nombre varchar(45) not null,
	constraint ciudadPK primary key(id)
)

create table municipio(
	id int ,
	nombre varchar(45) not null,
	ciudad_id int,
	constraint municipioPK primary key(id),
	constraint id_city foreign key(ciudad_id) references ciudad(id)
)

create table proyecto(
	id int,
	nombre varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyectoPK primary key(id)
)

create table proyecto_municipio(
	proyecto_id int not null,
	municipio_id int not null,
	constraint pm_Mid foreign key(municipio_id) references municipio(id),
	constraint pm_Pid foreign key(proyecto_id) references proyecto(id),
	constraint pmPK primary key(municipio_id,proyecto_id)
)

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (1,5),
									  (3,5),
									  (1,2),
									  (2,1),
									  (1,4),
									  (2,9),
									  (1,10),
									  (3,6),
									  (1,3),
									  (2,7);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Querys relacion muchos a muchos

---------------------------------------USUARIOS Y GRUPOS

--Consulta 1
select u.nombre,g.nombre from usuarios u,grupo g,usuarios_grupo ug
where u.id=ug.us_id and g.id=ug.gr_id
--Subconsulta 1
select nombre from usuarios
where id in(select us_id from usuarios_grupo where gr_id=1)
--FuncionAgregación 1
select g.nombre,count(ug.us_id)
from grupo g,usuarios_grupo ug
where g.id=ug.gr_id
group by g.nombre

--------------------------------------------------------
--Consulta 2
select u.nombre,g.nombre from usuarios u,grupo g,usuarios_grupo ug
where u.id=ug.us_id and g.id=ug.gr_id and g.nombre like '%intensivo%'
--Subconsulta 2
select nombre from usuarios
where id in(select us_id from usuarios_grupo where gr_id=2)
--FuncionAgregación 2
select g.nombre,max(ug.us_id) as usuarioMax,min(ug.us_id) as usuarioMin from grupo g,usuarios_grupo ug
where g.id=ug.gr_id group by g.nombre
--------------------------------------------------------

--Consulta 3
select u.nombre,g.fecha_creacion from usuarios u,grupo g,usuarios_grupo ug
where u.id=ug.us_id and g.id=ug.gr_id and g.fecha_creacion between '2020-03-08' and '2022-03-08'
--Subconsulta 3
select nombre from usuarios
where id in(select us_id from usuarios_grupo where gr_id=3)
--FuncionAgregación 3
select g.descripcion,count(ug.us_id)
from grupo g,usuarios_grupo ug
where g.id=ug.gr_id and g.descripcion like '%matutino%'
group by g.descripcion

---------------------------------------HABITACION Y HUESPED

--Consulta 1
select h.habitacion_numero,hu.nombre,hu.apellido from habitaciones h,huespedes hu,reservas r
where h.habitacion_numero=r.habitacion_id and hu.id=r.huespedes_id
--Subconsulta 1
select hu.nombre,hu.apellido from huespedes hu
where hu.id in(select huespedes_id from reservas where habitacion_id=2 )
--FuncionAgregación 1
select h.habitacion_numero, count(r.huespedes_id) from habitaciones h,reservas r
where h.habitacion_numero=r.habitacion_id group by h.habitacion_numero
--------------------------------------------------------
--Consulta 2
select h.habitacion_numero,h.piso,hu.nombre,hu.apellido from habitaciones h,huespedes hu,reservas r
where h.habitacion_numero=r.habitacion_id and hu.id=r.huespedes_id
and h.piso=4
--Subconsulta 2
select hu.nombre,hu.apellido from huespedes hu
where hu.id in(select huespedes_id from reservas where habitacion_id=3 )
--(nadie ha reservado la habitacion 3)
--FuncionAgregación 2
select h.habitacion_numero, round(avg(r.huespedes_id),1) from habitaciones h,reservas r
where h.habitacion_numero=r.habitacion_id group by h.habitacion_numero

--------------------------------------------------------

--Consulta 3
select h.habitacion_numero,hu.nombre,hu.apellido from habitaciones h,huespedes hu,reservas r
where h.habitacion_numero=r.habitacion_id and hu.id=r.huespedes_id
--(bis) solicita lo mismo que en la Consulta 1.
--Subconsulta 3
select hu.nombre,hu.apellido from huespedes hu
where hu.id in(select huespedes_id from reservas where habitacion_id=4 )
--(nadie tampoco ha reservado la habitacion 4)
--FuncionAgregación 3
select h.habitacion_numero, sum(h.precio_por_noche) as Monto_recaudado from habitaciones h,reservas r
where h.habitacion_numero=r.habitacion_id group by h.habitacion_numero

---------------------------------------Municipio Y Proyecto

--Consulta 1
select mnc.nombre,py.nombre from municipio mnc,proyecto py, proyecto_municipio pm
where pm.municipio_id=mnc.id and  pm.proyecto_id=py.id
--Subconsulta 1
select py.nombre from proyecto py
where id in(select pm.proyecto_id from proyecto_municipio pm where pm.municipio_id=1)
--FuncionAgregación 1
select mnc.nombre, count(pm.proyecto_id) from municipio mnc,proyecto_municipio pm
where pm.municipio_id=mnc.id group by mnc.nombre
--------------------------------------------------------
--Consulta 2
select mnc.nombre,py.nombre from municipio mnc,proyecto py, proyecto_municipio pm
where pm.municipio_id=mnc.id and  pm.proyecto_id=py.id
and mnc.nombre like '%GAD%'
--FuncionAgregación 2
select mnc.nombre, min(pm.proyecto_id) from municipio mnc,proyecto_municipio pm
where pm.municipio_id=mnc.id group by mnc.nombre

--------------------------------------------------------

--Consulta 3
select mnc.nombre,cd.nombre from municipio mnc, ciudad cd
where mnc.ciudad_id=cd.id
--Subconsulta 3
select py.nombre from proyecto py
where id in(select pm.proyecto_id from proyecto_municipio pm where pm.municipio_id=3)
--FuncionAgregación 3
select mnc.nombre, max(pm.proyecto_id) from municipio mnc,proyecto_municipio pm
where pm.municipio_id=mnc.id group by mnc.nombre
