CREATE DATABASE IF NOT EXISTS lesson_2_HW;

USE lesson_2_HW;

# ZADANIE 1. 

DROP TABLE IF EXISTS sales; 

CREATE TABLE sales
(
	`id` INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY = UNIQUE NOT NULL
    `order_date` DATE NOT NULL,
    `count_product` INT
);

INSERT INTO sales(order_date, count_product)
VALUES
	('2022-01-01', 156),
	('2022-01-02', 180),
	('2022-01-03', 21),
	('2022-01-04', 124),
	('2022-01-05', 341);
    
SELECT * FROM sales;
    

# ZADANIE 2

SELECT 
	`id` AS "Номер заказа",
    `order_date` AS "Дата заказа",
    `count_product` AS "Кол-во товара",
CASE
	WHEN count_product<100
		THEN "Маленький заказ"
	WHEN count_product>100 AND count_product<300 
		THEN "Средний заказ"
	WHEN count_product>300
		THEN "Большой заказ"
END AS "Тип заказа"
FROM sales;

# ZADANIE 3

DROP TABLE IF EXISTS orders;
 
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(10) UNIQUE,
    amount DOUBLE(10,2),
    order_status VARCHAR(20)
);

INSERT INTO orders(employee_id, amount, order_status)
VALUES
	('e03',15.00,"OPEN"),
	('e01',25.50,"OPEN"),
	('e05',100.70,"CLOSED"),
	('e02',22.18,"OPEN"),
	('e04',9.50,"CANCELLED");
    
SELECT 
	`id`,
    `employee_id`,
    `amount`,
    `order_status`,
CASE
	WHEN order_status="OPEN"
		THEN "Order is in open state"
	WHEN order_status="CLOSED" 
		THEN "Order is closed"
	WHEN order_status="CANCELLED"
		THEN "Order is cancelled"
END AS "full_order_status"
FROM orders;
    
    