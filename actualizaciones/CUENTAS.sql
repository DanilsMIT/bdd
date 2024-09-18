 drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	ci_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,

	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta, ci_propietario, fecha_creacion, saldo) values
('10001', '12345', '2023-01-15', 1500.00),
('10002', '23456', '2023-02-20', 2000.50),
('10003', '34567', '2023-03-10', 300.75),
('10004', '45678', '2023-04-05', 15000.00),
('10005', '56789', '2023-05-12', 2500.00),
('10006', '67890', '2023-06-01', 1000.25),
('10007', '78901', '2023-07-20', 750.30),
('10008', '89012', '2023-08-15', 500.00),
('10009', '90123', '2023-09-10', 1200.00),
('10010', '01234', '2023-10-01', 900.50);

select (numero_cuenta,saldo) from cuentas
select * from cuentas where fecha_creacion between ' 2023-07-18 ' and ' 2023-09-18 '
select (numero_cuenta,saldo)from cuentas where fecha_creacion between ' 2023-07-18 ' and ' 2023-09-18 '

update cuentas set saldo=10.00 where ci_propietario like '1%'
select * from cuentas