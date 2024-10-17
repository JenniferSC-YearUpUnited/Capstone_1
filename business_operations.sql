CREATE DATABASE jensprinklespectacles;
USE jensprinklespectacles;

CREATE TABLE customers (
customerid INT PRIMARY KEY AUTO_INCREMENT, 
firstname VARCHAR(100),
lastname VARCHAR(100),
city VARCHAR(100),
zipcode VARCHAR(5),
phonenumber VARCHAR(10)
);

SELECT * FROM customers;

CREATE TABLE purchases (
purchaseid INT PRIMARY KEY AUTO_INCREMENT,
customerid INT,
purchasedate DATE,
scentid INT,
bags INT
);

ALTER TABLE purchases
ADD CONSTRAINT fk1 FOREIGN KEY (customerid)
REFERENCES customers(customerid);

ALTER TABLE purchases
ADD CONSTRAINT fk2 FOREIGN KEY (scentid)
REFERENCES scents(scentid);

SELECT * FROM purchases;

CREATE TABLE scents (
scentid INT PRIMARY KEY AUTO_INCREMENT,
scentname VARCHAR(100),
cartonprice DECIMAL(5,2),
cartonsinstock VARCHAR(20),
reorderlevel SMALLINT,
cartonsonorder SMALLINT,
discontinuedcartons SMALLINT
);

SELECT * FROM scents;
