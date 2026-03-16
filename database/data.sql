-- Usar BD
USE FitnessSAC;
GO

-- ==============================
-- INSERCIÓN DE DATOS
-- ==============================

-- 50 Registros para la tabla Cliente
INSERT INTO Cliente (nombre, apellido, correo, telefono, fecha_registro, activo) VALUES
                                                                                     ('Juan', 'García Pérez', 'juan.garcia@example.com', '987654321', '2023-01-15', 1),
                                                                                     ('María', 'Rodríguez López', 'maria.rodriguez@example.com', '912345678', '2023-01-20', 1),
                                                                                     ('Carlos', 'Martínez Sánchez', 'carlos.martinez@example.com', '923456789', '2023-02-01', 1),
                                                                                     ('Ana', 'Hernández González', 'ana.hernandez@example.com', '934567890', '2023-02-05', 1),
                                                                                     ('Luis', 'López Díaz', 'luis.lopez@example.com', '945678901', '2023-02-10', 0),
                                                                                     ('Sofía', 'González Morales', 'sofia.gonzalez@example.com', '956789012', '2023-03-11', 1),
                                                                                     ('Javier', 'Pérez Romero', 'javier.perez@example.com', '967890123', '2023-03-15', 1),
                                                                                     ('Laura', 'Sánchez Ruiz', 'laura.sanchez@example.com', '978901234', '2023-03-22', 1),
                                                                                     ('Diego', 'Ramírez Flores', 'diego.ramirez@example.com', '989012345', '2023-04-01', 1),
                                                                                     ('Camila', 'Torres Mendoza', 'camila.torres@example.com', '990123456', '2023-04-07', 1),
                                                                                     ('Andrés', 'Díaz Vargas', 'andres.diaz@example.com', '911223344', '2023-04-18', 1),
                                                                                     ('Valentina', 'Rojas Castillo', 'valentina.rojas@example.com', '922334455', '2023-05-02', 1),
                                                                                     ('Mateo', 'Ortiz Jiménez', 'mateo.ortiz@example.com', '933445566', '2023-05-10', 1),
                                                                                     ('Isabella', 'Soto Castro', 'isabella.soto@example.com', '944556677', '2023-05-21', 0),
                                                                                     ('Sebastián', 'Contreras Silva', 'sebastian.contreras@example.com', '955667788', '2023-06-03', 1),
                                                                                     ('Gabriela', 'Reyes Morales', 'gabriela.reyes@example.com', '966778899', '2023-06-12', 1),
                                                                                     ('Daniel', 'Mendoza Paredes', 'daniel.mendoza@example.com', '977889900', '2023-06-25', 1),
                                                                                     ('Luciana', 'Guerrero Cruz', 'luciana.guerrero@example.com', '988990011', '2023-07-01', 1),
                                                                                     ('Alejandro', 'Paredes Ríos', 'alejandro.paredes@example.com', '999001122', '2023-07-08', 1),
                                                                                     ('Valeria', 'Salazar Núñez', 'valeria.salazar@example.com', '910112233', '2023-07-19', 1),
                                                                                     ('Ricardo', 'Acosta Benítez', 'ricardo.acosta@example.com', '921223344', '2023-08-05', 1),
                                                                                     ('Fernanda', 'Medina Herrera', 'fernanda.medina@example.com', '932334455', '2023-08-14', 1),
                                                                                     ('Emilio', 'Aguilar Campos', 'emilio.aguilar@example.com', '943445566', '2023-08-23', 0),
                                                                                     ('Renata', 'Cabrera Vega', 'renata.cabrera@example.com', '954556677', '2023-09-01', 1),
                                                                                     ('Adrián', 'Fuentes Solís', 'adrian.fuentes@example.com', '965667788', '2023-09-11', 1),
                                                                                     ('Ximena', 'Ríos Peña', 'ximena.rios@example.com', '976778899', '2023-09-20', 1),
                                                                                     ('Leonardo', 'Castro Ponce', 'leonardo.castro@example.com', '987889900', '2023-10-02', 1),
                                                                                     ('Regina', 'León Bravo', 'regina.leon@example.com', '998990011', '2023-10-13', 1),
                                                                                     ('Patricio', 'Villanueva Cárdenas', 'patricio.villanueva@example.com', '912112233', '2023-10-24', 1),
                                                                                     ('Daniela', 'Espinoza Navarro', 'daniela.espinoza@example.com', '923223344', '2023-11-04', 1),
                                                                                     ('Santiago', 'Molina Delgado', 'santiago.molina@example.com', '934334455', '2023-11-15', 1),
                                                                                     ('Mariana', 'Figueroa Osorio', 'mariana.figueroa@example.com', '945445566', '2023-11-26', 1),
                                                                                     ('Eduardo', 'Luna Coronado', 'eduardo.luna@example.com', '956556677', '2023-12-05', 0),
                                                                                     ('Carolina', 'Velasco Zamora', 'carolina.velasco@example.com', '967667788', '2023-12-16', 1),
                                                                                     ('Francisco', 'Mora Lira', 'francisco.mora@example.com', '978778899', '2023-12-27', 1),
                                                                                     ('Paola', 'Gallegos Ibarra', 'paola.gallegos@example.com', '989889900', '2024-01-06', 1),
                                                                                     ('Esteban', 'Pineda Maldonado', 'esteban.pineda@example.com', '990990011', '2024-01-17', 1),
                                                                                     ('Victoria', 'Valencia Montes', 'victoria.valencia@example.com', '913112233', '2024-01-28', 1),
                                                                                     ('Felipe', 'Arias Quintana', 'felipe.arias@example.com', '924223344', '2024-02-07', 1),
                                                                                     ('Elena', 'Guzmán Orozco', 'elena.guzman@example.com', '935334455', '2024-02-18', 1),
                                                                                     ('Hector', 'Montes de Oca', 'hector.montes@example.com', '946445566', '2024-03-01', 1),
                                                                                     ('Paula', 'Zambrano Rios', 'paula.zambrano@example.com', '957556677', '2024-03-12', 1),
                                                                                     ('Manuel', 'Cervantes Solano', 'manuel.cervantes@example.com', '968667788', '2024-03-23', 1),
                                                                                     ('Beatriz', 'Juarez Vega', 'beatriz.juarez@example.com', '979778899', '2024-04-04', 1),
                                                                                     ('Oscar', 'Dominguez Leon', 'oscar.dominguez@example.com', '980889900', '2024-04-15', 0),
                                                                                     ('Alicia', 'Navarro Rojas', 'alicia.navarro@example.com', '991990011', '2024-04-26', 1),
                                                                                     ('Jorge', 'Santos Cruz', 'jorge.santos@example.com', '914112233', '2024-05-07', 1),
                                                                                     ('Silvia', 'Mejia Paredes', 'silvia.mejia@example.com', '925223344', '2024-05-18', 1),
                                                                                     ('Arturo', 'Coronado Vazquez', 'arturo.coronado@example.com', '936334455', '2024-05-29', 1);
