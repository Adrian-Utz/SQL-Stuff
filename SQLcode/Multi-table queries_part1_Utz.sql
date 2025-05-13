/*Remember, for each query:

    a. Figure out what columns contain the data
    b. That gives you the table(s)
    c. See what connects the tables together (direct relation or a link table?)*/


/*1.  classicmodels: Create a report of all of the orders for the customer
    "Mini Gifts Distributors Ltd.".*/

SELECT * FROM Customers INNER JOIN Orders ON Customers.customerNumber = Orders.customerNumber WHERE Customers.customerName = "Mini Gifts Distributors Ltd.";

/*2.  classicmodels: List each Employee’s last name, first name, and job
    title  and the city, state, country where their office is located.
    Sort the report by last name, then first name.*/

SELECT Employees.lastName, Employees.firstName, Employees.jobTitle, Offices.city, Offices.state, Offices.country
FROM Employees INNER JOIN Offices ON Employees.officeCode = Offices.officeCode ORDER BY lastName, firstName;

/*3.  classicmodels: for each customer in Norway and Sweden, list the
    customer name, city, country and the order information for each of
    the customers.*/

SELECT Customers.customerName, Customers.city, Customers.country, Orders.* 
FROM Orders INNER JOIN Customers ON Customers.customerNumber = Orders.customerNumber WHERE Customers.country IN ("Norway","Sweden");

/*4.  classicmodels: For all of the customers in the USA, list their
    name, and their sales rep’s: employee number, first and last name,
    and their sales rep job title.*/
SELECT Customers.customerName, Employees.employeeNumber, Employees.firstName, Employees.lastName, Employees.jobTitle
FROM Customers INNER JOIN Employees ON Customers.salesRepEmployeeNumber = Employees.employeeNumber WHERE Customers.country = "USA";

/*5.  Mondial: For each country that begins with the letter “A”, list
    the country name, capital, and the name, province, and population
    for each of the countries cities.*/
SELECT country.Name, country.Capital, city.Name, city.Province, city.population
FROM country INNER JOIN city ON country.Capital = city.Name WHERE country.Name LIKE 'a%';


/*6.  Mondial: For each country whose name begins with the letter “M”,
    list the countries name and the complete economic data for that
    country.*/
SELECT country.Name, economy.*
FROM country INNER JOIN economy ON country.Code = economy.Country WHERE country.Name LIKE 'm%';


/*7.  Mondial: For each desert, list the name of the desert and the name
    of the country the desert is in.*/
SELECT country.Name, geo_desert.Desert
FROM geo_desert INNER JOIN country ON country.Code = geo_desert.Country;

/*8.  classicmodels: for each order that was NOT shipped, give the order
    number, the comments, and the product code, quantity ordered, and
    the price of each item.*/
SELECT Orders.orderNumber, Orders.comments, Orders.status, OrderDetails.productCode, OrderDetails.quantityOrdered, OrderDetails.priceEach
FROM OrderDetails INNER JOIN Orders ON Orders.orderNumber = OrderDetails.orderNumber WHERE Orders.status = "Cancelled";

/*9.  classicmodels: for each customer NOT in the USA, list the customer
    name, contact first and last names, credit limit, and the check
    number, date of payment, and amount of each payment that they made.*/
SELECT Customers.customerName, Customers.contactLastName, Customers.contactFirstName, Customers.creditLimit, Customers.country, Payments.checkNumber, Payments.paymentDate, Payments.amount
FROM Customers INNER JOIN Payments ON Customers.customerNumber = Payments.customerNumber WHERE Customers.country != "USA";

/*10. classicmodels: for the product lines: “Ships”, “Planes”, and
    “Trains”, list the description of the product line, the name of
    the product, the vendor for the product, and the description of
    the product. Sort the report by product line and then by product
    name.*/
SELECT Products.productName, Products.productLine, Products.productVendor, Products.productDescription
FROM Products WHERE productLine IN ("Ships","Planes","Trains") ORDER BY productLine DESC

SELECT Products.productName, Products.productLine, Products.productVendor, Products.productDescription
FROM Products WHERE productLine IN ("Ships","Planes","Trains") ORDER BY productName DESC;

/*11. Mondial: For those countries that are not wholly inside one
    continent, list the country name and the names of the continents
    they are part of. Sort the report by country name then by the
    continent name.*/
SELECT encompasses.Country, encompasses.Continent, encompasses.Percentage, country.Name
FROM encompasses INNER JOIN country ON encompasses.Country = country.Code WHERE encompasses.Percentage < 100 ORDER BY country.Name DESC;

SELECT encompasses.Country, encompasses.Continent, encompasses.Percentage, country.Name
FROM encompasses INNER JOIN country ON encompasses.Country = country.Code WHERE encompasses.Percentage < 100 ORDER BY encompasses.Continent DESC;

/*12. classicmodels: For the customer whose customer number is 141,
    list the customer's name, the contact’s first and last name, order
    number, order date, and for each order, the product code, the
    quantity ordered, and the price of each item. Sort by order number
    and then by the order line number. (this is a two table join: 
    From Customers - Customers to Orders - Orders to OrderDetails) */
SELECT Customers.customerName, Customers.contactLastName, Customers.contactFirstName, Orders.orderNumber, Orders.orderDate, OrderDetails.productCode, OrderDetails.quantityOrdered, OrderDetails.orderLineNumber
FROM ((Customers INNER JOIN Orders ON Customers.customerNumber = Orders.customerNumber)INNER JOIN OrderDetails ON Orders.orderNumber = OrderDetails.orderNumber)
ORDER BY OrderDetails.orderLineNumber DESC;

/*13. classicmodels: Take the query you created in number 12 and add the
    necessary SQL code to also list the product name. (this is a 3 table
    Join . . . From Customers - Customers to Orders - Orders to OrderDetails 
    - OrderDetails to Products)*/
SELECT Products.productName, Customers.customerName, Customers.contactLastName, Customers.contactFirstName, Orders.orderNumber, Orders.orderDate, OrderDetails.productCode, OrderDetails.quantityOrdered, OrderDetails.orderLineNumber
FROM (((Customers INNER JOIN Orders ON Customers.customerNumber = Orders.customerNumber)INNER JOIN OrderDetails ON Orders.orderNumber = OrderDetails.orderNumber)INNER JOIN Products ON Products.productCode = OrderDetails.productCode)
ORDER BY OrderDetails.orderLineNumber DESC;

/*14. Mondial: for each province in the USA, list the name of the
    province, the capital of the province,  and the population for the
    capital city of the province. Sort the report by the name of the
    province.*/
SELECT province.Name, province.Capital, city.population
FROM province INNER JOIN city ON province.Capital = city.Name WHERE province.Country = "USA" ORDER BY province.Name ASC;

/*15. Mondial: For all of the islands in Japan, list the name of the
    island, the province(s) it contain(s), and the city names and the
    city populations of the cities in the provinces.*/
SELECT geo_island.Island, geo_island.Province, city.Name, city.population
FROM geo_island INNER JOIN city ON geo_island.Country = city.Country WHERE geo_island.Country = "J";