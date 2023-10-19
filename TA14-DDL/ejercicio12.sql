DROP DATABASE IF EXISTS ejercicio12;

CREATE DATABASE ejercicio12;

USE ejercicio12;

create table Profesores(
	dni varchar(9),
	nombre varchar(20) UNIQUE,
	apellido_1 varchar(20),
	apellido_2 varchar(20),
	dirreccion varchar(50),
	titulo varchar(20),
	gana double NOT NULL,
	primary key (dni)
);
create table Cursos(
	codigo_curso int auto_increment,
	nombre varchar(20) UNIQUE,
	maximo_alumnos int,
	fecha_inicio datetime,
	fecha_fin datetime,
	numero_horas int NOT NULL,
	dni_profesor varchar(9),
	primary key (codigo_curso),
	foreign key (dni_profesor) references Profesores (dni) on delete cascade on update cascade,
	CONSTRAINT Check_Fechas CHECK (fecha_inicio < fecha_fin)
);
create table Alumnos(
	dni varchar(9),
	nombre varchar(20),
	apellido_1 varchar(20),
	apellido_2 varchar(20),
	dirreccion varchar(50),
	sexo char(1),
    fecha_nacimiento date,
	codigo_curso int auto_increment,
	primary key (dni),
	foreign key (codigo_curso) references Cursos (codigo_curso) on delete cascade on update cascade,
	CONSTRAINT Check_Sexo CHECK (sexo in ('M','H'))
);
