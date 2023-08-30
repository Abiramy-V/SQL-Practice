----- 1.) Challenge name: "Weather Observation Station 6"
----- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
----- Your result cannot contain duplicates.

SELECT DISTINCT city
FROM station
WHERE city LIKE 'A%' 
OR city LIKE 'E%' 
OR city LIKE 'I%' 
OR city LIKE 'O%' 
OR city LIKE 'U%'

----- Note: '[aeiou]%' could also be used to query the list of city names starting with vowels

----- 2.) Challenge name: "Higher Than 75 MarKS"
----- Query the Name of any student in STUDENTS who scored higher than 75 Marks.
----- Order your output by the last three characters of each name.
----- If two or more students both have names ending in the same last three characters
----- (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT name
FROM students
WHERE MARKS > 75
ORDER BY RIGHT(name,3)
      , ID ASC

----- 3.) Challenge name: "Type of Triangle"
----- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
----- Output one of the following statements for each record in the table:
----- Equilateral: It's a triangle with 3 sides of equal length.
----- Isosceles: It's a triangle with 2 sides of equal length.
----- Scalene: It's a triangle with 3 sides of differing lengths.
----- Not A Triangle: The given values of A, B, and C don't form a triangle.
----- Explanation:

SELECT 
CASE
    WHEN A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
    WHEN A = B and B = C THEN 'Equilateral'
    WHEN A = B or B = C or A = C THEN 'Isosceles'
    ELES 'Scalene'
END
FROM TRIANGLES

----- 4.) Challenge name: "Top Earners"
----- We define an employee's total earnings to be their monthly salary * months worked, 
----- and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
----- Write a query to find the maximum total earnings for all employees 
----- as well as the total number of employees who have maximum total earnings. 
----- Then print these values as 2 space-separated integers.

WITH cte_total_earning AS 
(
SELECT salary*months AS earnings
FROM Employee
)
SELECT TOP 1 earnings
       ,COUNT(*) AS No_Individuals
FROM cte_total_earning
GROUP BY earnings
ORDER BY earnings DESC

----- Note: SELECT (months*salary) as earnings, COUNT(name) from employee GROUP BY earnings DESC LIMIT 1;

----- 5.) Challenge name: "Weather Observation Station 2"
----- Query the following two values from the STATION table:
----- The sum of all values in LAT_N rounded to a scale of 2 decimal places.
----- The sum of all values in LONG_W rounded to a scale of 2 decimal places.

SELECT 
ROUND (SUM(LAT_N), 2)
,ROUND(SUM(LONG_W), 2)  
FROM station

----- 6.) Challenge name: "African Cities"
----- Given the CITY and COUNTRY tables, 
----- query the names of all cities where the CONTINENT is 'Africa'.
----- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT city.name
FROM city
JOIN country
ON city.countrycode = country.code
WHERE continent = 'africa'

----- 7.) Challenge name: "Average Population of Each Continent"
----- Given the CITY and COUNTRY tables, 
----- query the names of all the continents (COUNTRY.Continent) 
----- and their respective average city populations (CITY.Population) 
----- rounded down to the nearest integer.
----- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT
country.continent 
,FLOOR(AVG(city.population))
FROM city 
JOIN country 
ON country.code = city.countrycode 
GROUP BY country.continent
