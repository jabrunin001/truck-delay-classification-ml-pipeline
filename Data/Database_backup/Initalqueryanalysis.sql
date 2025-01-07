/*SELECT * FROM truckDB.city_weather LIMIT 10;
SELECT * FROM truckDB.drivers_details LIMIT 10;

# how many drivers are there in the drivers_detail table

SELECT 
	COUNT(driver_id) AS total_driver,
	avg(age) AS average_age,
    min(age) AS youngest_driver,
    max(age) AS oldest_driver
FROM truckDB.drivers_details;

SELECT 
	avg(ratings) AS average_rating,
    min(ratings) AS lowest_rating,
    max(ratings) AS highest_rating
FROM truckDB.drivers_details;

SELECT gender, COUNT(*) AS Gender_Count FROM truckDB.drivers_details GROUP BY gender;

SELECT ratings, COUNT(*) AS Rating_Count FROM truckDB.drivers_details GROUP BY ratings;*/ 

/* # Second Part of Analysis

SELECT * FROM truckDB.truck_details; 

SELECT COUNT(*) AS total_trucks FROM truckDB.truck_details;

SELECT 
	min(truck_age) AS newest_truck_age,
	max(truck_age) AS oldest_truck_age,
	avg(truck_age) AS avg_truck_age
FROM truckDB.truck_details;

SELECT fuel_type, COUNT(*) AS truck_counts FROM truckDB.truck_details GROUP BY fuel_type;

SHOW COLUMNS FROM truckDB.truck_details;
SHOW COLUMNS FROM truckDB.drivers_details;

SELECT ratings, average_speed_mph FROM truckDB.drivers_details GROUP BY ratings ORDER BY ratings; */

/*# Third Part of Analysis

SELECT DISTINCT route_id FROM truckDB.traffic_details;

SELECT COUNT(DISTINCT route_id) FROM truckDB.traffic_details;

SHOW COLUMNS FROM truckDB.traffic_details;

SELECT accident, count(accident) as is_accident FROM truckDB.traffic_details GROUP BY accident;

SELECT MIN(date) AS earliest_date, MAX(date) AS latest_date FROM truckDB.traffic_details;

# Weather Data 

SELECT * FROM truckDB.city_weather;

SELECT  COUNT(DISTINCT city_id) AS total_cities FROM truckDB.city_weather;

SELECT 
	MIN(date) AS earliest_date,
    MAX(date) AS latest_date
FROM truckDB.city_weather;*/

# 4th Part of Analysis
SELECT COUNT(*) AS total_rows FROM truckDB.truck_schedule_data; 

SELECT COUNT(DISTINCT truck_id) AS total_trucks FROM truckDB.truck_schedule_data; # less trucks than total from truck details so some not being used in scheduling

SELECT delay, COUNT(delay) AS Total_Delayed_Trucks FROM truckDB.truck_schedule_data GROUP BY delay;

SELECT DISTINCT departure_date FROM truckDB.truck_schedule_data ORDER BY departure_date;