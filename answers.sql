USE salesdb;

-- Question 1
-- Get firstName, lastName, email, and officeCode of all employees
-- INNER JOIN employees with offices using officeCode
SELECT employees.firstName, employees.lastName, employees.email, employees.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode


-- Question 2
-- Get productName, productVendor, and productLine
-- LEFT JOIN products with productlines using productLine
SELECT products.productName, products.productVendor, products.productLine
FROM products
LEFT JOIN productlines ON products.productLine = productlines.productLine;


-- Question 3
-- Retrieve orderDate, shippedDate, status, and customerNumber
-- for the first 10 orders
-- RIGHT JOIN customers with orders using customerNumber
SELECT orders.orderDate, orders.shippedDate, orders.status, orders.customerNumber
FROM customers
RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber
LIMIT 10;