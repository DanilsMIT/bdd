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