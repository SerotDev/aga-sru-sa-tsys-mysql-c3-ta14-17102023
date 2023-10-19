drop database if exists ejercicio3;

create database ejercicio3;

use ejercicio3;

create table Fabricantes(
	codigo int,
    nombre varchar(100),
    primary key (codigo)
);
create table Articulos(
	codigo int,
    nombre varchar(100),
    precio int,
    fabricante int,
    primary key (codigo),
    foreign key (fabricante) references Fabricantes (codigo) on delete cascade on update cascade
);