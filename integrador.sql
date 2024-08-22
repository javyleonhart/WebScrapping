use henry_pruebas;

DROP TABLE IF EXISTS cuspide_libros;

CREATE TABLE cuspide_libros(
idLibro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(60),
autor VARCHAR(50),
url TINYTEXT,
precio_pesos DECIMAL(11, 2),
precio_usd DECIMAL(11, 2),
precio_usd_blue DECIMAL(11, 2),
disponibilidad VARCHAR(20),
fecha_carga DATE
);

UPDATE cuspide_libros
SET disponibilidad = IF(precio_pesos = 0, 'No disponible', 'Disponible');


