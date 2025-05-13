CREATE TABLE Items(
    ItemType varchar(255),
    MakeYear int,
    Size varchar(255),
    Proof varchar(255),
    WhiskeyName varchar(255),
    stock int,
    amtonhand int,
    price varchar(255)
)

CREATE TABLE Customerinfo(
    CustomerName varchar(255),
    CustomerID int,
    Age int,
    Business varchar(255),
    CustAddress varchar(255),
    Contact varchar(255),
    email varchar(255),
    paymenttype varchar(255)
)

CREATE TABLE Sales(
    Customer varchar(255),
    Whiskey varchar(255),
    OrderNum int,
    OrderDate varchar(255),
    ShippingLocation varchar(255),
    Payment varchar(255)
)

--Break--

INSERT INTO Sales(Customer, Whiskey, OrderNum, OrderDate, ShippingLocation, Payment)
VALUES ('Mr. Harold J. Ferris', 'Billies Bourbon', '15', '2024-12-01', '968 Sober Street, Longville IL', 'Not Complete');

INSERT INTO Sales(Customer, Whiskey, OrderNum, OrderDate, ShippingLocation, Payment)
VALUES ('Mrs.Patritia H. Fergison', 'Warens Whiskey', '16', '2025-20-06', '939 Sober Street, Longville IL', 'Complete');

INSERT INTO Sales(Customer, Whiskey, OrderNum, OrderDate, ShippingLocation, Payment)
VALUES ('Mr. Geralt G Gregory', "Long John's Liquor", '17', '2025-20-06', '685 Sober Street, Longville IL', 'Complete');

INSERT INTO  Customerinfo(CustomerName, CustomerID, Age, Business, CustAddress, Contact, email, paymenttype)
VALUES ('Mr. Harold J Ferris', '10', '58', 'The Sly Riff', '968 Sober Street, Longville IL', '333-596-4124', 'haroldiscool@example.com', 'Check Upon Delivery');

INSERT INTO Customerinfo(CustomerName, CustomerID, Age, Business, CustAddress, Contact, email, paymenttype)
VALUES ('Mrs. Patritia H Fergison', '24', '36', '', '939 Sober Street, Longville IL', '323-696-4545', 'pattiferg@example.com', 'Credit Card' );

INSERT INTO Customerinfo(CustomerName, CustomerID, Age, Business, CustAddress, Contact, email, paymenttype)
VALUES ('Mr. Geralt G Gregory', '30', '43', 'Bottomless Barrel', '685 Sober Street, Longville IL', '242-585-3636', 'greggerg@example.com', 'Credit Card');

INSERT INTO Items(ItemType, MakeYear, Size, Proof, WhiskeyName, stock, amtonhand, price)
VALUES ('Bourbon', '2010', 'Pint', '85%', 'Billies Bourbon', '150', '50', '$32.99');

INSERT INTO Items(ItemType, MakeYear, Size, Proof, WhiskeyName, stock, amtonhand, price)
VALUES ('Whiskey', '2006', 'Handle', '81%', 'Warens Whiskey', '250', '100', '$25.99');

INSERT INTO Items(ItemType, MakeYear, Size, Proof, WhiskeyName, stock, amtonhand, price)
VALUES ('Liquor', '2012', 'Pint', '90%', "Long John's Liquor", '150', '100', '$15.99');


--Break--

UPDATE Items
SET MakeYear = '2008'
WHERE WhiskeyName = 'Warens Whiskey';

UPDATE Customerinfo
SET Business = 'The Squeeky Chair'
WHERE CustomerID = 24;

UPDATE Sales
SET Whiskey = 'Warens Whiskey', OrderDate = '2024-12-10'
WHERE OrderNum = 15;

--Break--

DELETE FROM Items WHERE WhiskeyName ='Billies Bourbon';

DELETE FROM Customerinfo WHERE CustomerID = 10;

DELETE FROM Sales WHERE OrderNum = 16;