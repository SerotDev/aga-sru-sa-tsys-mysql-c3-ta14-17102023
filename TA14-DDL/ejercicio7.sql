DROP DATABASE IF EXISTS ejercicio7;

CREATE DATABASE ejercicio7;

USE ejercicio7;


create table Despachos(
	numero int auto_increment,
    capacidad int,
    primary key (numero)
);

create table Directores(
	dni varchar(8),
    NomApels varchar(255),
    DNIjefe varchar(8),
    despacho int,
    primary key (dni),
    foreign key (DNIjefe) references Directores (dni) on delete cascade on update cascade,
    foreign key (despacho) references Despachos (numero) on delete cascade on update cascade
);

insert into Despachos(capacidad) values
(10),
(15),
(7),
(9),
(11),
(6),
(25),
(100),
(3),
(3);

select * from Despachos;

insert into Directores values
('dni1','Sergi',null,1),
('dni2','Asier','dni1',2),
('dni3','Marcos',null,3),
('dni4','Juan','dni1',4),
('dni5','Andres',null,5),
('dni6','Sergi','dni3',6),
('dni7','Antonio','dni5',7),
('dni8','Jose',null,8),
('dni9','Marc',null,9),
('dni10','David','dni8',1)
;

select * from Directores;