-- Crear base de datos
CREATE DATABASE Universidad;

USE Universidad;

CREATE TABLE Estudiantes (
	EstudianteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL, -- comentarios NOT NULL: no puede ser nulo
    Apellido VARCHAR(100) NOT NULL,
    Fecha_nacimiento DATE,
    Correo VARCHAR(100) UNIQUE NOT NULL, -- UNIQUE: el campo debe ser unico
    Telefono INT
);

CREATE TABLE Cursos(
	CursoID INT AUTO_INCREMENT PRIMARY KEY,
	nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creditos INT NOT NULL
);

CREATE TABLE Profesores(
	id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    especialidad VARCHAR(100)
);

CREATE  TABLE Estudiantes_Cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(EstudianteID) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Cursos(CursoID) ON DELETE CASCADE
);


INSERT INTO Estudiantes (Nombre, Apellido, Correo, fecha_nacimiento) 
VALUES
('Juan', 'Pérez', 'juan.perez@universidad.com', '2000-05-10'),
('María', 'Gómez', 'maria.gomez@universidad.com', '1999-03-22'),
('Carlos', 'López', 'carlos.lopez@universidad.com', '2001-11-15'),
('Ana', 'Martínez', 'ana.martinez@universidad.com', '1998-07-08');


INSERT INTO Cursos (nombre_curso, descripcion, creditos) 
VALUES
('Matemáticas Básicas', 'Introducción a los fundamentos matemáticos.', 3),
('Física I', 'Conceptos fundamentales de mecánica clásica.', 4),
('Programación en Python', 'Curso introductorio de programación en Python.', 5),
('Historia Universal', 'Repaso de los eventos más importantes de la historia mundial.', 2);


INSERT INTO Profesores (nombre, apellido, email, especialidad) 
VALUES
('Luis', 'Ramírez', 'luis.ramirez@universidad.com', 'Matemáticas'),
('Sofía', 'Fernández', 'sofia.fernandez@universidad.com', 'Física'),
('Andrés', 'González', 'andres.gonzalez@universidad.com', 'Programación'),
('Marta', 'Ruiz', 'marta.ruiz@universidad.com', 'Historia');


INSERT INTO Estudiantes_Cursos (id_estudiante, id_curso, fecha_inscripcion) 
VALUES
(1, 1, '2024-01-15'), -- Juan inscrito en Matemáticas Básicas
(1, 3, '2024-01-20'), -- Juan inscrito en Programación en Python
(2, 2, '2024-01-16'), -- María inscrita en Física I
(3, 3, '2024-01-18'), -- Carlos inscrito en Programación en Python
(4, 4, '2024-01-19'); -- Ana inscrita en Historia Universal


SHOW TABLES; -- Puedo ver que tablas he creado

SELECT*FROM estudiantes_cursos;

/* Tipo de datos
INT Numeros 
VARCHAR Textos 
NVARCHAR Internacionalizar
CHAR Cracteres simplementes A 
TEXT Mas caracteres que un VARCHAR
FLOAT 24234.000000
DOUBLE 

