drop database if exists ejercicio5;

create database ejercicio5;

use ejercicio5;

create table Almacenes(
	codigo int,
    lugar varchar(100),
    capacidad int,
    primary key (codigo)
);
create table Cajas(
	num_referencia char(5),
    contenido varchar(100),
    valor int,
    almacen int,
    primary key (num_referencia),
    foreign key (almacen) references Almacenes(codigo) on delete cascade on update cascade
);