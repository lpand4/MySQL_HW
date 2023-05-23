CREATE DATABASE IF NOT EXISTS lesson_1_HW;

USE lesson_1_HW;

DROP TABLE IF EXISTS phone;

CREATE TABLE phone
(
Id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(45),
Manufacturer VARCHAR(45),
ProductCount INT,
Price INT
);

INSERT phone(ProductName, Manufacturer, ProductCount, Price) 
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT * FROM phone;

# Zadanie 2

SELECT ProductName, Manufacturer, Price 
FROM phone
WHERE ProductCount > 2;

# Zadanie 3

SELECT ProductName, ProductCount, Price
FROM phone
WHERE Manufacturer = "Samsung";

#Zadanie 4

SELECT ProductName, Manufacturer 
FROM phone
WHERE Price * ProductCount > 100000 
AND Price * ProductCount < 145000;

#Zadanie 4.1

SELECT * FROM phone
WHERE ProductName LIKE "%iPhone%";


#Zadanie 4.2

SELECT * FROM phone
WHERE ProductName LIKE "%Galaxy%";


#Zadanie 4.3

SELECT * FROM phone
WHERE ProductName RLIKE "[0-9]";


#Zadanie 4.4

SELECT * FROM phone
WHERE ProductName RLIKE "[8]";

SELECT * FROM phone
WHERE ProductName LIKE "%8%";
