-- Exercise 5: Single table queries - part 2


-- Purpose: To practice the various flavors of SQL single table queries:


-- Required work to submit for a grade:


-- Please answer the following questions . . .

/*
Q 1 - Mondial
Your manager needs to know the names of all of the religions specified in 
the Mondial database. However, if you give him/her/it 10 pages of 
“Catholic”, or if Anglican comes after Protestant, they’ll have a meltdown. 
Code the SQL statement that satisfies these two criteria. 
*/
SELECT Country, Name, Percentage FROM religion WHERE Name != "Roman Catholic";
/*
Q 2 - Classicmodels Your boss is a hater of all things “computer” (why
he/she/it is your boss is another story . . .). However, they want a report
of all of all of the customer numbers, customer names, address, city, state,
and zip code for all of the customers with a credit limit less than $10,000.00.
You dare not rely on the column names to be “in proper English”. Code the SQL
statement that will give your computer phobic boss the information he/she/it
needs and will not annoy them. Hint: use the ALIAS ("AS") keyword . . .
*/
SELECT  customerNumber AS CustomerNumber,
        customerName AS CustomerName, 
        addressLine1 AS Address1,
        addressLine2 AS Address2,
        city AS City,
        state AS State,
        postalCode AS ZipCode
    FROM Customers
        WHERE creditLimit < 10000; 
/*
Q 3 - Mondial Your boss wants a sorted list of all of the deserts in the USA.
However, as he/she/it spent a horrendous 10 month stay in Arizona, they do not
want to know of any of the deserts from that great state. They do want all of
the information you have on the other deserts in the USA, sorted by the name of
the desert. Please use the NOT operator in this query. HINT: use the geo_desert
table . . .
*/
SELECT Desert FROM geo_desert WHERE Country = "USA" AND Province != "Arizona";
/*
Q 4 - Mondial Your boss wants a list of all of the countries where the
percentage of GDP for service industries is at least 10 percent and the
percentage of GDP for industry is more than 70 percent or the inflation rate is
less than 5 percent. Code the SQL statement needed to satisfy this request. 
*/
SELECT Country FROM economy WHERE Service >= 10 AND (Industry >= 70 OR Inflation < 5); 
/*
Q 5 - Classicmodels Your boss, a retired teacher of high school English, needs
a report of all of the orders that are not shipped. The report must contain the
order number, the status, the comments, and the customer number. The boss wants
the report sorted by the order number. You had better not DARE give this crusty
old educator a report “written by a stupid piece of silicon that doesn’t know a
verb from a pronoun”. In other words, the resulting report should be in
sentences. Write the SQL statement that satisfies all of the requirements
listed above. 
*/
SELECT orderNumber AS Order_Number,
       status AS Shipping_Status,
       comments AS Comments_from_the_Supplier,
       customerNumber AS Customer_Number
       FROM Orders ORDER BY orderNumber DESC;
/*
Q 6 - Mondial Your boss wants a report of all of the organizations whose
headquarters are not in the following cities: Brussels, Geneva, London, or
Washington. Write the SQL that satisfies the above requirements and uses the IN
operator to do so (there is a VERY easy way to do this . . . think about it).
*/
SELECT * FROM organization WHERE City NOT IN ('Brussels','Geneva','London','Washington'); 
/*
Q 7 - Mondial I plan on retiring to an idyllic island. My idea of an idyllic
island is one that is in any sea that has the word ‘Japan’ or ‘China’ in it or
in the Mediterranean Sea. Write the SQL query that will show me my choices,
sorted by the name of the island. HINT: use the islandIn table. 
*/
SELECT * FROM islandIn WHERE Sea LIKE '%Japan%' OR Sea LIKE '%China%' OR Sea LIKE '%Mediterranean%';
/*
Q 8 - Classicmodels Create a report for all of the orders for the customer
“Mini Gifts Distributors Ltd". You will need to code 2 queries in order to
complete this task, one that gets the customerNumber from the Customers table
and another that gets the order information for that customer from the Orders
table. Your answer should include both queries. 
*/
SELECT customerNumber FROM Customers WHERE customerName = "Mini Gifts Distributors Ltd.";
124
SELECT * FROM Orders WHERE customerNumber = 124;