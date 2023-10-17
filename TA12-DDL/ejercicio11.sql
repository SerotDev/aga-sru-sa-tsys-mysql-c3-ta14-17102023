DROP DATABASE IF EXISTS ejercicio11;

CREATE DATABASE ejercicio11;

USE ejercicio11;

create table Accidentes(
	id int auto_increment,
    pos_horizontal varchar(20),
    pos_vertical varchar(20),
    primary key (id)
);

create table Lagos(
	id int auto_increment,
    superficie double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Montanas(
	id int auto_increment,
    altura double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Rios(
	id int auto_increment,
    longitud double,
    primary key (id),
    foreign key (id) references Accidentes (id) on delete cascade on update cascade
);

create table Paises(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);

create table Estar(
	id_nombre int,
    id_pais int,
    primary key (id_nombre,id_pais),
    foreign key (id_nombre) references Accidentes (id) on delete cascade on update cascade,
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);

create table Localidades(
	nombre varchar(20),
    id_pais int,
    primary key (nombre),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);

create table Pasar(
	id_nombre int,
    nombre varchar(20),
    primary key (id_nombre,nombre),
    foreign key (id_nombre) references Accidentes (id) on delete cascade on update cascade,
    foreign key (nombre) references Localidades (nombre) on delete cascade on update cascade
);