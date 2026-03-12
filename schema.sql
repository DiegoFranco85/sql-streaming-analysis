CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY,
nombre VARCHAR(50),
email VARCHAR(100),
pais VARCHAR(50),
fecha_registro DATE
);

CREATE TABLE contenido (
contenido_id INT PRIMARY KEY,
titulo VARCHAR(50),
categoria VARCHAR(50),
duracion_minutos INT,
fecha_lanzamiento DATE
);

CREATE TABLE visualizaciones (
visualizacion_id INT PRIMARY KEY,
usuario_id INT,
contenido_id INT,
fecha_visualizacion DATE,
minutos_vistos INT,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (contenido_id) REFERENCES contenido(contenido_id)
);

CREATE TABLE suscripciones (
suscripcion_id INT PRIMARY KEY,
usuario_id INT,
tipo_plan VARCHAR(50),
fecha_inicio DATE,
fecha_cancelacion DATE,
precio_mensual DECIMAL(6,2),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);