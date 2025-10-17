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