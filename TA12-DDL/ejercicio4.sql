DROP DATABASE IF EXISTS ejercicio4;

CREATE DATABASE ejercicio4;

USE ejercicio4;

create table Guerra(
	id int auto_increment,
    nombre varchar(20),
    ano_inicio int,
    ano_fin int,
    primary key (id)
);

create table Bandos(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);

create table Combatir(
	id_guerra int,
    id_bando int,
    ganador boolean,
    primary key (id_guerra,id_bando),
	foreign key (id_guerra) references Guerra (id) on delete cascade on update cascade,
    foreign key (id_bando) references Bandos (id) on delete cascade on update cascade
);

create table Paises(
	id int auto_increment,
    nombre varchar(20),
    primary key (id)
);

create table Tiempo_independencia(
	id int auto_increment,
    nombre varchar(20),
    ano_inicio date,
    ano_final date,
    id_pais int,
    primary key (id),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade
);

create table Participar(
	id_pais int,
    id_bando int,
    ano_entrada date,
    ano_salida date,
    primary key (id_pais, id_bando),
    foreign key (id_pais) references Paises (id) on delete cascade on update cascade,
    foreign key (id_bando) references Bandos (id) on delete cascade on update cascade
);