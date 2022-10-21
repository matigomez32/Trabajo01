drop database if exists hotel;
CREATE DATABASE hotel;
use hotel;


drop table if exists clientes;
drop table if exists reservas;
drop table if exists habitaciones;
drop table if exists hoteles;

CREATE TABLE clientes (
  idcliente VARCHAR(45),
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  domicilio VARCHAR(45),
  codPostal VARCHAR(45),
  telefono INT,
  PRIMARY KEY (idcliente));




CREATE TABLE reservas (
  idreserva VARCHAR(45),
  idcliente VARCHAR(45),
  idhabitacion VARCHAR(45),
  fechaInicio DATETIME ,
  fechaFin DATETIME,
  precio INT,
  PRIMARY KEY (idreserva));

  

  CREATE TABLE habitaciones (
  idhotel VARCHAR(45),
  idhabitacion VARCHAR(45),
  idcliente VARCHAR(45),
  idreserva VARCHAR(45),
  descripcion VARCHAR(45),
  capacidad VARCHAR(45),
   PRIMARY KEY (idhotel));


  CREATE TABLE hoteles (
  idhotel VARCHAR(45),
  nombreHotel VARCHAR(45),
  descripcion VARCHAR(45),
  categoria VARCHAR(45),
  domicilio VARCHAR(45),
  codPostal INT,
  telefono INT,
  PRIMARY KEY (idhotel));

  
  
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_clientes
FOREIGN KEY (idcliente) REFERENCES clientes(idcliente);

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_habitaciones
FOREIGN KEY (idhotel) REFERENCES habitaciones(idhotel);

ALTER TABLE habitaciones
ADD CONSTRAINT fk_hoteles_habitaciones
FOREIGN KEY (idhotel) REFERENCES  hoteles(idhotel);


 
       select *
    from clientes;
INSERT INTO  clientes(idcliente, nombre, apellido, domicilio, codPostal, telefono)
    VALUES ('1', 'Jorge', 'Ramirez', 'Jufre 456', '1313', 48569356);
    INSERT INTO  clientes(idcliente, nombre, apellido, domicilio, codPostal, telefono)
    VALUES ('2', 'Matias', 'Perez', 'Julian Alvarez', '1813', 38569356);
    INSERT INTO  clientes(idcliente, nombre, apellido, domicilio, codPostal, telefono)
    VALUES ('3', 'Alfonso', 'Garcia', 'Loyola 2342', '1413', 88569356);
    INSERT INTO  clientes(idcliente, nombre, apellido, domicilio, codPostal, telefono)
    VALUES ('4', 'Osmar', 'Juarez', ' Vera 1456', '1913', 98569356);
    INSERT INTO  clientes(idcliente, nombre, apellido, domicilio, codPostal, telefono)
    VALUES ('5', 'Laura', 'Ruiz', 'Juan Justo 4456', '1313', 58569356);


     
 


