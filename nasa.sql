CREATE DATABASE asteroids_dataset;
USE asteroids_dataset;
SELECT * FROM nasa_asteroids_data;

SELECT  Name , Hazardous
FROM nasa_asteroids_data
WHERE Hazardous = 'TRUE';

SELECT  COUNT(Hazardous) AS Safe_Asteroids
FROM nasa_asteroids_data
WHERE Hazardous = 'TRUE';

SELECT Name, `Est Dia in KM(min)` AS lowest_Diameter
FROM nasa_asteroids_data
ORDER BY lowest_Diameter ASC
LIMIT 1;

SELECT Name, `Est Dia in KM(max)` AS Highest_Diameter
FROM nasa_asteroids_data
ORDER BY Highest_Diameter DESC
LIMIT 1;

SELECT AVG(`Relative Velocity km per hr`)
FROM nasa_asteroids_data;


SELECT  AVG(`Relative Velocity km per sec`)
FROM nasa_asteroids_data;

SELECT `Absolute Magnitude`, MAX(`Est Dia in KM(max)`); 


SELECT name, 
 `Est Dia in KM(max)` As Diameter,
 `Relative Velocity km per hr` As Velocity,
 `Miss Dist.(kilometers)` As Distance,
 ( `Est Dia in KM(max)` * `Relative Velocity km per hr` ) / `Miss Dist.(kilometers)` AS Risk_Score
 FROM nasa_asteroids_data
 ORDER BY Risk_Score DESC
 LIMIT 10;


