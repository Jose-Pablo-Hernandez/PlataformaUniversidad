create database Plataforma_Universidad;
use Plataforma_Universidad;

create table Carreras
(
ID_Carrera int PRIMARY KEY,
Nombre_Carrera varchar(80) not null,
Facultad varchar(30) not null,
Encargado_Carrera varchar(50) not null,
Estado_Carrera varchar(1) not null

)Engine =InnoDB, default char set=latin1;

create table Cursos(

	ID_Curso int primary key,
    Nombre_Curso varchar(60) not null,
    Horario_Curso time not null,
    Prerrequisito_Curso int,
    Creditos_Curso int,
    Estado_Curso char(1)
)Engine= InnoDB, default char set= latin1;

create table Sede(
	ID_Sede int primary key,
    Nombre_Sede varchar(50) not null,
    Direccion_Sede varchar(100) not null,
    Numero_Clases int,
	Numero_Alumnos int,
    Numero_Maestros int,
    Numero_Carreras int,
    Comentario varchar(100),
    Estado_Sede char(1)
)Engine= InnoDB, default char set= latin1;

create table Maestro(
	ID_Maestro int primary key,
    CUI_Maestro int not null,
    Nombre_Maestro varchar(60) not null,
    Apellido_Maestro varchar(60) not null,
    Fecha_Nacimiento date not null,
    Telefono_Maestro int not null,
    Direccion_Maestro varchar(80) not null,
    Correo_Maestro varchar(50) not null,
    Genero_Mestro char(1) not null,
    Estado_Civil char(1),
    Sueldo_Maestro float,
    Estado_Maestro char(1) not null,
    
     -- Autenticacion 
    Username_Maestro varchar(80) not null,
    Password_Maestro varchar(80) not null,
    
    ID_Curso int not null,
    foreign key (ID_Curso) references Cursos(ID_Curso)
)Engine= InnoDB, default char set= latin1;