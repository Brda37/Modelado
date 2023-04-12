create database CallCenter;
use CallCenter;

create table Cliente (
Id_Documento int not null primary key,
Nombre_Cli varchar (50) not null,
Apellido_Cli varchar (50) not null,
Correo_Cli varchar (50) not null,
Telefono_Cli int not null,
Fecha_nacimiento_Cli date not null,
);

create table Cuenta (
Id_Cuenta int not null primary key,
Direccion varchar (50) not null
);

create table Propietario (
Id_Cuenta int not null,
Id_Documento int not null ,
constraint fk_Cliente FOREIGN KEY (Id_Documento) REFERENCES	Cliente (Id_Documento),
constraint fk_Cuenta FOREIGN KEY (Id_Cuenta) REFERENCES Cuenta (Id_Cuenta)
);

create table Facturacion (
Id_Movimiento int not null primary key,
Tipo_Movimiento varchar(50) not null,
No_Documento_Fac int not null,
Creacion date not null,
Vencimiento date not null,
Monto int not null,
Monto_Acumulado int not null
);

create table Cuent_Fac(
Id_Cuenta int not null,
Id_Movimiento int not null,
constraint fk_Facturacion FOREIGN KEY (Id_Movimiento) REFERENCES Facturacion (Id_Movimiento),
constraint fk_Cuenta_Fac FOREIGN KEY (Id_Cuenta) REFERENCES Cuenta (Id_Cuenta)
);

create table Caso(
Id_Caso int not null primary key,
Tipo_Caso varchar (50) not null,
Sub_Caso varchar (50) not null,
Descripcion_Caso varchar(max) not null,
Estado_Caso varchar (50) not null,
Cracion_Caso date not null,
Vencimiento_Caso date not null,
Repuesta_Caso varchar(max) not null
);

create table Cuent_Cas(
Id_Cuenta int not null,
Id_Caso int not null,
constraint fk_Caso FOREIGN KEY (Id_Caso) REFERENCES Caso (Id_Caso),
constraint fk_Cuenta_Cas FOREIGN KEY (Id_Cuenta) REFERENCES Cuenta (Id_Cuenta)
);

create table Emergencia (
Id_Emergencia int not null primary key,
Tipo_Emer varchar (50) not null,
Descripcion_Emer varchar (max) not null,
Riesgo_Emer varchar (50) not null,
Estado_Emer varchar (50) not null,
Correo_Emer varchar (50),
Telefono_Emer varchar (50)
);

create table Cuent_Emer(
Id_Cuenta int not null,
Id_Emergencia int not null,
constraint fk_Emergencia FOREIGN KEY (Id_Emergencia) REFERENCES Emergencia (Id_Emergencia),
constraint fk_Cuenta_Emer FOREIGN KEY (Id_Cuenta) REFERENCES Cuenta (Id_Cuenta)
);

create table Lectura(
Id_Lectura int not null primary key,
Fecha date not null,
LecturaAnterior float not null,
LecturaActual float not null,
Generador float not null,
Consumo float not null
);

create table Cuent_Lec(
Id_Cuenta int not null,
Id_Lectura int not null,
constraint fk_Lectura FOREIGN KEY (Id_Lectura) REFERENCES Lectura (Id_Lectura),
constraint fk_Cuenta_Lec FOREIGN KEY (Id_Cuenta) REFERENCES Cuenta (Id_Cuenta)
);