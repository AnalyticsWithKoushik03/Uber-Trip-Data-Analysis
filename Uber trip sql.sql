-- CREATE DATABASE ubertrip_project_analysis;
USE ubertrip_project_analysis;
SELECT * FROM uber_trip;

SELECT COUNT(*) FROM uber_trip;
SELECT SUM(Total_Fare) AS Total_revenue from uber_trip;
SELECT AVG(Total_Fare) AS avg_fare FROM uber_trip;
SELECT AVG(Customer_Rating) avg_rating FROM uber_trip;
SELECT DISTINCT Pickup_City FROM uber_trip;
SELECT DISTINCT Payment_Method FROM uber_trip;
SELECT MAX(Total_Fare) FROM uber_trip;
SELECT MIN(Total_Fare) FROM uber_trip;
SELECT Vehicle_Type, COUNT(*) AS total_trips FROM uber_trip GROUP BY Vehicle_Type;
SELECT Pickup_City, COUNT(*) AS trip_per_city FROM uber_trip GROUP BY Pickup_City;
SELECT Pickup_City, SUM(Total_Fare) AS total_revenue_per_city FROM uber_trip GROUP BY Pickup_City ORDER BY total_revenue_per_city DESC;
SELECT Vehicle_Type, AVG(Total_Fare) AS avg_fare_per_vehicle FROM uber_trip GROUP BY Vehicle_Type ORDER BY avg_fare_per_vehicle DESC;
SELECT Payment_Method, COUNT(*) AS high_payment_method FROM uber_trip GROUP BY Payment_Method ORDER BY high_payment_method DESC LIMIT 1;
SELECT Payment_Method, COUNT(*) AS trip_per_method FROM uber_trip GROUP BY Payment_Method ORDER BY trip_per_method DESC;
SELECT Pickup_City, COUNT(*) AS top3_city FROM uber_trip GROUP BY Pickup_City ORDER by top3_City DESC LIMIT 3;
SELECT * FROM uber_trip ORDER BY Total_Fare DESC LIMIT 5;
SELECT Pickup_City, AVG(Distance_km) AS avg_dis_per_city FROM uber_trip GROUP BY Pickup_City ORDER BY avg_dis_per_city DESC; 
SELECT Vehicle_Type, SUM(Total_Fare) AS rev_by_vehicle FROM uber_trip GROUP BY Vehicle_Type ORDER BY rev_by_vehicle DESC;
SELECT * FROM uber_trip WHERE Customer_Rating < 4;
SELECT MONTHNAME(Date) AS month, COUNT(*) AS total_strips FROM uber_trip GROUP BY MONTHNAME(Date) ORDER BY total_strips DESC LIMIT 1;
SELECT MONTHNAME(Date) AS month, SUM(Total_Fare) AS revenue_per_month FROM uber_trip GROUP BY MONTHNAME(Date) ORDER BY revenue_per_month DESC; 
SELECT MONTHNAME(Date) AS month, AVG(Total_Fare) AS average_per_month FROM uber_trip GROUP BY MONTHNAME(Date) ORDER BY average_per_month DESC; 
SELECT Pickup_City, SUM(Total_Fare) AS revenue_per_city FROM uber_trip GROUP BY Pickup_City ORDER BY revenue_per_city DESC;
SELECT Vehicle_Type, SUM(Total_Fare) AS top3_vehicle FROM uber_trip GROUP BY Vehicle_Type ORDER by top3_vehicle DESC LIMIT 3;
SELECT Pickup_CitY, SUM(Total_Fare), SUM(Total_Fare) * 100.0 / (SELECT SUM(Total_Fare) FROM uber_trip) AS revenue_percentage
FROM uber_trip GROUP BY Pickup_City;
SELECT * FROM uber_trip WHERE Total_Fare > (SELECT AVG(Total_Fare) from uber_trip);
SELECT Pickup_City, AVG(Customer_Rating) AS highest_rating FROM uber_trip GROUP BY Pickup_City ORDER BY highest_rating DESC LIMIT 1;
SELECT Date, SUM(Total_Fare) AS daily_revenue, SUM(SUM(Total_Fare)) OVER (ORDER BY Date) AS running_total
FROM uber_trip GROUP BY Date ORDER BY Date;
SELECT Pickup_City, MAX(Total_Fare) AS max_fare, MIN(Total_Fare) AS min_fare,
MAX(Total_Fare) - MIN(Total_Fare) AS fare_difference FROM uber_trip GROUP BY Pickup_City;
SELECT Vehicle_Type, SUM(Total_Fare) AS total_revenue FROM uber_trip
GROUP BY Vehicle_Type ORDER BY total_revenue DESC LIMIT 1;