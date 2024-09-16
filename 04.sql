CREATE DATABASE temp;

USE temp;

CREATE TABLE Customer (
ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(25),
ADDRESS VARCHAR(225),
GENDER CHAR(2),
CITY VARCHAR(225),
PINCODE INT
); 


INSERT INTO Customer
VALUES (1001, 'Bhavesh Mali', 'BTM 2nd Phase', 'M', 'Jalandhar', 560071),
	   (1002, 'Shyam Singh', 'Ram Nagar', 'M', 'Ludhiyana', 560071),
       (1003, 'Virat Kohli', 'Mukherjee Nagar', 'M', 'Jalandhar', 560071),
       (1004, 'Varsha Tanwar', 'Dilabagh Nagar', 'F', 'Jalandhar', 560071),
	   (1005, 'Rohan Arora', 'Ludhiyana H.O', 'M', 'Ludhiyana', 141001),
       (1006, 'Vishal Arora', 'Ludhiyana H.O', 'M', 'Ludhiyana', NULL),
       (1006, 'Vishal Arora', 'Ludhiyana H.O', 'M', 'Ludhiyana', NULL),
       (1007, 'Dipanshu', 'Ludhiyana H.O', 'M', 'Ludhiyana', NULL);
       
       
       
SELECT * FROM Customer;       
       
        