## CREATE DATA BASE FIRST ##
CREATE DATABASE jensprinklespectacles;
USE jensprinklespectacles;

## CREATE FIRST TABLE WITH PRIMARY KEY  ## 
CREATE TABLE customers (
customerid INT PRIMARY KEY AUTO_INCREMENT, 
firstname VARCHAR(100),
lastname VARCHAR(100),
city VARCHAR(100),
zipcode VARCHAR(5),
phonenumber VARCHAR(10)
);

## SEE ALL COLUMNS FOR TABLE1 ## 
SELECT * FROM customers;

## CREATE TABLE2 WITH PRIMARY KEY## 
CREATE TABLE purchases (
purchaseid INT PRIMARY KEY AUTO_INCREMENT,
customerid INT,
purchasedate DATE,
scentid INT,
bags INT
);

## ADDING FOREIGN KEY 1 CONSTRAINT AFTER CREATING TABLE 1##
ALTER TABLE purchases
ADD CONSTRAINT fk1 FOREIGN KEY (customerid)
REFERENCES customers(customerid);
## ADDING FOREIGN KEY 2 CONSTRAINT AFTER CREATING TABLE 3## 
ALTER TABLE purchases
ADD CONSTRAINT fk2 FOREIGN KEY (scentid)
REFERENCES scents(scentid);

## SEE ALL COLUMNS FOR TABLE2##
SELECT * FROM purchases;

## CREATE TABLE3 WITH PRIMARY KEY##
CREATE TABLE scents (
scentid INT PRIMARY KEY AUTO_INCREMENT, 
scentname VARCHAR(100),
cartonprice DECIMAL(5,2),
cartonsinstock VARCHAR(20),
reorderlevel SMALLINT,
cartonsonorder SMALLINT,
discontinuedcartons SMALLINT
);



## SEE ALL COLUMNS FOR TABLE3 ## 
SELECT * FROM scents;

