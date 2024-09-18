drop table transacciones

create table transacciones(
	code int not null,
	account_number char(5) not null,
	mont money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,

	constraint transacciones_PK primary key(code)
)

insert into transacciones (code, account_number, mont, tipo, fecha, hora) values
(1, '12345', 1000, 'C', '2023-01-01', '10:00:00'),
(2, '67890', 500, 'D', '2023-01-02', '11:00:00'),
(3, '23456', 750, 'C', '2023-01-03', '12:30:00'),
(4, '78901', 300, 'D', '2023-01-04', '14:00:00'),
(5, '34567', 1200, 'C', '2023-01-05', '09:15:00'),
(6, '89012', 450, 'D', '2023-01-06', '16:45:00'),
(7, '45678', 650, 'C', '2023-01-07', '08:30:00'),
(8, '90123', 200, 'D', '2023-01-08', '10:30:00'),
(9, '56789', 900, 'C', '2023-01-09', '13:00:00'),
(10, '01234', 300, 'D', '2023-01-10', '15:45:00');


select * from transacciones where tipo='D'
select * from transacciones where mont>='200' and mont<= '2000'
select (code,mont,tipo,fecha) from transacciones where fecha is not null

update transacciones set tipo='T'where mont>='100' and mont<='500' 
and fecha>='2023-01-01' and fecha<='2023-01-30' and hora>='14:00' and hora<='20:00'

select * from transacciones