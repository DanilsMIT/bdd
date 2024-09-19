 drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	ci_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,

	constraint cuentas_pk primary key(numero_cuenta)
)

INSERT INTO cuentas (numero_cuenta, ci_propietario, fecha_creacion, saldo) VALUES 
('25569', '17504', '15/01/2030', 500),
('25570', '17500', '01/11/2028', 600),
('25571', '17501', '22/01/2023', 700),
('25572', '17508', '30/05/2022', 800),
('25573', '17509', '15/03/2023', 900),
('25574', '17510', '15/05/2023', 1000),
('25575', '17507', '15/09/2023', 1500),
('25576', '17515', '15/10/2024', 2500),
('25577', '17512', '15/08/2025', 3500),
('25578', '17503', '15/06/2017', 4500);

select * from cuentas

select (numero_cuenta,saldo) from cuentas where saldo>'100' and saldo<'1000'
select * from cuentas where fecha_creacion >='19/09/2023' and fecha_creacion <='19/09/2024'
select * from cuentas where saldo='0' or ci_propietario like '%2'