GO

-- 20 Registros para la tabla Trainer
INSERT INTO Trainer (nombre, apellido, especialidad, disponible) VALUES
                                                                     ('Carlos', 'Santana', 'Entrenamiento Funcional', 1),
                                                                     ('Lucía', 'Fernández', 'Yoga y Pilates', 1),
                                                                     ('Marcos', 'Vega', 'Halterofilia', 1),
                                                                     ('Verónica', 'Mora', 'CrossFit', 0),
                                                                     ('Esteban', 'Ríos', 'Calistenia', 1),
                                                                     ('Gabriela', 'Linares', 'Zumba y Baile', 1),
                                                                     ('Roberto', 'Pizarro', 'Boxeo', 1),
                                                                     ('Natalia', 'Cisneros', 'Entrenamiento Personalizado', 1),
                                                                     ('Iván', 'Acosta', 'Musculación', 1),
                                                                     ('Daniela', 'Salas', 'HIIT', 1),
                                                                     ('Alberto', 'Chávez', 'Artes Marciales Mixtas', 0),
                                                                     ('Isabel', 'Quiroga', 'Rehabilitación Deportiva', 1),
                                                                     ('Miguel', 'Zamora', 'Spinning', 1),
                                                                     ('Clara', 'Valdivia', 'Nutrición Deportiva', 1),
                                                                     ('Sergio', 'Campos', 'Entrenamiento de Resistencia', 1),
                                                                     ('Andrea', 'Soria', 'Pilates Reformer', 1),
                                                                     ('Fernando', 'Bustamante', 'Preparación Física', 1),
                                                                     ('Jimena', 'Olivos', 'Yoga Aéreo', 0),
                                                                     ('Raúl', 'Castañeda', 'Powerlifting', 1),
                                                                     ('Tatiana', 'Maldonado', 'Entrenamiento Funcional', 1);
