--Consulta deL PROMEDIO de los saldos de las cuentas de una cedula
select u.nombre, u.lastname, CAST(AVG(cast(saldo as numeric)) as money)
from cuentas cu, usuario u
where cu.ci_propietario=u.ci and u.ci='23456'
group by u.nombre , u.lastname

--Cuantia de tipos de cuenta
select u.tipo_cuenta, count(u.tipo_cuenta)
from cuentas cu, usuario u
where cu.ci_propietario=u.ci
group by u.tipo_cuenta
