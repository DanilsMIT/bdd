drop table transacciones

create table transacciones(
	code int not null,
	account_number char(5) not null,
	mont money not null,
	tipo char(1) not null,
	fecha date,
	hora time not null,

	constraint transacciones_PK primary key(code)
)

INSERT INTO transacciones (code, account_number, mont, tipo, fecha, hora) VALUES 
(48785, '22003', 200, 'D', '27/05/2023', '23:30');
(78785, '22008', 200, 'D', '25/05/2023', '23:30');
(78945, '75369', 200, 'C', '20/09/2023', '23:30'),
(53147, '32102', 500.65, 'D', '15/06/2022', '17:55'),
(32548, '21001', 1600, 'C', '17/05/2021', '16:37'),
(32165, '51437', 1050, 'D', '25/04/2020', '15:48'),
(78542, '02147', 300, 'D', '20/03/2019', '22:19'),
(35412, '85214', 600, 'D', '07/12/2015', '20:14'),
(54193, '96325', 800, 'D', '06/11/2012', '11:00'),
(95124, '74125', 900, 'D', '23/10/2002', '9:00'),
(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

insert into transacciones(code, account_number, mont, tipo, hora)
values(23210, '32015', 400, 'C', '13:55');

select * from transacciones

insert into transacciones(code, account_number, mont, tipo, hora)values

(232301, '22204', 450, 'C', '13:55');


select * from transacciones where tipo='C' and account_number between '22201' and '22204'

select * from transacciones where tipo='D' and fecha = '25/05/2023'
and account_number between '22007' and '22010'

select * from transacciones where code>=0 and code<60000 and account_number between '22002' and '22004'
and fecha >= '26/05/2023' and fecha <='29/05/2023'
