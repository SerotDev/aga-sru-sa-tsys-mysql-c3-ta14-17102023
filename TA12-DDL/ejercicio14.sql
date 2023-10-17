drop database if exists ejercicio14;

create database ejercicio14;

use ejercicio14;

create table Usuario(
	id_usuario int,
    nombre varchar(20),
    apellidos varchar(50),
    contraseña varchar(50),
    direccion varchar(50),
    telefono int,
    email varchar (100),
    foto varchar(255),
    celebridad boolean,
    id_usuario_bloqueado int,
    id_usuario_contacto int,
    foreign key (id_usuario_bloqueado) references Usuario (id_usuario) on delete cascade on update cascade,
    foreign key (id_usuario_contacto) references Usuario (id_usuario) on delete cascade on update cascade,
    primary key(id_usuario)
);
create table Telefono(
	id_usuario int,
    telefono int,
    foreign key (id_usuario) references Usuario (id_usuario) on delete cascade on update cascade,
	primary key (id_usuario)
);
create table Grupo_Contacto(
	id_usuario int,
    id_usuario_contacto int,
    nombre varchar(20),
	foreign key (id_usuario_contacto) references Usuario (id_usuario) on delete cascade on update cascade,
    primary key(id_usuario)
);
