drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	ci_empleado char(10) not null,
	fecha date not null,
	hora time not null,

	constraint registro_entrada_PK primary key(codigo_registro)
)

INSERT INTO registros_entrada (codigo_registro, ci_empleado, fecha, hora) VALUES 
(72485, '0854418489', '18/09/2023', '11:00');
(12485, '1754418489', '18/08/2023', '9:00');
(12385, '1754416489', '18/05/2023', '9:00');
(12345, '1754416489', '18/06/2023', '7:00'),
(12355, '1758254591', '03/08/2023', '14:00'),
(12346, '1715974492', '25/03/2022', '23:00'),
(12347, '1735642583', '28/12/2015', '16:00'),
(12389, '1707416984', '16/07/2012', '8:00'),
(12349, '1778541235', '17/03/2013', '10:00'),
(12310, '1742158637', '14/05/2017', '19:00'),
(12311, '1756321784', '15/05/2004', '20:00'),
(12358, '1712546328', '07/07/2008', '21:00'),
(12378, '1725785413', '02/09/2023', '4:00');

select * from registros_entrada

select * from registros_entrada where fecha>='2023/09/01' and fecha<='2023/09/30' 
or ci_empleado like '17%'

select * from registros_entrada where fecha>='2023/08/01' and fecha<='2023/08/30'
and ci_empleado like '17%' and hora>='08:00' and hora<='12:00'

select * from registros_entrada where fecha>='2023/08/01' and fecha<='2023/08/30'
and ci_empleado like '17%' and hora>='08:00' and hora<='12:00'
or fecha>='2023/09/01' and fecha<='2023/09/30'
and ci_empleado like '08%' and hora>='09:00' and hora<='13:00'