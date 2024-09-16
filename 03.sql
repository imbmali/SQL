CREATE DATABASE ORG;
-- CREATE DATABASE Arjun;
SHOW DATABASES;
USE ORG;


CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);


INSERT INTO Worker
            (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
            (001, 'Monika', 'Arora', 100000, '14-02-20  09.00.00', 'HR'),
            (002, 'Niharika', 'Verma', 800000, '14-06-11  09.00.00', 'Admin'),
            (003, 'Vishal', 'Singhal', 300000, '14-02-20  09.00.00', 'HR'),
            (004, 'Amitabh', 'Singh', 500000, '14-02-20  09.00.00', 'Admin'),
            (005, 'Vivek', 'Bhati', 500000, '14-06-11  09.00.00', 'Admin'),
            (006, 'Vipul', 'Diwan', 200000, '14-06-11  09.00.00', 'Account'),
            (007, 'Satish', 'Kumar', 75000, '14-06-20  09.00.00', 'Account'),
            (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
            
            
SELECT * FROM Worker;
SELECT SALARY FROM Worker;
SELECT FIRST_NAME, SALARY FROM Worker;

-- Dummy Table; Without using FROM
SELECT 44 + 11;

-- To know server timing, If you are working in the USA
SELECT now();

-- Get string in lowercase
SELECT lcase('BHAVESH');

-- Clause: A clause in SQL is a built-in function that helps to fetch the required records from a database table
-- 1. WHERE
-- 2. BETWEEN
-- 3. IN
-- 4. AND/OR/NOT
-- 5. IS


-- 1. WHERE: Reduce rows based on given conditions
SELECT * FROM Worker WHERE SALARY > 80000;
SELECT * FROM Worker WHERE DEPARTMENT = 'HR';

-- 2. BETWEEN
-- salary [80000, 300000]
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 AND 300000;

-- 3. IN: Reduce OR statements
-- HR, Admin
SELECT * FROM Worker WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'Admin';
SELECT * FROM Worker WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'Admin' OR DEPARTMENT = 'Account';

-- Better way: IN
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR', 'Account');

-- 4. NOT: Neglate the column
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR', 'Admin');

-- 5. IS NULL: Refer customer table
 
 -- Pattern Searching / Wild Card ('%', '_')
 -- 1. '%', any number of character from 0 to n. Similiar to '*' asterisk in regex.
 -- 2. '_', only one character
 
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%i%';
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_i%';

-- 6. ORDER BY: To sort the data
SELECT * FROM Worker;
SELECT * FROM Worker ORDER BY Salary;
SELECT * FROM Worker ORDER BY Salary ASC; 
SELECT * FROM Worker ORDER BY Salary DESC;

-- Distinct Values: Need distinct department
SELECT DEPARTMENT FROM Worker;
SELECT DISTINCT DEPARTMENT FROM Worker;

-- Data Grouping: Aggregation: Find the number of employees working in different department
-- Aggregation Function: COUNT, SUM, MAX, AVG, MIN

-- GROUP BY
SELECT DEPARTMENT FROM WORKER GROUP By DEPARTMENT;
SELECT DEPARTMENT, COUNT(*) FROM WORKER GROUP By DEPARTMENT;
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM WORKER GROUP By DEPARTMENT;

-- Average salary per department
SELECT * FROM Worker;
SELECT DEPARTMENT, AVG(SALARY) FROM WORKER GROUP By DEPARTMENT;

-- MIN
SELECT DEPARTMENT, MIN(SALARY) FROM WORKER GROUP By DEPARTMENT;

-- MAX
SELECT DEPARTMENT, MAX(SALARY) FROM WORKER GROUP By DEPARTMENT;

-- SUM
SELECT DEPARTMENT, SUM(SALARY) FROM WORKER GROUP By DEPARTMENT;












 
 