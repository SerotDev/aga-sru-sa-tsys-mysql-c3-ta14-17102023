drop database if exists ejercicio2;

create database ejercicio2;

use ejercicio2;

create table Libro(
	clave_libro int,
    titulo varchar(60),
    idioma varchar(15),
    formato varchar(15),
    clave_editorial smallint,
    primary key	(clave_libro)
);
create table Tema(
	clave_tema smallint,
    nombre varchar(40),
    primary key (clave_tema)
);
create table Autor(
	clave_autor int,
    nombre varchar(60),
    primary key (clave_autor)
);
create table Editorial(
	clave_editorial smallint,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    primary key (clave_editorial)
);
create table Ejemplar(
	clave_ejemplar int,
    clave_libro int,
    numero_orden smallint,
    edicion smallint,
    ubicacion varchar(15),
    categoria char,
    primary key (clave_ejemplar),
    foreign key (clave_libro) references Libro (clave_libro) on delete cascade on update cascade
);
create table Socio(
	clave_socio int,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    categoria char,
    primary key (clave_socio)
);
create table Prestamo(
	clave_socio int,
    clave_ejemplar int,
    numero_orden smallint,
    fecha_prestamo date,
    notas blob,
    primary key(clave_socio, clave_ejemplar),
    foreign key (clave_socio) references Socio (clave_socio) on delete cascade on update cascade,
    foreign key (clave_ejemplar) references Ejemplar (clave_ejemplar) on delete cascade on update cascade
);
create table Trata_Sobre(
	clave_libro int,
    clave_tema smallint,
    primary key (clave_libro, clave_tema),
    foreign key (clave_libro) references Libro (clave_libro) on delete cascade on update cascade,
    foreign key (clave_tema) references Tema (clave_tema) on delete cascade on update cascade
);
create table Escrito_Por(
	clave_libro int,
    clave_autor int,
    primary key(clave_libro, clave_autor),
    foreign key (clave_libro) references Libro (clave_libro) on delete cascade on update cascade,
    foreign key (clave_autor) references Autor (clave_autor) on delete cascade on update cascade
);