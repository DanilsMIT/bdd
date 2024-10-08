select p.cedula, sum(pr.monto)
from persona p,prestamo pr
where p.cedula=pr.cedulap
group by p.cedula

select count(numero_hijos) from persona
where numero_hijos>1