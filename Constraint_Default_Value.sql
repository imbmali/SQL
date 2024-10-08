CREATE TABLE ACCOUNT(
ID INT PRIMARY KEY,
NAME VARCHAR(255) UNIQUE,
BALANCE INT,
CONSTRAINT ACC_BALANCE_CHK CHECK (BALANCE > 1000)
);


INSERT INTO ACCOUNT(ID, NAME, BALANCE)
values(1, 'A', 10000);

INSERT INTO ACCOUNT(ID, NAME, BALANCE)
values(2, 'B', 10000);

DROP TABLE ACCOUNT;

SELECT * FROM ACCOUNT;


-- DEFAULT Value: Amazon account by default not prime
CREATE TABLE ACCOUNT_2(
ID INT PRIMARY KEY,
NAME VARCHAR(255) UNIQUE,
BALANCE INT NOT NULL DEFAULT 0
);

INSERT INTO ACCOUNT_2(ID, NAME)
values(2, 'B', 1000);


INSERT INTO ACCOUNT_2(ID, NAME)
values(3, 'C');


INSERT INTO ACCOUNT_2(ID, NAME)
values(6, 'E');



SELECT * FROM ACCOUNT_2;

-- Note: An attribute can be PK and FK both in a table.

-- ALTER OPERATIONS:
-- 1. ADD: Add new column
-- 2. MODIFY: Change datatype of an atttibute
-- 3. CHANGE COLUMN
-- 4. DROP COLUMN
-- 5. RENAME TABLE NAME 


-- JOINS--








