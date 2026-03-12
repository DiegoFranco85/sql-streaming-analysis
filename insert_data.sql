/*Aquí se insertan los datos de los usuarios */

INSERT INTO usuarios (usuario_id, nombre, email, pais, fecha_registro) VALUES
(1, 'Ana Lopez', 'ana@email.com', 'Mexico', '2023-01-10'),
(2, 'Carlos Ruiz', 'carlos@email.com', 'Mexico', '2023-02-15'),
(3, 'Maria Torres', 'maria@email.com', 'España', '2023-03-20'),
(4, 'Juan Perez', 'juan@email.com', 'Argentina', '2023-04-05'),
(5, 'Laura Gomez', 'laura@email.com', 'Colombia', '2023-05-12');

/*Aquí se insertan los datos del contenido.*/
INSERT INTO contenido (contenido_id, titulo, categoria, duracion_minutos, fecha_lanzamiento) VALUES
(1, 'La Gran Aventura', 'Pelicula', 120, '2022-06-10'),
(2, 'Cocina Facil', 'Serie', 45, '2021-09-01'),
(3, 'Historia del Mundo', 'Documental', 90, '2020-11-15'),
(4, 'Misterio Nocturno', 'Serie', 50, '2023-01-20'),
(5, 'Viaje Espacial', 'Pelicula', 110, '2022-12-05');

/*Aquí se insertan los datos de las visualizaciones.*/
INSERT INTO visualizaciones (visualizacion_id, usuario_id, contenido_id, fecha_visualizacion, minutos_vistos) VALUES
(1, 1, 1, '2023-06-01', 120),
(2, 2, 2, '2023-06-02', 40),
(3, 3, 3, '2023-06-03', 80),
(4, 1, 2, '2023-06-04', 45),
(5, 4, 4, '2023-06-05', 50),
(6, 5, 1, '2023-06-06', 100),
(7, 2, 5, '2023-06-07', 110);

/*Aquí se insertan los datos de las suscripciones.*/
INSERT INTO suscripciones (suscripcion_id, usuario_id, tipo_plan, fecha_inicio, fecha_cancelacion, precio_mensual) VALUES
(1, 1, 'Premium', '2023-01-10', NULL, 12.99),
(2, 2, 'Basico', '2023-02-15', NULL, 7.99),
(3, 3, 'Premium', '2023-03-20', NULL, 12.99),
(4, 4, 'Basico', '2023-04-05', '2023-07-01', 7.99),
(5, 5, 'Estandar', '2023-05-12', NULL, 9.99);