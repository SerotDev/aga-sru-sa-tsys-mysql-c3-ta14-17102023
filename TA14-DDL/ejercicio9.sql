DROP DATABASE IF EXISTS ejercicio9;

CREATE DATABASE ejercicio9;

USE ejercicio9;

create table Cientificos(
	dni varchar(8),
    nom_apels nvarchar(255),
    primary key (dni)
);
create table Proyecto(
	id char(4),
    nombre nvarchar(255),
    horas int,
    primary key (id)
);
create table Asignado_a(
	dni_cientifico varchar(8),
    id_proyecto char(4),
    primary key (dni_cientifico, id_proyecto),
    foreign key (dni_cientifico) references Cientificos (dni) on delete cascade on update cascade,
    foreign key (id_proyecto) references Proyecto (id) on delete cascade on update cascade
);
