drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	ci_empleado char(10) not null,
	fecha date not null,
	hora time not null,

	constraint registro_entrada_PK primary key(codigo_registro)
)

insert into registros_entrada (codigo_registro, ci_empleado, fecha, hora) values
(500, '1234567890', '2023-10-01', '08:00'),
(501, '0987654321', '2023-10-01', '08:15'),
(502, '1122334455', '2023-10-01', '09:00'),
(503, '2233445566', '2023-10-01', '08:30'),
(504, '3344556677', '2023-10-01', '08:45'),
(505, '4455667788', '2023-10-02', '08:05'),
(506, '5566778899', '2023-10-02', '08:20'),
(507, '6677889900', '2023-10-02', '09:10'),
(508, '7788990011', '2023-10-02', '08:50'),
(509, '8899001122', '2023-10-02', '09:30');

select (ci_empleado,fecha,hora) from registros_entrada
select * from registros_entrada where hora between '7:00' and '14:00'
select * from registros_entrada where hora > '8:00'

update registros_entrada set ci_empleado='082345679' where fecha between '2023-10-01' and '2023-10-30'
select * from registros_entrada

delete from registros_entrada where fecha>='2023-10-01' and fecha<='2023-10-30'