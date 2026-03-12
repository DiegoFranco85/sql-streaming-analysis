Streaming Platform SQL Analysis
Project Overview

This project simulates a streaming platform database (similar to Netflix or Spotify) and demonstrates how SQL can be used to analyze user activity, content popularity, and subscription behavior.

The goal of this project is to showcase SQL data analysis skills, including:

Database schema design

Table relationships using primary and foreign keys

Data insertion

Analytical queries using JOIN, GROUP BY, and aggregations



Database Schema

The database contains four main tables:

usuarios

Stores information about platform users.

Column	Description
usuario_id	Unique identifier for each user
nombre	User name
email	User email
pais	Country of the user
fecha_registro	Date the user registered

contenido

Stores information about the content available on the platform.

Column	Description
contenido_id	Unique identifier for content
titulo	Title of the content
categoria	Type of content (movie, series, documentary)
duracion_minutos	Duration of the content
fecha_lanzamiento	Release date

visualizaciones

Tracks which users watched which content.

Column	Description
visualizacion_id	Unique view identifier
usuario_id	User who watched
contenido_id	Content watched
fecha_visualizacion	Date of the view
minutos_vistos	Minutes watched

suscripciones

Tracks subscription information for users.

Column	Description
suscripcion_id	Unique subscription identifier
usuario_id	User linked to the subscription
tipo_plan	Subscription plan
fecha_inicio	Start date
fecha_cancelacion	Cancellation date
precio_mensual	Monthly price
Example Analysis Queries


Some business questions answered in this project include:

Most watched content
SELECT c.titulo, COUNT(v.visualizacion_id) AS total_vistas
FROM visualizaciones v
JOIN contenido c
ON v.contenido_id = c.contenido_id
GROUP BY c.titulo
ORDER BY total_vistas DESC;

Users by country
SELECT pais, COUNT(*) AS total_usuarios
FROM usuarios
GROUP BY pais
ORDER BY total_usuarios DESC;

Subscription churn rate
SELECT 
COUNT(CASE WHEN fecha_cancelacion IS NOT NULL THEN 1 END) * 100.0 
/ COUNT(*) AS porcentaje_cancelacion
FROM suscripciones;


Project Structure
streaming-sql-analysis
│
├── schema.sql
├── insert_data.sql
├── analysis_queries.sql
├── ER_diagram.png
└── README.md

Skills Demonstrated

SQL database design

Data modeling

JOIN operations

Aggregations and grouping

Business data analysis

Tools Used

SQL

DBeaver

GitHub

Author

Diego Franco