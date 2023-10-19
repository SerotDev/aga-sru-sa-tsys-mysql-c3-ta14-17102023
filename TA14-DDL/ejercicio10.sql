DROP DATABASE IF EXISTS ejercicio10;

CREATE DATABASE ejercicio10;

USE ejercicio10;

create table Cajeros(
	codigo int auto_increment,
	nom_apels nvarchar(255),
	primary key (codigo)
);
create table Productos(
	codigo int auto_increment,
	nombre nvarchar(100),
	precio int,
	primary key (codigo)
);
create table Maquinas_registradoras(
	codigo int auto_increment,
	piso int,
	primary key (codigo)
);
create table Asignado_a(
	codigo_cajero int,
	codigo_maquina int,
	codigo_producto int,
	primary key (codigo_cajero, codigo_maquina, codigo_producto),
	foreign key (codigo_cajero) references Cajeros (codigo) on delete cascade on update cascade,
	foreign key (codigo_maquina) references Maquinas_registradoras (codigo) on delete cascade on update cascade,
	foreign key (codigo_producto) references Productos (codigo) on delete cascade on update cascade
);
