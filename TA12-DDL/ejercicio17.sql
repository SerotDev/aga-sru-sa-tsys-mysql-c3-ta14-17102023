DROP DATABASE IF EXISTS ejercicio17;

CREATE DATABASE ejercicio17;

USE ejercicio17;

create table Profesor(
	codigo_int_prof int,
    nombre varchar(20),
    direccion varchar(50),
    telefono int,
    email varchar(50),
    dni varchar(9), 
    numero_ss int,
    anos_antiguedad int,
    primary key (codigo_int_prof)
);

create table Ciclo(
	codigo_int_ciclo int auto_increment,
    nombre varchar(50), 
    tipo_ciclo varchar(20),
    codigo_int_prof int,
    primary key (codigo_int_ciclo),
    foreign key (codigo_int_prof) references Profesor (codigo_int_prof) on delete cascade on update cascade
);

create table Asignatura(
	codigo_int_asig int auto_increment,
    codigo_europeo int, 
    nombre varchar(50),
    primary key (codigo_int_asig)
);

create table Requisito_Matricula(
	codigo_int_asig int,
    codigo_int_asig_requerida int,
    primary key (codigo_int_asig,codigo_int_asig_requerida),
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_int_asig_requerida) references Asignatura (codigo_int_asig) on delete cascade on update cascade
);

create table Imparte(
	codigo_int_prof int,
    codigo_int_asig int,
    codigo_int_ciclo int,
    primary key (codigo_int_prof,codigo_int_asig,codigo_int_ciclo),
    foreign key (codigo_int_prof) references Profesor (codigo_int_prof) on delete cascade on update cascade,
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_int_ciclo) references Ciclo (codigo_int_ciclo) on delete cascade on update cascade
);

create table Aula(
	codigo_aula int auto_increment,
    nombre varchar(20),
    numero int,
    metros int,
    primary key (codigo_aula)
);

create table Ocupar(
    codigo_int_asig int,
    codigo_aula int,
    dia_semana varchar(20),
    hora_dia varchar(20),
    primary key (codigo_int_asig,codigo_aula),
    foreign key (codigo_int_asig) references Asignatura (codigo_int_asig) on delete cascade on update cascade,
    foreign key (codigo_aula) references Aula (codigo_aula) on delete cascade on update cascade
);
