DROP DATABASE IF EXISTS ejercicio5;

CREATE DATABASE ejercicio5;

USE ejercicio5;


create table Departamentos(
	codigo int auto_increment,
    nombre varchar(20),
    presupuesto int,
    primary key (codigo)
);

create table Empleados(
	dni varchar(8),
    nombre varchar(100),
    apellidos varchar(255),
    departamento int,
    primary key (dni),
    foreign key (departamento) references Departamentos (codigo) on delete cascade on update cascade
);
