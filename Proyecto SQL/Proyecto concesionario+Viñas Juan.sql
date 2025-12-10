CREATE DATABASE DBConcesionarias;

USE DBConcesionarias;
CREATE TABLE concesionaria (
id_concesionaria INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(150) NOT NULL,
direccion VARCHAR(200),
ciudad VARCHAR(100),
telefono VARCHAR(30)
);
CREATE TABLE marca (
id_marca INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);
CREATE TABLE modelo (
id_modelo INT AUTO_INCREMENT PRIMARY KEY,
id_marca INT NOT NULL,
nombre_modelo VARCHAR(100) NOT NULL,
CONSTRAINT fk_modelo_marca
FOREIGN KEY (id_marca) REFERENCES marca(id_marca)
);
CREATE TABLE auto (
id_auto INT AUTO_INCREMENT PRIMARY KEY,
id_modelo INT NOT NULL,
id_concesionaria INT NOT NULL,
anio YEAR NOT NULL,
color VARCHAR(50),
estado VARCHAR(20),
precio DECIMAL(12,2),
CONSTRAINT fk_auto_modelo
FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo),
CONSTRAINT fk_auto_concesionaria
FOREIGN KEY (id_concesionaria) REFERENCES concesionaria(id_concesionaria)
);

INSERT INTO concesionaria (nombre, direccion, ciudad, telefono)
VALUES
('Concesionaria Juan Mendoza', 'Av San Martin 1234', 'Mendoza', '2604279703'),
('Concesionaria Juan Buenos Aires', 'Av 9 de Julio 4142', 'Buenos Aires', '2604279703'),
('Concesionaria Juan Córdoba', 'Av Sarmiento 846', 'Córdoba', '2604279703'),
('Concesionaria Juan Ushuaia', 'Av San Martin 332', 'Mendoza', '2604279703');




INSERT INTO marca (nombre)
VALUES 
('Toyota'),
('Volkswagen'),
('Nissan'),
('Fiat'),
('Ford'),
('Chevrolet');
INSERT INTO modelo (id_marca, nombre_modelo)
VALUES
(1, 'Corolla'),
(1, 'Hilux'),
(1, 'Yaris'),
(2, 'Golf'),
(2, 'Amarok'),
(3, 'March'),
(3, 'Frontier'),
(4, 'Cronos'),
(4, 'Idea'),
(5, 'EcoSport'),
(5, 'Ranger'),
(5, 'Fiesta'),
(6, 'Camaro'),
(6, 'Corsa');

SELECT * FROM modelo;













