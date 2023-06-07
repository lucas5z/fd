CREATE DATABASE trabajo;
USE trabajo;
/* La longitud del código debe ser 5
Los apellidos deben escribirse con mayúsculas.
Los profesores deben tener 18 años o mas.
El grado titulo debe variar entre 1 y 4.
El DNI debe tener longitud 8.
El pago debe variar entre 450 y 3600 soles. */
CREATE Table Profesor(
  codigo VARCHAR(6) PRIMARY KEY CHECK(LENGTH(codigo) = 5),
  Apellido VARCHAR(50) NOT NULL CHECK(Apelligo = UPPER(Apellido)),
  Nombre VARCHAR(40) NOT NULL,
  Sexo BIT NOT NULL,
  Fecha_nac DATE NOT NULL,
  Grado_Titulo INT UNSIGNED NOT NULL CHECK(
    Grado_Titulo <= 4
    AND Grado_Titulo >= 1
  ),
  DNI INT UNSIGNED NOT NULL CHECK(LENGTH(codigo) = 8),
  Direccion VARCHAR(50) NOT NULL,
  Pago DECIMAL(5, 2) NOT NULL CHECK(
    Pago >= 450
    AND Pago <= 3600
  ),
  Telefono INT NOT NULL
);
/* )Tabla Curso, definir las siguientes restricciones.:
La longitud del código debe ser 3.
Los nombres de los cursos deben escribirse con mayúsculas.
Las horas debe variar entre 30 y 80 horas.
EL precio del curso debe variar entre 90 y 240 soles. */
CREATE Table Curso(
  Codigo INT UNSIGNED PRIMARY KEY CHECK(LENGTH(Codigo) = 3),
  Nombre VARCHAR(60) NOT NULL CHECK(Nombre = UPPER(Nombre)),
  Horas INT UNSIGNED NOT NULL CHECK(
    Horas >= 30
    AND Horas <= 90
  ),
  Precio DECIMAL(4, 2) NOT NULL CHECK(
    Precio <= 240
    AND Precio >= 90
  ),
  Prerrequisitos INT UNSIGNED
);
/* c)Tabla Clase, definir las siguientes restricciones.:
La longitud del numero debe ser 5 */
CREATE Table Curso(
  Codigo INT UNSIGNED PRIMARY KEY,
  Nombre VARCHAR(60) NOT NULL,
  Horas INT UNSIGNED NOT NULL,
  Precio DECIMAL(4, 2) NOT NULL,
  Prerrequisitos INT UNSIGNED
);