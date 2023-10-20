DROP DATABASE IF EXISTS ejercicio2;

CREATE DATABASE ejercicio2;

USE ejercicio2;

create table Empresa(
	cif varchar(20),
    nombre varchar(20),
    direccion varchar(20),
    telefono varchar(20),
    primary key (cif)
);

create table Alumno(
	dni varchar(20),
    nombre varchar(20),
    apellidos varchar(20),
    edad int,
    direccion varchar(20),
    telefono varchar(20),
    cif varchar(20),
    primary key (dni),
    foreign key (cif) references Empresa (cif) on delete cascade on update cascade
);

create table Profesor(
	dni varchar(20),
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(20),
    telefono varchar(20),
    primary key (dni)
);

create table Tipo_curso(
	id int auto_increment,
    duracion int,
    titulo varchar(20),
    descripcion varchar(500),
    primary key (id)
);

create table Curso(
	id int auto_increment,
    nombre varchar(20),
    fecha_ini date,
    fecha_fin date,
    dni varchar(20),
    id_curso int,
    primary key (id),
	foreign key (dni) references Profesor (dni) on delete cascade on update cascade,
	foreign key (id_curso) references Tipo_curso (id) on delete cascade on update cascade
);

create table Asistir(
	dni varchar(20),
    id_curso int,
    nota double,
    primary key (dni, id_curso),
	foreign key (dni) references Alumno (dni) on delete cascade on update cascade,
	foreign key (id_curso) references Curso (id) on delete cascade on update cascade
);

