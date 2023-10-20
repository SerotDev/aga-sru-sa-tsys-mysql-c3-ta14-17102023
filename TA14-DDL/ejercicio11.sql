DROP DATABASE IF EXISTS ejercicio11;

CREATE DATABASE ejercicio11;

USE ejercicio11;

create table Facultad(
	codigo int auto_increment,
	nombre nvarchar(100),
	primary key (codigo)
);
create table Investigadores(
	dni varchar(8),
	nom_apels nvarchar(100),
	facultad int,
	primary key (dni),
    foreign key (facultad) references Facultad (codigo) on delete cascade on update cascade
);
create table Equipos(
	num_serie char(4),
    nombre nvarchar(100),
	facultad int,
	primary key (num_serie),
    foreign key (facultad) references Facultad (codigo) on delete cascade on update cascade
);
create table Reserva(
	dni_investigador varchar(8),
	num_serie_equipo char(4),
	comienzo datetime,
    fin datetime,
	primary key (dni_investigador, num_serie_equipo),
	foreign key (dni_investigador) references Investigadores (dni) on delete cascade on update cascade,
	foreign key (num_serie_equipo) references Equipos (num_serie) on delete cascade on update cascade
);
