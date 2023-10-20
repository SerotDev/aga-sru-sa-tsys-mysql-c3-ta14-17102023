DROP DATABASE IF EXISTS ejercicio10;

CREATE DATABASE ejercicio10;

USE ejercicio10;

create table Equipo(
	id_equipo int auto_increment,
    nombre varchar(20),
    presidente varchar(50),
    primary key (id_equipo)
);
create table Jugador(
	id_jugador int auto_increment,
    nombre varchar(20),
    edad int,
    id_equipo int,
    primary key (id_jugador),
    foreign key (id_equipo) references Equipo (id_equipo) on delete cascade on update cascade
);
create table Estadio(
	id_estadio int auto_increment,
    nombre varchar(20),
    primary key (id_estadio)
);
create table Partido(
	id_partido int auto_increment,
    jornada varchar(20),
    fecha int,
    id_estadio int,
    primary key (id_partido),
    foreign key (id_estadio) references Estadio (id_estadio) on delete cascade on update cascade
);
create table Jugar(
	id_equipo int,
    id_partido int,
    resultado int,
    primary key (id_equipo,id_partido),
    foreign key (id_equipo) references Equipo (id_equipo) on delete cascade on update cascade,
    foreign key (id_partido) references Partido (id_partido) on delete cascade on update cascade
);
create table Arbitro(
	id_arbitro int auto_increment,
    nombre varchar(20),
    primary key (id_arbitro)
);
create table Arbitrar(
    id_partido int,
    id_arbitro int,
    primary key (id_partido,id_arbitro),
    foreign key (id_partido) references Partido (id_partido) on delete cascade on update cascade,
    foreign key (id_arbitro) references Arbitro (id_arbitro) on delete cascade on update cascade
);