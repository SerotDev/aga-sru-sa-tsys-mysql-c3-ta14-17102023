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

create table Departamento(
	codigo int auto_increment,
	nombre varchar(20),
    cod_trabajador int,
    primary key (codigo),
    foreign key (cod_trabajador) references Trabajador (codigo) on delete cascade on update cascade
);

create table Contrato(
	id int auto_increment,
	fecha_ini date,
    fecha_fin date,
    categoria_profesional varchar(20),
    cod_trabajador int,
    primary key (id),
    foreign key (cod_trabajador) references Trabajador (codigo) on delete cascade on update cascade
);

create table Nomina(
	id int auto_increment,
	fecha date,
    salario double,
    categoria_profesional varchar(20),
    id_contrato int,
    primary key (id),
    foreign key (id_contrato) references Contrato (id) on delete cascade on update cascade
);