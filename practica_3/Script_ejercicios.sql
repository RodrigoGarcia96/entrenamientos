use tienda;

show tables;

SELECT nombre, apellido, edad FROM t_clientes;  /* nom, ap, edad de t_clientes ej. 1 */

SELECT modelo, marca, precio FROM t_productos WHERE precio < 10000; /* mod, mar, prec, mmenor a 10000*/

SELECT prov.nombre, prov.apellido, prod.modelo, prod.marca
FROM t_proveedor prov
inner JOIN t_productos prod
ON prod.id_proveedor = prov.id_proveedor
where prov.id_proveedor = 45636; /* obtener id 45636 haciendo un inner join*/

select * from t_ventas

SELECT vent.id_ventas, cli.nombre, cli.apellido,prod.modelo, prod.marca, vent.fecha 
from t_ventas vent
inner JOIN t_clientes cli
ON vent.id_clientes = cli.id_clientes
inner JOIN t_productos prod
ON vent.id_producto = prod.id_productos
WHERE fecha = '2015-02-06'   /* join con 3 tablas*/