GO

-- 10 Registros para la tabla Local
INSERT INTO Local (nombre, direccion, capacidad) VALUES
                                                     ('FitnessSAC Miraflores', 'Av. Larco 743, Miraflores, Lima', 150),
                                                     ('FitnessSAC San Isidro', 'Av. Javier Prado Este 456, San Isidro, Lima', 200),
                                                     ('FitnessSAC Surco', 'Av. Primavera 1280, Surco, Lima', 180),
                                                     ('FitnessSAC La Molina', 'Av. Raúl Ferrero 1550, La Molina, Lima', 120),
                                                     ('FitnessSAC San Borja', 'Av. Aviación 2450, San Borja, Lima', 160),
                                                     ('FitnessSAC Centro de Lima', 'Jr. de la Unión 899, Cercado de Lima', 100),
                                                     ('FitnessSAC Chorrillos', 'Av. Huaylas 550, Chorrillos, Lima', 130),
                                                     ('FitnessSAC Magdalena', 'Av. Brasil 3480, Magdalena del Mar, Lima', 110),
                                                     ('FitnessSAC Barranco', 'Av. San Martín 320, Barranco, Lima', 90),
                                                     ('FitnessSAC Lince', 'Av. Arequipa 2230, Lince, Lima', 140);
GO

INSERT INTO [dbo].[Parque]
([nombre], [distrito], [capacidad])
VALUES
    ('Parque El Olivar', 'San Isidro', 100),
    ('Parque Kennedy', 'Miraflores', 150),
    ('Parque de la Amistad', 'Santiago de Surco', 200),
    ('Parque de la Exposición', 'Cercado de Lima', 180),
    ('Parque de la Muralla', 'Cercado de Lima', 120),
    ('Parque del Amor', 'Miraflores', 50),
    ('Campo de Marte', 'Jesús María', 250),
    ('Parque Reducto N° 2', 'Miraflores', 80),
    ('Parque Zonal Huiracocha', 'San Juan de Lurigancho', 300),
    ('Parque Ramón Castilla', 'Lince', 100),
    ('Parque de los Anillos', 'Ate', 150),
    ('Parque Fátima', 'Chorrillos', 40),
    ('Parque de la Felicidad', 'San Borja', 70),
    ('Alameda Chabuca Granda', 'Rímac', 90),
    ('Parque Selva Alegre', 'Arequipa', 110),
    ('Plaza de Yanahuara', 'Yanahuara', 50),
    ('Parque Urpicha', 'Wanchaq', 30),
    ('Parque El Golf', 'Víctor Larco Herrera', 130),
    ('Parque Ecológico de La Molina', 'La Molina', 160),
    ('Parque Mariscal Cáceres', 'San Isidro', 60);
GO