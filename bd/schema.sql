CREATE DATABASE objetos_perdidos_fcc;
USE objetos_perdidos_fcc;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  rol ENUM('student', 'admin') DEFAULT 'student',
  activo TINYINT(1) DEFAULT 1,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nombre, email, password, rol)
VALUES (
  'Administrador FCC',
  'admin@estudiante.buap.mx',
  '$2b$10$davT4XXL38xqqILdDsdH.u.vvYqXSUfAmHUND6nDTsV1Fv9ETKoce',
  'admin'
);

SELECT id, nombre, email, rol, creado_en FROM usuarios;