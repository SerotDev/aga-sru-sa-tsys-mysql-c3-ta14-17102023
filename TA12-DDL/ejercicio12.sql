DROP DATABASE IF EXISTS ejercicio12;

CREATE DATABASE ejercicio12;

USE ejercicio12;

create table Empresa(
	codigo_interno int,
    cif varchar(9),
    nombre varchar(20),
    direccion varchar(50),
    telefono int,
    primary key (codigo_interno)
);
create table Proyecto(
	id_proyecto int auto_increment,
    fecha_inicio date,
    fecha_fin date,
    fecha_prevista date,
    codigo_interno_empresa int,
    primary key (id_proyecto),
    foreign key (codigo_interno_empresa) references Empresa (codigo_interno) on delete cascade on update cascade
);
create table Trabajador(
	id_trabajador int auto_increment,
    dni varchar(9),
    nombre varchar(20),
    apellidos varchar(50),
    primary key (id_trabajador)
);
create table Profesion(
	codigo_profesion int,
    nombre varchar(20),
    primary key (codigo_profesion)
);
create table Trabajar(
    id_proyecto int,
    id_trabajador int,
    codigo_profesion int,
    horas_trabajadas int,
    primary key (id_proyecto, id_trabajador, codigo_profesion),
    foreign key (id_proyecto) references Proyecto (id_proyecto) on delete cascade on update cascade,
    foreign key (id_trabajador) references Trabajador (id_trabajador) on delete cascade on update cascade,
    foreign key (codigo_profesion) references Profesion (codigo_profesion) on delete cascade on update cascade
);

