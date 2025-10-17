-- Week 1
-- CREATE DATABASE hospital_db;
CREATE sales_db_db;

-- Question 2
DROP DATABASE demo;

-- Week  2
USE sales_db;

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
