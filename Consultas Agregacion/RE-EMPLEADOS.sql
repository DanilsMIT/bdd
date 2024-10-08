--Numero de entradas de cada empleado en total
select e.codee, count(RE.codigo_registro) from empleados e, registros_entrada RE
where e.codee=RE.codigo_empleado group by e.codee

--Fecha minima y maxima de los registros
select min(fecha)as fecha_menor,max(fecha) as fecha_mayor from registros_entrada