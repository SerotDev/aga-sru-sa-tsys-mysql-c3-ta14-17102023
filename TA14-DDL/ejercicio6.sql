DROP DATABASE IF EXISTS ejercicio6;

CREATE DATABASE ejercicio6;

USE ejercicio6;


create table Peliculas(
	codigo int auto_increment,
    nombre varchar(100),
    primary key (codigo)
);

create table Salas(
	codigo int auto_increment,
    nombre varchar(100),
    pelicula int,
    primary key (codigo),
    foreign key (pelicula) references Peliculas (codigo) on delete cascade on update cascade
);
