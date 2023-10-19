DROP DATABASE IF EXISTS ejercicio13;

CREATE DATABASE ejercicio13;

USE ejercicio13;

create table Trabajador(
	dni varchar(10),
    nombre varchar(20),
    apellidos varchar(20),
    telefono_fijo int,
    telefono_movil int,
    num_seg_social varchar(20),
    primary key (dni)
);

create table Pinche(
	dni varchar(10),
    fecha_nacimiento date,
    primary key (dni),
    foreign key (dni) references Trabajador (dni) on delete cascade on update cascade
);

create table Cocinero(
	dni varchar(10),
    ano_nacimiento date,
    primary key (dni),
    foreign key (dni) references Trabajador (dni) on delete cascade on update cascade
);

create table Plato(
	id int auto_increment,
    nombre varchar(20),
    tipo varchar(20),
    precio double,
    primary key (id)
);

create table Preparar(
	dni varchar(10),
    id int,
    primary key (dni,id),
    foreign key (dni) references Cocinero (dni) on delete cascade on update cascade,
    foreign key (id) references Plato (id) on delete cascade on update cascade
);

create table Ingreidente(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);

create table Usar(
	id_ingrediente int,
    id_plato int,
    primary key (id_ingrediente,id_plato),
    foreign key (id_ingrediente) references Ingreidente (id) on delete cascade on update cascade,
    foreign key (id_plato) references Plato (id) on delete cascade on update cascade
);

create table Almacen(
	id int auto_increment,
    nombre varchar(20),
    descripcion varchar(20),
    primary key (id)
);

create table Estanteria(
	id int auto_increment,
    nombre varchar(20),
    num int,
    primary key (id)
);

create table Guarda(
	id_ingrediente int,
    id_estanteria int,
    primary key (id_ingrediente,id_estanteria),
    foreign key (id_ingrediente) references Ingreidente (id) on delete cascade on update cascade,
    foreign key (id_estanteria) references Estanteria (id) on delete cascade on update cascade
);