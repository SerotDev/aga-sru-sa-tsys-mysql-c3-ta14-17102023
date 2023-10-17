DROP DATABASE IF EXISTS ejercicio3;

CREATE DATABASE ejercicio3;

USE ejercicio3;

create table Comunidad(
	id_comunidad int auto_increment,
    nombre varchar(20),
    primary key (id_comunidad)
);
create table Provincia(
	id_provincia int auto_increment,
    nombre varchar(20),
    superficie int,
    id_comunidad int,
    primary key (id_provincia),
    foreign key (id_comunidad) references Comunidad (id_comunidad) on delete cascade on update cascade
);
create table Localidad(
	id_localidad int auto_increment,
    nombre varchar(20),
    poblacion int,
    id_provincia int,
    capital_prov boolean,
    capital_com boolean,
    primary key (id_localidad),
    foreign key (id_provincia) references Provincia (id_provincia) on delete cascade on update cascade
);