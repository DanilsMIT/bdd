--Numero de transacciones tipo C
select count(tipo) from transacciones
where tipo='C'

--Promedio de monto de transacciones por numerodecuenta
select account_number, ROUND(AVG(CAST(mont as numeric)),2) as monto_promedio
from transacciones
group by account_number