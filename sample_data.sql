### ADDING 1ST RECORD TO TABLE1 ##

INSERT INTO customers 
VALUES (1,"Katherine", "Cooper", "Chicago", "60646", "3124444949");

## ADDING THE REST OF THE RECORDS TO TABLE1 ##
INSERT INTO customer (firstname, lastname, city, zipcode, phonenumber)
VALUES ("Steven", "Morris", "Chicago", "60647", "3126666161"),
( "Rachel", "Peterson", "Chicago", "60648", "3128888383"),
( "Aron", "Howard", "Chicago", "60649", "3120000606"),
( "Laura", "King", "Chicago", "60650", "3121111616");

## SEE ALL COLUMNS## 
SELECT * FROM customers;

## ADDING 1ST RECORD TO TABLE3 ## 
INSERT INTO scents
VALUES ("1", "Ocean Breeze", 25.99, "8", 5, 0, 0);

## ADDING THE REST OF THE RECORDS TO TABLE3## 
INSERT INTO scents (scentname, cartonprice, cartonsinstock, reorderlevel, cartonsonorder, discontinuedcartons)
VALUES ("Vanilla Vibes", 22.49, "12", 6, 0, 0),
("Summer Romance", 18.75, "3", 5, 9, 0),
("Happy Citrus", 21.99, "0", 0, 0, 1),
("Sunshine Breeze", 24.50, "15", 6, 2, 0);  

## SEE ALL COLUMNS ##
SELECT * FROM scents;


## ADDING RECORDS TO PURCHASES ## 
INSERT INTO purchases
VALUES (1, 1, "2024-09-01", 2, 4, "2,5");

INSERT INTO purchases (customerid, purchasedate,scentid,bags,bagdesc)
VALUES (3, "2024-09-18", 4, 1, "4,2,5"),
(1, "2024-10-02", 1, 2, "1,3"),
(5, "2024-10-08", 5, 3, "5,1"),
(2, "2024-10-11", 3, 5, "3");


## SEE ALL COLUMNS ## 
SELECT * FROM purchases;




