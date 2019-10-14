/* 
DML = SELECT UPDATE DELETE INSERT
DCL =  GRANT REVOKE
DDL = CREATE DROP ALTER TRUNCATE
TCL = transacciones commit rollback
*/

select * from Articulos where precio > 100;
select * from Articulos where precio > 20 and precio < 40;
select * from Articulos where precio between 40 and 60;
select * from Articulos where precio=20 and stock>30;
select * from Articulos where precio=12 or precio=30 or precio=40;
select * from Articulos where precio in (12,30,40);
select * from Articulos where precio not in (12,30,40);

select * from Articulos order by precio DESC, nombre ASC;
select *, (articulo.precio*1.21) as "precioIVA" from Articulos articulo;
select *, 3 as "cantCuotas", (articulo.precio*1.05/3) as "montoCuota" from Articulos articulo; 