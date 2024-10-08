--Cantidad de alumnos por profe
select prf.code, count(e.code_teacher) as total_Alumnos
from profesores prf, students e 
where e.code_teacher=prf.code
group by prf.code

--Extraer la edad promedio
select round(AVG(Extract(year from AGE(e.birth_date))),0)
from students e