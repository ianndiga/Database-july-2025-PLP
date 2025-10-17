-- Week 1
-- CREATE DATABASE hospital_db;
CREATE salesdb_db;

-- Question 2
DROP DATABASE demo;

-- Week  2
USE salesdb;

-- Question 1
SELECT checkNumber, paymentDate, amount
FROM payments;

-- Question 2
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- Question 3
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- Question 4
SELECT *
FROM offices;

-- Question 5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;

-- Week 3
-- Question 1
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- Question 2
INSERT INTO student (id, fullName, age)
VALUES 
    (1, 'John Doe', 18),
    (2, 'Mary Jane', 19),
    (3, 'Kevin Smith', 21);

-- Question 3
UPDATE student
SET age = 20
WHERE id = 2;

-- Week 4
-- Question 1
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3
SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

-- Question 4
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;

-- Week 5
-- Question 1
DROP INDEX IdxPhone ON customers;

-- Question 2
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
