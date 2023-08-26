create DATABASE Aeropuerto;
use Aeropuerto;


create table TIQUETE (
valor integer not null,
origen varchar (50) not null,
destino varchar (50) not null,
check_in varchar (50) not null,
Fecha_Abordaje date not null,
numero integer not null,
 vuelo_numero integer not null,
 pasajero_cedula integer not null,
 silla_idSilla integer not null,
 silla_Avion_idAvion integer not null,
 
constraint TIQUETE_pk primary key (numero)
);

CREATE TABLE  PASAJERO(
nombre_pasajero varchar (50) not null,
Apellido_pasajero varchar (50) not null,
equipaje varchar (50) not null,
cedula integer not null,

CONSTRAINT PASAJERO PRIMARY KEY (cedula)
);

create table AVION (
estado VARCHAR (50) not null,
suministros varchar (2) not null,
tipo_avion VARCHAR (50) not null,
id_avion integer not null,
modelo VARCHAR (50) not null,
nro_silla_ejecutiva integer not null,
nro_silla_alta integer not null,

CONSTRAINT AVION PRIMARY KEY(id_avion)
);

CREATE table SILLA (

id_silla integer not null,
UBICACION_idUBICACION VARCHAR (50) not null,
CLASE_idCLASE VARCHAR (50) not null,
AVION_idAVION VARCHAR (50) not null,

CONSTRAINT SILLA PRIMARY KEY (id_silla)
);