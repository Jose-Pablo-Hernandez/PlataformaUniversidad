use Plataforma_Universidad;

Insert into Carreras
(ID_Carrera,Nombre_Carrera,Facultad,Encargado_Carrera,Estado_Carrera)
value
("1122","Sistemas","Ingenieria","Esduardo del Aguila","1"),
("2233","Derecho","Derecho","Daniel Ramirez","1"),
("3344","Odontologia","Medicina","Julio Cifuentes","0");

Insert into Cursos
(ID_Curso,Nombre_Curso,Horario_Curso,Prerrequisito_Curso,Creditos_Curso,Estado_Curso)
value
("01","Fisca ll","8:30:00","001","5","1"),
("02","Calculo ll","9:00:00","002","5","1"),
("03","Derecho","7:30:00","003","5","1");

describe  sede;

Insert into Sede
(ID_Sede,Nombre_Sede,Direccion_Sede,Numero_Clases,Numero_Alumnos,Numero_Maestros,Numero_Carreras,Comentario,Estado_Sede)
value
("01","Portales","Zona 18","3","5","5","4","Ninguno","1"),
("02","VillaN","Zona 12","6","8","3","11","Ninguno","1"),
("03","Central","Zona 2","7","8","9","4","Ninguno","1");

Insert into Maestro
(ID_Maestro,CUI_Maestro,Nombre_Maestro,Apellido_Maestro,Fecha_Nacimiento,Telefono_Maestro,Direccion_Maestro,Correo_Maestro,Genero_Mestro,Estado_Civil,Sueldo_Maestro,Estado_Maestro,Username_Maestro,Password_Maestro,ID_Curso)
value
("001","123456789","Jorge","Zapeta","1886-09-13","234526461","Zona 2","Jorge1234@gmail.com","M","S","2700","1","Jorge","1234567891","01"),
("002","1234567891","Brayan","Trigales","1885-08-14","234526462","Zona 1","Brayan1234@gmail.com","M","S","2800","1","Brayan","1234567892","02"),
("003","1234567892","Pablo","Hernandez","1884-07-15","234526463","Zona 3","Pablo1234@gmail.com","M","S","2900","1","Pablo","1234567892","03");

Insert into Horario
(ID_Horario,ID_Carrera,ID_Curso,ID_Maestro)
value
("0001","1122","01","001"),
("0002","2233","02","002"),
("0003","3344","03","003");

Insert into Alumno
(ID_Alumno,CUI_Alumno,Nombre_Alumno,Apellido_Alumno,Fecha_Nacimiento,Telefono_Alumno,Direccion_Alumno,Correo_Alumno,Genero_Alumno,Estado_Alumno,Estado_Mensual,Semestre_Alumno,Jornada_Alumno,Mensualidad,Username_Alumno,Password_Alumno,ID_Carrera,ID_Horario,ID_Sede)
value
("00001","123456781","Josue","Zapata","1999-8-1","1234567891","Zona 18","Josue@miumg.edu.gt","M","S","S","1","Matutina","750","Josue","12341","1122","0001","01"),
("00002","123456782","Lizandro","Choy","1998-7-2","1234567892","Zona 17","Lizandro@miumg.edu.gt","M","S","S","1","Matutina","750","Jorge","12342","2233","0002","02"),
("00003","123456783","Brayan","Cifuentes","1997-6-3","1234567893","Zona 16","Brayan@miumg.edu.gt","M","S","S","1","Matutina","750","Jorge","12342","3344","0003","03");

Insert into Notas
(ID_Alumno,ID_Curso,Primer_Parcial,Segundo_Parcial,Final,Actividades,Alumno_Aprobo)
value
("00001","01","15","18","25","25","A"),
("00002","02","15","18","25","25","A"),
("00003","03","15","18","25","25","A");

Insert into cronograma
(ID_Cronograma,Nombre_Actividad,Encargado_Actividad,Horario_Actividad,Ubicacion_Actividad,Estado_Cronograma)
value
("000001","Tarea 1","Fernando Aguila","8:00:00","Zona 1","A"),
("000002","Tarea 2","Gabriel Ramirez","9:00:00","Zona 2","A"),
("000003","Tarea 3","Alfonso Sosa","10:00:00","Zona 3","A");

Insert into Pagos
(ID_Pago,Nobre_Pago,ID_alumno,Mensualidad,Estado_Pago)
value
("0000001","Pago 1","00001","750","S"),
("0000002","Pago 2","00002","750","S"),
("0000003","Pago 3","00003","750","S");

insert into Usuarios
(Username,Password_Usuario,Tipo_Usuario)
value
("Josue","12341","Administrador"),
("Jorge","12342","Administrador"),
("Brayan","12343","Administrador");