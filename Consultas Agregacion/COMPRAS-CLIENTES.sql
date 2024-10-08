--Consulta de la suma de compras de un cliente
select cl.ci, sum(c.monto)
from clientes cl, compras c
where cl.ci=c.cedula_comprador and cl.ci='6789012345'
group by cl.ci

--Cuenta de compras realizadas en tal fecha
select fecha_compra, count(fecha_compra)
from compras
where fecha_compra = '2023-09-20'
group by fecha_compra
