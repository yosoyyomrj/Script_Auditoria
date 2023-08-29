create DATABASE Aeropuerto;
use Aeropuerto;

    -- drop DATABASE Aeropuerto;
CREATE TABLE PASAJERO (
    cedula INTEGER NOT NULL PRIMARY KEY,
    nombre_pasajero VARCHAR(50) NOT NULL,
    Apellido_pasajero VARCHAR(50) NOT NULL,
    equipaje VARCHAR(50) NOT NULL
    
);


CREATE TABLE AVION (
    id_avion INTEGER NOT NULL PRIMARY KEY,
    estado VARCHAR(50) NOT NULL,
    suministros VARCHAR(2) NOT NULL,
    tipo_avion VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    nro_silla_ejecutiva INTEGER NOT NULL,
    nro_silla_alta INTEGER NOT NULL,
    tiquete_vuelo integer not null,
    personal_idPersonal integer not null

);


CREATE TABLE TIQUETE (
    numero_tiquete INTEGER NOT NULL PRIMARY KEY,
    valor INTEGER NOT NULL,
    origen VARCHAR(50) NOT NULL,
    destino VARCHAR(50) NOT NULL,
    check_in VARCHAR(50) NOT NULL,
    Fecha_Abordaje DATE NOT NULL,
    numero_numeroVuelo INTEGER NOT NULL,
    pasajero_cedula INTEGER NOT NULL,
    silla_idSilla INTEGER NOT NULL,
    silla_Avion_idAvion INTEGER NOT NULL

);

CREATE TABLE SILLA (
    id_silla INTEGER NOT NULL PRIMARY KEY,
    UBICACION_idUBICACION VARCHAR(50) NOT NULL,
    AVION_idAVION INTEGER NOT NULL,
    ubicacion_id_ubicacion integer not null,
    CLASE_idCLASE integer not null
    

	
);

CREATE TABLE VUELO (
    numeroVuelo INTEGER NOT NULL PRIMARY KEY,
    fecha_salida DATETIME NOT NULL,
    fecha_llegada DATETIME NOT NULL,
    origen_aeropuerto_id INTEGER NOT NULL,
    destino_aeropuerto_id INTEGER NOT NULL,
    personal_idPersonal integer not null
    
);

CREATE TABLE AEROPUERTO (
    id_aeropuerto INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ubicacion VARCHAR(100) NOT NULL
    
    
);


CREATE TABLE PERSONAL (
    idPersonal INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL
    
);


CREATE TABLE CLASE (
    id_clase INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
    
);

CREATE TABLE UBICACION (
    id_ubicacion INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
    
);

alter table TIQUETE add CONSTRAINT TIQUETE_PASAJERO FOREIGN KEY (pasajero_cedula) references PASAJERO (cedula);
alter table  AVION add CONSTRAINT TIQUETE_AVION FOREIGN KEY (tiquete_vuelo) references TIQUETE (numero_tiquete);
alter table  SILLA add CONSTRAINT SILLA_AVION FOREIGN KEY (AVION_idAVION) references AVION (id_avion );
alter table SILLA add CONSTRAINT SILLA_CLASE FOREIGN KEY(CLASE_idCLASE) REFERENCES CLASE(id_clase);
alter table SILLA add CONSTRAINT SILLA_UBICACION FOREIGN KEY(ubicacion_id_ubicacion ) REFERENCES UBICACION(id_ubicacion );
alter table AVION add CONSTRAINT AVION_PERSONAL FOREIGN KEY(personal_idPersonal) REFERENCES PERSONAL(idPersonal);
alter table TIQUETE add CONSTRAINT TIQUETE_VUELO FOREIGN KEY(numero_numeroVuelo) REFERENCES VUELO(numeroVuelo);
alter table VUELO add CONSTRAINT VUELO_ORIGEN FOREIGN KEY(origen_aeropuerto_id) REFERENCES aeropuerto(id_aeropuerto);
alter table VUELO add CONSTRAINT VUELO_DESTINO FOREIGN KEY(destino_aeropuerto_id) REFERENCES aeropuerto(id_aeropuerto);
