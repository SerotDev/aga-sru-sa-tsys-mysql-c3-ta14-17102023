drop database if exists ejercicio1;

create database ejercicio1;

use ejercicio1;

create table Autores(
	id_autor int,
    nombre varchar(20),
    primary key (id_autor)
);
create table Libros(
	isbn int,
    editorial varchar(30),
    titulo varchar(30),
    ano_escritura int,
	primary key (isbn)
);
create table Escribir(
	id_autor int,
    isbn int,
    foreign key (id_autor) references Autores (id_autor) on delete cascade on update cascade,
    foreign key (isbn) references Libros (isbn) on delete cascade on update cascade,
    primary key(id_autor, isbn)
);
create table Volumenes(
	id_volumen int,
    deteriorado int,
    isbn int,
    foreign key (isbn) references Libros (isbn) on delete cascade on update cascade,
    primary key (id_volumen)
);
create table Personas(
	dni varchar(9),
    codigo_socio int,
    nombre varchar(20),
    apellido varchar (20),
    direccion varchar (50),
    telefono int,
    primary key (dni)
);
create table Prestamos(
	id_prestamo int,
    fecha_real date,
    fecha_prestamo date,
    id_volumen int,
    dni varchar(9),
    foreign key (id_volumen) references Volumenes (id_volumen) on delete cascade on update cascade,
    foreign key (dni) references Personas (dni) on delete cascade on update cascade,
    primary key (id_prestamo)
);