-- Usar la base de datos 'jmeza'
USE jmeza;

-- Crear una tabla llamada 'usuario' en la base de datos 'jmeza'
CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    edad INT,
    ciudad VARCHAR(50)
);

-- Insertar datos en la tabla 'usuario'
INSERT INTO usuario (nombre, edad, ciudad) VALUES ('Juan', 25, 'Ciudad A');
INSERT INTO usuario (nombre, edad, ciudad) VALUES ('María', 30, 'Ciudad B');
INSERT INTO usuario (nombre, edad, ciudad) VALUES ('Carlos', 22, 'Ciudad C');
INSERT INTO usuario (nombre, edad, ciudad) VALUES ('Ana', 28, 'Ciudad A');
INSERT INTO usuario (nombre, edad, ciudad) VALUES ('Pedro', 35, 'Ciudad B');