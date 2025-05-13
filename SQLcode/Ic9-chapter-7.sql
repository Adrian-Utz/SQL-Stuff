/*
 Chapter 7 ITD132 questions
*/


/*
1. Use a CROSS join to join the ProductLines and Products tables. return the ProductLines name,
 productcode, and productname. ProductLines should come from the ProductLines table.
 Order the report by productLine.
*/
SELECT Products.productCode, Products.productName, ProductLines.productLine FROM Products CROSS JOIN ProductLines ORDER BY ProductLines.productLine

/*
2. Use a Self join on the Mondial 'located' table to produce a report that shows all of the pairs 
of cities that are located on a lake. Show the name of the lake, the names of the cities, 
and the countries they are in. Remember, you do NOT want duplicate cities or the same data listed 
twice (no acity and acity, no acity - bcity, bcity - acity scenarios). 
Sort the report by lake first, then city number 1, and then city number 2.
*/
SELECT located.City, located.Lake, located.Country FROM located

/*        
3. From the classicmodels database, list the customer number, customer names, payment date, 
and payment amount for all of the customers, whether or not they made a payment. 
Use the COALESCE function to print something other than NULL if there is no payment data . . .
*/


/*
4. From the Mondial database, use the 'country' and 'geo_lake' table to list all of the countries 
and the lakes it has. If a country has no lakes (and there are some ...),         
print out a better value than NULL. Sort by the name of the country.
*/


/*        
5. From the classicmodels database, find all of the customer pairs that live in the same city. 
(Again, this will be a SELF JOIN). Return the names of both customers, the city name, 
and the country the city is in.
*/


/*        
6. From the classicmodels database, return all of the customer numbers, customer names, 
order number, and order date that do NOT have an order. 
*/


/*        
7. List the countries that do not have a desert (don't list the countries that do . . .)
*/


/*        
8. Create a report of all of the countries and the islands it controls. 
The report should include EVERY country, whether or not it has islands. 
NULLS are acceptable as output values.
*/


/*        
9. Question for classicmodels, are there any of offices with no employees? 
Use a RIGHT OUTER JOIN to answer this burning question.
*/


/*        
10. Do an "NON EQUI JOIN" between the 'country' and the 'economy' tables in the Mondial database. 
Return the country name and all of the economic data. Order the report by the name of the country. 
Does the resulting report make sense?
*/