use Laboratorio;
set sql_safe_updates=0;
/*
Laboratorio UPDATE DELETE
*/
insert into Clientes values ('Carlitos','Gonzalez','3213321321','asdasf',''),('Alfonso','Gonzalez','3213321321','asdasf',''),('Pedro','Gonzalez','3213321321','asdasf',''),('Ramon','Gonzalez','3213321321','asdasf',''); #No es posible porque ClienteID es auto incremental
insert into Clientes (nombre,apellido, cuit, direccion, comentarios)values ('Carlitos','Gonzalez','3213321321','asdasf',''),('Alfonso','Gonzalez','3213321321','asdasf',''),('Pedro','Gonzalez','3213321321','asdasf',''),('Ramon','Gonzalez','3213321321','asdasf','');
update Clientes set nombre='Jose' where clienteid=1;
update Clientes set nombre='Pablo', apellido='Fuentes',cuit='20-21053119-0' where clienteid=3;
update Clientes set comentarios='' where comentarios=null;
delete from Clientes where apellido='Perez';
delete from Clientes where cuit like '*0';
update Articulos set precio=precio*1.20 where precio<=50;
update Articulos set precio=precio*1.15 where precio>50;
update Articulos set precio=precio-(precio*5)/100 where precio>200;
delete from Articulos where stock<=0;

/*
Laboratorio FUNCIONES
*/
select * from Facturas;
describe Facturas;
select max(monto) from Facturas;
select min(monto) from Facturas;
select min(monto) from Facturas where fecha between '01-01-2000' and '31-12-2008'
select avg(monto) from Facturas;
select avg(monto) from Facturas where fecha like '%2006';
select count(*) from Facturas;
select count(*) from Facturas where monto between 35000 and 40000;
select ,count(*) from Facturas group by #FALTA
select count(*), avg(monto) from Facturas group by #FALTA
select letra, sum(monto) as suma, avg(monto) as promedio from Facturas group by letra; 