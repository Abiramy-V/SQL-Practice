---- Level: Easy

-- 1.) Problem: 1757. Recyclable and Low Fat Products
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'

-- 2.) Problem: 584. Find Customer Referee
-- Find the names of the customer that are not referred by the customer with id = 2.
-- Return the result table in any order.

SELECT name 
FROM Customer 
WHERE referee_id IS NULL OR referee_id != 2

-- 3.) Problem: 595. Big Countries
-- A country is big if:
-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000).
-- Write a solution to find the name, population, and area of the big countries.

SELECT 
       name
      ,population
      ,area
FROM 
       world
WHERE 
       area >= 3000000 OR 
       population >= 25000000

-- 4.) Problem: 1148. Article Views I
-- Write a solution to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order

SELECT 
    DISTINCT(author_id) AS id
FROM 
    Views
WHERE 
    author_id = viewer_id
ORDER BY 
    id ASC


-- 5.) Problem: 1683. Invalid Tweets
-- Write a solution to find the IDs of the invalid tweets.
-- The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

SELECT 
    tweet_id
FROM 
    Tweets
WHERE 
    LEN(content) > 15


-- 6.) Problem: 1378. Replace Employee ID With The Unique Identifier
-- Write a solution to show the unique ID of each user,
-- If a user does not have a unique ID, just show null.

SELECT 
    EmployeeUNI.unique_id
   ,Employees.name
FROM 
    Employees
LEFT JOIN 
    EmployeeUNI
ON Employees.id = EmployeeUNI.id

-- 7.) Problem: 1068. Product Sales Analysis I
-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

SELECT 
    p.product_name
   ,s.year
   ,s.price
FROM 
    Product AS p
INNER JOIN 
    Sales AS s
ON p.product_id = s.product_id


---- Level: Medium
-- 1.) Problem: 570. Managers with at Least 5 Direct Reports
-- Write a solution to find managers with at least five direct reports.
-- Return the result table in any order.

SELECT 
    name 
FROM Employee
WHERE id IN
(
  SELECT managerId FROM Employee
  GROUP BY managerId
  HAVING COUNT(managerId) >= 5
)

-- or

SELECT      
       a.name 
FROM        
       Employee AS a
JOIN       
       Employee AS b
ON 
       a.id = b.managerId
GROUP BY   
       a.id
      ,b.name
HAVING 
       COUNT(a.id) >= 5





