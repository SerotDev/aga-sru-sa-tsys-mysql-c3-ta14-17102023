drop database if exists ejercicio1;

create database ejercicio1;

use ejercicio1;

create table Estacion(
	identificador int auto_increment,
    latitud int,
    longitud int,
    altitud int,
    primary key(identificador)
);
create table Muestra(
identificador_estacion int,
fecha date,
temperatura_minima int,
temperatura_maxima int,
precipitaciones boolean,
humedad_minima int,
humedad_maxima int,
velocidad_viento_minima int,
velocidad_viento_maxima int,
primary key (identificador_estacion),
foreign key(identificador_estacion) references Estacion(identificador) on delete cascade on update cascade
);
