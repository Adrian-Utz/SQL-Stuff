-- Chapter 6 - Grouping and Aggregating Data - in class work

/*
1. From the "city" table of the Mondial database, produce a report that counts
   the cities in the "provinces" that are part of the United States. The
   report should show the count of the cities per "province".
*/
SELECT city.province, COUNT(city.name) AS "cities" FROM city WHERE city.country = "USA" GROUP BY city.province 
/*
2. From the Mondial database, join the geo_desert and desert tables to produce
   a report of the sum of the desert areas per country.
*/  
SELECT  SUM(desert.Area), geo_desert.Country FROM geo_desert INNER JOIN desert ON geo_desert.Desert = desert.name GROUP BY geo_desert.Country


/*
3. From the island table, produce a report of the average area of the island
   groups per island group (aka "islands").
*/  
SELECT AVG(island.Area), island.Islands FROM island GROUP BY island.Islands
/*                
4. From the lake table, produce a report of the minimum lake depth per river
*/
SELECT MIN(lake.Depth), lake.River FROM lake WHERE lake.River IS NOT NULL GROUP BY lake.River 
/*  
5. From the lake table, produce a report of the maximum lake depth per river
*/
SELECT MAX(lake.Depth), lake.River FROM lake GROUP BY lake.River
/*  
6. Take query number 1 above, but report only those provinces that have 10 or
   more cities.
*/
SELECT city.province, COUNT(city.name) AS "cities" FROM city WHERE city.country = "USA" GROUP BY city.province HAVING COUNT(city.name) >= 10

/*  
7. Take query number 2 above and show those countries whose desert areas are
   less or equal to 1,000,000.
*/
SELECT SUM(desert.Area), geo_desert.Country FROM geo_desert INNER JOIN desert ON geo_desert.Desert = desert.name GROUP BY geo_desert.Country HAVING COUNT(desert.Area) <= 1000000

/*  
8. Take query number 3 above and report on only those island groups whose
   average area is between 200 and 500 square models. 
*/
SELECT AVG(island.Area), island.Islands FROM island GROUP BY island.Islands HAVING AVG(island.Area) >=200 AND AVG(island.Area) <= 500

/*  
9. Take query 4 above and report on those rivers who empty or whose sources
   are lakes with a depth of 20 or less.
*/
SELECT MIN(lake.Depth), lake.River FROM lake WHERE lake.River IS NOT NULL GROUP BY lake.River HAVING MIN(lake.Depth) <= 20

/*  
10.  From question 5 above, report on the lakes whose depths are 400 or more.
*/
SELECT MAX(lake.Depth), lake.River FROM lake GROUP BY lake.River HAVING MAX(lake.Depth) >= 400
