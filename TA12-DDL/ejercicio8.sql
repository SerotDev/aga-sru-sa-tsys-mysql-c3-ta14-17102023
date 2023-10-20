DROP DATABASE IF EXISTS ejercicio8;

CREATE DATABASE ejercicio8;

USE ejercicio8;

create table Aeropuerto(
	id int auto_increment,
    nombre varchar(20),
    localidad varchar(20),
    pais varchar(20),
    primary key (id)
);

create table Avion(
	id int auto_increment,
    plazas int,
    primary key (id)
);

create table Vuelo(
	id int auto_increment,
    plazas int,
    fecha_salida date,
    fecha_llegada date,
    id_aeropuerto_llegada int,
    id_aeropuerto_salida int,
    id_avion int,
    primary key (id),
    foreign key (id_aeropuerto_llegada) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_aeropuerto_salida) references Aeropuerto (id) on delete cascade on update cascade,
	foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);

create table Asiento(
	id int auto_increment,
    planta int,
    columna char,
    fila int,
    id_avion int,
    primary key (id),
    foreign key (id_avion) references Avion (id) on delete cascade on update cascade
);

create table Tarjeta_embarque(
	id int auto_increment,
    num_reserva int,
    fecha date,
    id_asiento int,
    primary key (id),
    foreign key (id_asiento) references Asiento (id) on delete cascade on update cascade
);

create table Cliente(
	id int auto_increment,
    nombre varchar(20),
    apellidos varchar(20),
    direccion varchar(20),
    telefono varchar(20),
    tarjeta_credito varchar(20),
    primary key (id)
);

create table Reserva(
	dni_cliente int,
    id_tarjeta_embarque int,
    primary key (dni_cliente,id_tarjeta_embarque),
    foreign key (dni_cliente) references Cliente (id) on delete cascade on update cascade,
    foreign key (id_tarjeta_embarque) references Tarjeta_embarque (id) on delete cascade on update cascade
);