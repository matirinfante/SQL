DROP database Laboratorio;
create database Laboratorio;
use Laboratorio;
create table Facturas(
		letra char(1) not null primary key,
        numero int(11) not null primary key auto_increment,
        clienteID int(8) unsigned not null,
        articuloID int(8) unsigned not null,
        fecha date not null,
        monto int(20) not null
        );
create table Articulos(
        articuloID int(8) unsigned not null primary key auto_increment,
        nombre varchar(50) not null,
        precio double not null,
        stock int(11) not null
        );
create table Clientes(
        clienteID int(8) unsigned not null primary key auto_increment,
        nombre varchar(50) not null,
        apellido varchar(50) not null,
        cuit char(16) not null,
        direccion varchar(50) not null,
        comentarios varchar(50) not null
        );
set sql_safe_updates = 0; #Desactiva seguridad
insert into Facturas(letra,clienteID,articuloID,fecha,monto) values ('A',1,1,01-01-2019,400),
('B',2,1,01-01-2019,800),('C',1,3,01-01-2019,500),('A',3,4,01-01-2019,1200),('A',4,1,01-01-2019,20);
insert into Articulos(nombre,precio,stock) values ('Manzana',20,400),('Naranja',40,100),('Pera',100,800),('Manaos UVA',100,100),('Pitusas',500,200);
insert into Clientes(nombre,apellido,cuit,direccion,comentarios) values ('Carlos','Estratosfera','2032132321','Direccion 123',''),
('George','Doe','2032152321','Direccion 123',''),
('Phillip','Doe','2032632321','Direccion 123',''),
('Steven','Doe','2032172321','Direccion 123',''),
('Charles','Doe','2032832321','Direccion 123','');

drop table if exists Agenda;
create table Agenda(
		contacto int(11) unsigned not null primary key auto_increment,
        nombre char(20) not null,
        domicilio int(20) not null,
        telefono varchar(9) not null
);

show tables;
describe Agenda;
insert into Agenda(nombre,domicilio,telefono) values ('Pepe', 321321,'665465498'),('Pepa', 32,'665589498'),('Pepi', 001321,'665465412');
select * from Agenda;
drop table if exists Agenda;