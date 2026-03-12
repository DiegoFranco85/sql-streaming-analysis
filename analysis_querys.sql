/*Esta query demuestra el contenido más visto o el más popular.*/
SELECT c.titulo, COUNT(v.visualizacion_id) AS total_vistas
FROM visualizaciones v
JOIN contenido c 
ON v.contenido_id = c.contenido_id
GROUP BY c.titulo
ORDER BY total_vistas DESC;

/*Esta query demuestra el número de usuarios por país.*/
SELECT pais, COUNT(usuario_id) AS total_usuarios
FROM usuarios
GROUP BY pais
ORDER BY total_usuarios DESC;

/*Esta query demuestra que contenido es el que más minutos de visualización tiene.*/
SELECT c.titulo, SUM(v.minutos_vistos) AS minutos_totales
FROM visualizaciones v
JOIN contenido c
ON v.contenido_id = c.contenido_id
GROUP BY c.titulo
ORDER BY minutos_totales DESC;

/*Este query demuestra que plan es el que genera más ganancias.*/
SELECT tipo_plan, SUM(precio_mensual) AS ingresos_totales
FROM suscripciones
GROUP BY tipo_plan
ORDER BY ingresos_totales DESC;

/*Esta query demuestra a los usuarios que cancelaron su suscripción.*/
SELECT COUNT(*) AS usuarios_cancelaron
FROM suscripciones
WHERE fecha_cancelacion IS NOT NULL;

/*Esta query demuestra los usuarios más activos o que más contenido ven.*/
SELECT u.nombre, COUNT(v.visualizacion_id) AS total_visualizaciones
FROM visualizaciones v
JOIN usuarios u
ON v.usuario_id = u.usuario_id
GROUP BY u.nombre
ORDER BY total_visualizaciones DESC;

/*Esta query demuestra un ranking del contenido más visto. */
SELECT 
titulo,
total_vistas,
RANK() OVER (ORDER BY total_vistas DESC) AS ranking
FROM (
SELECT 
c.titulo,
COUNT(v.visualizacion_id) AS total_vistas
FROM visualizaciones v
JOIN contenido c 
ON v.contenido_id = c.contenido_id
GROUP BY c.titulo
) ranking_contenido;

/*Esta query demuestra cual fue el usuario que vio más minutos de contenido.*/
SELECT 
u.nombre,
SUM(v.minutos_vistos) AS minutos_totales
FROM visualizaciones v
JOIN usuarios u
ON v.usuario_id = u.usuario_id
GROUP BY u.nombre
ORDER BY minutos_totales DESC;

/*Esta query demuestra el porcentaje de ususarios que cancelaron su suscripción.*/
SELECT 
COUNT(CASE WHEN fecha_cancelacion IS NOT NULL THEN 1 END) * 100.0 
/ COUNT(*) AS porcentaje_cancelacion
FROM suscripciones;