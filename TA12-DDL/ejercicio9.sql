drop database if exists ejercicio9;

create database ejercicio9;

use ejercicio9;

create table Receta(
	id_receta int,
    imagen varchar(255),
    nombre varchar (20),
    dificultad int,
    tiempo varchar(20),
    comensales varchar(20),
    instrucciones varchar(255),
    primary key (id_receta)
);
create table Ingredientes(
	 id_ingredientes int,
     nombre varchar(20),
     tipo_de_medid varchar(20),
     primary key (id_ingredientes)
);
create table Usar(
	id_receta int,
    id_ingredientes int,
    cantidad int,
    foreign key (id_receta) references Receta (id_receta) on delete cascade on update cascade,
    foreign key (id_ingredientes) references Ingredientes (id_ingredientes) on delete cascade on update cascade,
    primary key (id_receta,id_ingredientes)
);
create table Utensilion(
	id_utensilios int,
    nombre varchar(20),
    descripcion varchar(255),
    primary key (id_utensilios)
);
create table Utilizar(
	id_receta int,
    id_utensilios int,
    foreign key (id_receta) references Receta (id_receta) on delete cascade on update cascade,
    foreign key (id_utensilios) references Utensilion (id_utensilios) on delete cascade on update cascade,
    primary key (id_receta,id_utensilios)
);
