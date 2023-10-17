DROP DATABASE IF EXISTS ejercicio15;

CREATE DATABASE ejercicio15;

USE ejercicio15;

create table Menu(
	id_menu int auto_increment,
    numero_personas int,
    primary key (id_menu)
);
create table Plato(
	id_plato int auto_increment,
    nombre varchar(20),
    descripcion varchar(500),
    primary key (id_plato)
);
create table Tener(
	id_menu int,
	id_plato int,
    primary key (id_menu, id_plato),
    foreign key (id_menu) references Menu (id_menu) on delete cascade on update cascade,
    foreign key (id_plato) references Plato (id_plato) on delete cascade on update cascade
);
create table Dias(
	fecha date,
    temperatura double,
	num_personas int,
    plato_exitoso varchar(20),
    id_menu int,
    foreign key (id_menu) references Menu (id_menu) on delete cascade on update cascade,
    primary key (fecha)
);
create table Consumir(
	fecha date,
    id_plato int,
    cant_platos int,
    primary key(fecha, id_plato),
    foreign key (fecha) references Dias (fecha) on delete cascade on update cascade,
    foreign key (id_plato) references Plato (id_plato) on delete cascade on update cascade
);