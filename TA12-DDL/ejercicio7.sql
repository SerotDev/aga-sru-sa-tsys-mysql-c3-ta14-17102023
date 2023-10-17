DROP DATABASE IF EXISTS ejercicio7;

CREATE DATABASE ejercicio7;

USE ejercicio7;

create table Trabajador(
	codigo int auto_increment,
    dni varchar(9),
    seguridad_social varchar(20),
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(20),
    telefono varchar(10),
    cod_trabajador_repsonsable int,
    primary key (codigo),
	foreign key (cod_trabajador_repsonsable) references Trabajador (codigo) on delete cascade on update cascade

);