DROP DATABASE IF EXISTS ejercicio8;

CREATE DATABASE ejercicio8;

USE ejercicio8;

create table Aeropuerto(
	id int auto_increment,
    nombre varchar(20),
    localidad varchar(20),
    pais varchar(20),
    primary key (id)
);

create table Avion(
	id int auto_increment,
    plazas int,
    primary key (id)
);

create table Vuelo(
	id int auto_increment,
    plazas int,
    fecha_salida date,
    fecha_llegada date,
    id_aeropuerto_llegada int,
    id_aeropuerto_salida int,
    id_avion int,
    primary key (id),
    foreign key (id_aeropuerto_llegada) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_aeropuerto_salida) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);

create table Asiento(
	id int auto_increment,
    planta int,
    columna char,
    fila int,
    id_avion int,
    primary key (id),
    foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);

create table Vuelo(
	id int auto_increment,
    plazas int,
    fecha_salida date,
    fecha_llegada date,
    id_aeropuerto_llegada int,
    id_aeropuerto_salida int,
    id_avion int,
    primary key (id),
    foreign key (id_aeropuerto_llegada) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_aeropuerto_salida) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);