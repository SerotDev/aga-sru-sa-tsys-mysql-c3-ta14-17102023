DROP DATABASE IF EXISTS ejercicio16;

CREATE DATABASE ejercicio16;

USE ejercicio16;

create table Usuario(
	id int auto_increment,
    datos varchar(20),
    nombre varchar(20),
    email varchar(20),
    contrasena varchar(20),
    primary key (id)
);

create table Seguir(
	id_1 int,
    id_2 int,
    primary key (id_1,id_2),
    foreign key (id_1) references Usuario (id) on delete cascade on update cascade,
    foreign key (id_2) references Usuario (id) on delete cascade on update cascade
);

create table Mensajes(
	id int auto_increment,
    texto varchar(200),
    id_usuario int,
    primary key (id),
    foreign key (id) references Usuario (id) on delete cascade on update cascade
);

create table Enlaces(
	id int auto_increment,
    texto varchar(200),
    primary key (id)
);

create table Contener(
	id_mensaje int,
    id_enlace int,
    primary key (id_mensaje,id_enlace),
    foreign key (id_mensaje) references Mensajes (id) on delete cascade on update cascade,
    foreign key (id_enlace) references Enlaces (id) on delete cascade on update cascade
);

