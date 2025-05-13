/*Chapter 5 in-class/homework

1. From the classicmodels database, show the customer name, address, city, state, product
   code, the quantity ordered, the price of each item and the total value of the
   order detail (price * number ordered).*/

SELECT Customers.customerName, Customers.addressLine1, Customers.addressLine2, Customers.city, Customers.state, Products.productCode, Products.buyPrice,
       OrderDetails.quantityOrdered, (Products.buyPrice * OrderDetails.quantityOrdered)
FROM Customers INNER JOIN Orders ON Customers.customerNumber = Orders.customerNumber
               INNER JOIN OrderDetails ON Orders.orderNumber = OrderDetails.orderNumber
               INNER JOIN Products ON OrderDetails.productCode = Products.productCode;

/*2. From the classicmodels database, show the product number, product name, quantity in
   stock, the price to buy an item, and the total value of each product given the
   quantity and buy price.*/

SELECT Products.productCode, Products.productName, Products.quantityInStock, Products.buyPrice, 
       (Products.quantityInStock * Products.buyPrice)
FROM Products;

/*3. From the Mondial database, for each country: show the country name, the area,
   the population, and the population density (popluation/area). Round the
   population density to two decimal places.*/

SELECT name,  area, population, ROUND(population/area, 2)AS popluationdensity
FROM country

/*4. Take the query from question 3 above, and also give the highest and lowest
   integer from the population density calculation.*/

SELECT name,  area, population, ROUND(population/area, 2)AS popluationdensity, CEILING(population/area)AS popluationMost, FLOOR(population/area)AS popluationLeast
FROM country

/*5. From the Mondial database, for every country with at least 1,000,000 square
   miles of area, give the name and the "reverse" name for the country.*/

SELECT REVERSE(name), area
FROM country
WHERE area >= 1000000

/*6. From the Mondial database, for each city in Germany, print out the first 3 characters of that
   cities name. Use a JOIN to find the cities in "Germany".*/

SELECT LEFT(city.name, 3)
FROM city
INNER JOIN country ON country.code = city.country
WHERE country.name = "Germany"

/*7. From the Mondial database, list all of the islands that sound like "Corsica".*/

SELECT SOUNDEX ('Corsica'), Name
FROM island

/*8. From the Mondial database, for each country, list the country name, the date they obtained their
   independence, and the year, month, and day of their independence.*/

SELECT country.name, politics.independence
FROM country INNER JOIN politics ON country.code = politics.country
WHERE politics.independence IS NOT NULL;

/*9. For each country that does NOT have a date of independence, list the countries
   name, and the Government. Use the COALESCE function of fulfill this query.*/

SELECT country.name, politics.government, COALESCE(politics.independence IS NOT NULL)
FROM country INNER JOIN politics ON country.code = politics.country

/*could just do a where search, i dont fully comprehend the coalesce function */


/*10. From the classicmodels database, in the Products table, the first 3 characters of the product code 
    seem to have some kind of meaning, print them off (hint: SUBSTRING) and do not print duplicates
    of those "codes".*/

SELECT DISTINCT SUBSTRING(productCode, 1, 3) AS productCode
FROM Products
