-- In-Class work #4 - Single Table Queries . . . 

--   (hint: you might want to have the table definitions in front of you . . .) 

/*
1.  From classicmodels: List all of the data for all of the Orders.
*/
SELECT * FROM Orders
/*
2.  From classicmodels: List the names of the customers with a credit limit
	 greater than $90,000.00.
*/ 
SELECT customerName FROM Customers WHERE creditLimit>90000;
/*    
3.  From MONDIAL: list the name, population, and area of all of the
	 countries whose population is greater than 3,000,000 and whose area is
	 90,000 square miles or less.
*/
SELECT Name, Population, Area FROM country WHERE Population>3000000 AND Area<90000;
/*  
4.  From MONDIAL: list the country code, gross domestic product, percentage
	 of GDP  is agriculture, and inflation rate for all of the countries
	 whose percentage of GDP in agriculture is greater than or equal to 50
	 or whose rate of inflation is greater than 10%.
*/
SELECT Country, GDP, Agriculture, Inflation FROM economy WHERE Agriculture > 50 AND Inflation > 10;
/*  
5.  From MONDIAL: list the abbreviation, name, and date established of the
	 organizations in the group: Inmarsat, ISO, ITU, and CERN. Do this two
	 ways: 
	 
         1. via a series for "OR" clauses
    	 2. via the "IN" operator.
*/
SELECT Abbreviation, Name, Established FROM organization WHERE Abbreviation IN ('Inmarsat', 'ISO', 'ITU', 'CERN');
/*  
6.  From MONDIAL: list country code, date of independence, and the type of
    government for all of the countries whose type of government begins
    with the word "federal". Sort the result by date of independence.
*/
SELECT Country, Independence, Government FROM politics WHERE Government LIKE 'federal%' ORDER BY Independence
/*  
7.  From classicmodels: list the customer number, the customer name, sales
    rep, and credit limit for all of the customers whose sales rep is
    either 1370 or 1216. Sort the report by customer name under sales rep.
*/
SELECT customerNumber, customerName, salesRepEmployeeNumber, creditLimit FROM Customers WHERE salesRepEmployeeNumber IN(1370, 1216) ORDER BY customerName, salesRepEmployeeNumber;
/*
8. From MONDIAL: list the country codes, names, and percentages of all of
   the ethnic groups that make up at least 10% but not more that 60% of the
   country’s population. Sort the output by the name of the ethnic group.
*/
SELECT Country, Name, Percentage FROM ethnicGroup WHERE Percentage IN(10 < Percentage > 60) ORDER BY Name;
/*  
9. From MONDIAL: list all of the country codes for the countries who are
    members of the International Standards Organization (hint: member is a
    type).
*/ 
SELECT Country FROM isMember WHERE Organization = 'ISO' AND Type = 'member';
/*
10. From MONDIAL: List every river that dumps into the Baltic sea and is at
    least 100 miles long. Sort the result by the name of the river. 
*/
SELECT * FROM river WHERE Length >= 100 AND Sea = 'Baltic Sea' ORDER BY Name;