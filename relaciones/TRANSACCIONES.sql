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

drop table banco
create table banco (
    codigo_banco int,
    codigo_transaccion int,
    detalle varchar(100),
	constraint bancoPK primary key(codigo_banco)
)

alter table banco
add constraint banco_transaccionesFK
foreign key (codigo_transaccion)
references transacciones(code)

insert into transacciones (code, account_number, mont, tipo, fecha, hora) values
(100, '22002', 1000, 'C', '2023-01-01', '10:00:00'),
(102, '67890', 500, 'D', '2023-01-02', '11:00:00'),
(103, '23456', 750, 'C', '2023-01-03', '12:30:00'),
(104, '78901', 300, 'D', '2023-01-04', '14:00:00'),
(105, '22003', 1200, 'C', '2023-01-05', '09:15:00'),
(106, '89012', 450, 'D', '2023-01-06', '16:45:00'),
(107, '45678', 650, 'C', '2023-01-07', '08:30:00'),
(108, '90123', 200, 'D', '2023-01-08', '10:30:00'),
(109, '56789', 900, 'C', '2023-01-09', '13:00:00'),
(110, '01234', 300, 'D', '2023-01-10', '15:45:00');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES
(1001, 100, 'Transferencia a cuenta de ahorro'),
(1050, 106, 'Pago de servicios básicos'),
(2000, 102, 'Pago de facturas'),
(2500, 100, 'Transferencia recurrente a cuenta de ahorro'),
(3005, 103, 'Depósito de nómina'),
(3050, 104, 'Retiro en cajero automático'),
(4020, 105, 'Pago de nómina empleado'),
(4500, 103, 'Depósito adicional de nómina'),
(5001, 106, 'Compra en supermercado'),
(5050, 108, 'Pago de servicios adicionales');

select * from transacciones
select * from bancos

