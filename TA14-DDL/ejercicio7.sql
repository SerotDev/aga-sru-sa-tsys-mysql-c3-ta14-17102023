DROP DATABASE IF EXISTS ejercicio7;

CREATE DATABASE ejercicio7;

USE ejercicio7;


create table Despachos(
	numero int auto_increment,
    capacidad int,
    primary key (numero)
);

create table Directores(
	dni varchar(8),
    NomApels varchar(255),
    DNIjefe varchar(8),
    despacho int,
    primary key (dni),
    foreign key (DNIjefe) references Directores (dni) on delete cascade on update cascade,
    foreign key (despacho) references Despachos (numero) on delete cascade on update cascade
);
