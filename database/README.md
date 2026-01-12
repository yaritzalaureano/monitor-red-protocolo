-- =========================================
-- CREAR BASE DE DATOS
-- =========================================
CREATE DATABASE IF NOT EXISTS lisi3304;
USE lisi3304;

-- =========================================
-- TABLA DE FABRICANTES
-- =========================================
CREATE TABLE IF NOT EXISTS fabricantes (
    id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE
);

-- =========================================
-- TABLA DE EQUIPOS
-- =========================================
CREATE TABLE IF NOT EXISTS equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    hostname VARCHAR(50),
    macaddres VARCHAR(17),
    ip VARCHAR(15),
    id_fabricante INT,
    sistema_operativo VARCHAR(100),
    fecha_equipo DATETIME,
    CONSTRAINT uq_mac_ip UNIQUE (macaddres, ip),
    CONSTRAINT fk_fabricante FOREIGN KEY (id_fabricante) REFERENCES fabricantes(id_fabricante)
);

-- =========================================
-- TABLA DE PROTOCOLOS
-- =========================================
CREATE TABLE IF NOT EXISTS protocolos (
    id_puerto INT AUTO_INCREMENT PRIMARY KEY,
    numero INT UNIQUE,
    nombre VARCHAR(20),
    detalle VARCHAR(100)
);

-- =========================================
-- TABLA DE PROTOCOLOS USADOS
-- =========================================
CREATE TABLE IF NOT EXISTS protocolos_usados (
    id_protocolo_usado INT AUTO_INCREMENT PRIMARY KEY,
    id_equipo INT,
    id_puerto INT,
    fecha_protocolo DATETIME,
    FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo),
    FOREIGN KEY (id_puerto) REFERENCES protocolos(id_puerto)
);

CREATE TABLE IF NOT EXISTS login_registros (
    id_login INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    exito BOOLEAN,
    fecha_login DATETIME DEFAULT CURRENT_TIMESTAMP,
    ip_origen VARCHAR(45) NULL
);


