SELECT MAX(precio) as producto_mas_caro from productos

select distinct sum(v.cantidad) as cantidad_productos_vendidos
from productos p,ventas v
where p.codigo=v.code_product