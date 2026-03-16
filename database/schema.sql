-- Eliminar BD si ya existe
IF DB_ID('FitnessSAC') IS NOT NULL
    DROP DATABASE FitnessSAC;
GO

-- Crear BD
CREATE DATABASE FitnessSAC;
GO

-- Usar BD
USE FitnessSAC;
GO

-- ==============================
-- TABLAS CATALOGO
-- ==============================

CREATE TABLE Categoria_Plan (
                                id_categoria INT IDENTITY(1,1) PRIMARY KEY,
                                nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Estado_Membresia (
                                  id_estado INT IDENTITY(1,1) PRIMARY KEY,
                                  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Metodo_Pago (
                             id_metodo INT IDENTITY(1,1) PRIMARY KEY,
                             nombre VARCHAR(50) NOT NULL
);

-- ==============================
-- ENTIDADES PRINCIPALES
-- ==============================

CREATE TABLE Cliente (
                         id_cliente INT IDENTITY(1,1) PRIMARY KEY,
                         nombre VARCHAR(100) NOT NULL,
                         apellido VARCHAR(100) NOT NULL,
                         correo VARCHAR(150) UNIQUE NOT NULL,
                         telefono VARCHAR(20),
                         fecha_registro DATE NOT NULL,
                         activo BIT DEFAULT 1
);

CREATE TABLE Trainer (
                         id_trainer INT IDENTITY(1,1) PRIMARY KEY,
                         nombre VARCHAR(100) NOT NULL,
                         apellido VARCHAR(100) NOT NULL,
                         especialidad VARCHAR(100),
                         disponible BIT DEFAULT 1
);

CREATE TABLE Local (
                       id_local INT IDENTITY(1,1) PRIMARY KEY,
                       nombre VARCHAR(100) NOT NULL,
                       direccion VARCHAR(200) NOT NULL,
                       capacidad INT NOT NULL
);

CREATE TABLE Parque (
                        id_parque INT IDENTITY(1,1) PRIMARY KEY,
                        nombre VARCHAR(100) NOT NULL,
                        distrito VARCHAR(100) NOT NULL,
                        capacidad INT NOT NULL
);

CREATE TABLE PlanCliente (
                             id_plan INT IDENTITY(1,1) PRIMARY KEY,
                             nombre VARCHAR(100) NOT NULL,
                             id_categoria INT NOT NULL,
                             duracion_meses INT NOT NULL,
                             entrenamientos_mes INT NOT NULL,
                             costo DECIMAL(10,2) NOT NULL,
                             FOREIGN KEY (id_categoria) REFERENCES Categoria_Plan(id_categoria)
);

CREATE TABLE Membresia (
                           id_membresia INT IDENTITY(1,1) PRIMARY KEY,
                           id_cliente INT NOT NULL,
                           id_plan INT NOT NULL,
                           fecha_inicio DATE NOT NULL,
                           fecha_fin DATE NOT NULL,
                           id_estado INT NOT NULL,
                           FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
                           FOREIGN KEY (id_plan) REFERENCES PlanCliente(id_plan),
                           FOREIGN KEY (id_estado) REFERENCES Estado_Membresia(id_estado)
);

CREATE TABLE Entrenamiento (
                               id_entrenamiento INT IDENTITY(1,1) PRIMARY KEY,
                               tipo VARCHAR(10) NOT NULL CHECK (tipo IN ('personal','grupal')),
                               fecha DATE NOT NULL,
                               hora_inicio TIME NOT NULL,
                               hora_fin TIME NOT NULL,
                               id_trainer INT NOT NULL,
                               lugar VARCHAR(50) NULL,
                               id_local INT NULL,
                               id_parque INT NULL,
                               capacidad_max INT,
                               FOREIGN KEY (id_trainer) REFERENCES Trainer(id_trainer),
                               FOREIGN KEY (id_local) REFERENCES Local(id_local),
                               FOREIGN KEY (id_parque) REFERENCES Parque(id_parque)
);

CREATE TABLE Reserva (
                         id_reserva INT IDENTITY(1,1) PRIMARY KEY,
                         id_cliente INT NOT NULL,
                         id_entrenamiento INT NOT NULL,
                         asistencia VARCHAR(10) NULL CHECK (asistencia IN ('asistio','falto')),
                         FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
                         FOREIGN KEY (id_entrenamiento) REFERENCES Entrenamiento(id_entrenamiento)
);

CREATE TABLE Pago (
                      id_pago INT IDENTITY(1,1) PRIMARY KEY,
                      id_membresia INT NOT NULL,
                      monto DECIMAL(10,2) NOT NULL,
                      fecha_pago DATE NOT NULL,
                      id_metodo INT NOT NULL,
                      pagado BIT DEFAULT 1,
                      FOREIGN KEY (id_membresia) REFERENCES Membresia(id_membresia),
                      FOREIGN KEY (id_metodo) REFERENCES Metodo_Pago(id_metodo)
);

CREATE TABLE ReporteSesion (
                               id_reporte INT IDENTITY(1,1) PRIMARY KEY,
                               id_entrenamiento INT NOT NULL,
                               observaciones TEXT NULL,
                               incidentes TEXT NULL,
                               FOREIGN KEY (id_entrenamiento) REFERENCES Entrenamiento(id_entrenamiento)
);

CREATE TABLE UsuarioAcceso (
                               id_UA INT IDENTITY(1,1) PRIMARY KEY,
                               correo Varchar(100) not null,
                               contrasenha varchar(30) not null,
                               apePat	varchar(50) not null,
                               apeMat	varchar(50) not null,
                               nombres	varchar(50) not null,
);


