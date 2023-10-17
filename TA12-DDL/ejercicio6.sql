drop database if exists ejercicio6;

create database ejercicio6;

use ejercicio6;

create table Articulo(
	id_articulo int,
    nombre varchar(20),
    ano int,
    pais varchar(20),
    resumen varchar(255),
    primary key (id_articulo)
);
create table Autor(
	id_autor int,
    nombre varchar(20),
    pais varchar(20),
    id_articulo int,
    foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade,
    primary key (id_autor)
);
create table Libro(id_articulo int primary key, num_paginas int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
create table CD(id_articulo int primary key, num_canciones int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
create table Pelicula(id_articulo int primary key, duracion int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
create table Copia(id_articulo int primary key, cod_articulo int, foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade);
create table Prestamos(
	id_prestamos int,
    fecha_inicio date,
    fecha_fin date,
    id_articulo int,
	foreign key (id_articulo) references Articulo (id_articulo) on delete cascade on update cascade,
    primary key (id_prestamos)
);
create table Socio(
	codigo_socio int,
    dni varchar(9),
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(50),
    primary key (codigo_socio)
);
create table Realizar(
	id_prestamos int,
    codigo_socio int,
    fecha_dev date,
    foreign key (id_prestamos) references Prestamos (id_prestamos) on delete cascade on update cascade,
    foreign key (codigo_socio) references Socio (codigo_socio) on delete cascade on update cascade,
    primary key (id_prestamos, codigo_socio)
);
create table Telefono(
	num_telefono int,
    codigo_socio int,
    foreign key (codigo_socio) references Socio (codigo_socio) on delete cascade on update cascade,
    primary key (num_telefono)
);