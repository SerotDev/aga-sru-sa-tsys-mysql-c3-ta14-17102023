DROP DATABASE IF EXISTS ejercicio18;

CREATE DATABASE ejercicio18;

USE ejercicio18;

create table Persona(
	dni varchar(10) primary key,
    nombre varchar(50),
    apellido varchar(50),
    telefono_fijo int,
    telefono_movil int
);
create table Trabajador(
codigo_personal varchar(20)primary key,
dni varchar(10), 
foreign key (dni) references Persona (dni) on delete cascade on update cascade
);
create table Cliente(
codigo_personal varchar(20)primary key,
dni varchar(10), 
foreign key (dni) references Persona (dni) on delete cascade on update cascade
);
create table Inmueble(
codigo_inmueble varchar(20) primary key,
direccion varchar(100),
descripcion varchar(255),
metros int
);
create table Piso(
codigo_inmueble varchar(20) primary key,
codigo_especial varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);
create table Garaje(
codigo_inmueble varchar(20) primary key,
planta int,
numero int,
codigo_piso varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade,
foreign key (codigo_piso) references Piso(codigo_piso) on delete cascade on update cascade
);
create table Local(
codigo_inmueble varchar(20) primary key,
uso varchar(200),
servicio boolean,
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);
create table Propiedad(
codigo_compra varchar(20) primary key,
valor int,
fecha date,
codigo_inmueble varchar(20),
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);
create table Adquirir(
codigo_personal varchar(20),
codigo_compra varchar(20),
primary key (codigo_personal, codigo_compra),
foreign key (codigo_compra) references Cliente(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_compra) references Propiedad(codigo_compra) on delete cascade on update cascade
);
create table Alquiler(
id int auto_increment primary key,
numero_alquiler int,
codigo_personal_trabajador varchar(20),
codigo_personal_cliente varchar(20),
codigo_inmueble varchar(20),
foreign key (codigo_personal_trabajador) references Trabajador(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_personal_cliente) references Cliente(codigo_personal) on delete cascade on update cascade,
foreign key (codigo_inmueble) references Inmueble(codigo_inmueble) on delete cascade on update cascade
);
create table Pago_Alquiler(
id int auto_increment primary key,
valor_pago int,
ano int,
mes varchar(20),
id_alquiler int,
foreign key (id_alquiler) references Alquiler(id) on delete cascade on update cascade
);