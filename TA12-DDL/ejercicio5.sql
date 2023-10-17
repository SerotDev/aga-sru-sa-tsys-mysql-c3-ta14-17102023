DROP DATABASE IF EXISTS ejercicio5;

CREATE DATABASE ejercicio5;

USE ejercicio5;

create table Almacen(
	num_almacen int auto_increment,
    descripcion varchar(255),
    direccion varchar(100),
    primary key (num_almacen)
);
create table Estanteria(
	letra varchar(1),
    num_almacen int,
    primary key (letra, num_almacen),
    foreign key (num_almacen) references Almacen (num_almacen) on delete cascade on update cascade
);
create table Pieza(
	modelo varchar(20),
    precio double,
    descripcion varchar(255),
	letra_estanteria varchar(1),
    primary key (modelo),
    foreign key (letra_estanteria) references Estanteria (letra) on delete cascade on update cascade
);
create table Tipo_de_pieza(
	id_tipo int auto_increment,
    descripcion varchar(255),
    modelo_pieza varchar(20),
    primary key (id_tipo),
    foreign key (modelo_pieza) references Pieza (modelo) on delete cascade on update cascade
);
create table Componer(
	modelo_pieza_simple varchar(20),
    modelo_pieza_compuesta varchar(20),
    cantidad int,
    primary key (modelo_pieza_simple,modelo_pieza_compuesta),
    foreign key (modelo_pieza_simple) references Pieza (modelo) on delete cascade on update cascade,
    foreign key (modelo_pieza_compuesta) references Pieza (modelo) on delete cascade on update cascade
);
