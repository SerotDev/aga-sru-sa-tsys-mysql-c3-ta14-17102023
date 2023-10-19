DROP DATABASE IF EXISTS ejercicio8;

CREATE DATABASE ejercicio8;

USE ejercicio8;


create table Proveedores(
	id varchar(4),
    nombre varchar(100),
    primary key (id)
);

create table Piezas(
	codigo int auto_increment,
    nombre varchar(100),
    primary key (codigo)
);

create table Suministra(
	codigoPieza int,
    idProveedor varchar(4),
    precio int,
    primary key (codigoPieza,idProveedor),
    foreign key (codigoPieza) references Piezas (codigo) on delete cascade on update cascade,
    foreign key (idProveedor) references Proveedores (id) on delete cascade on update cascade
);
