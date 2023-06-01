CREATE DATABASE IF NOT EXISTS lesson_3_HW;

USE lesson_3_HW;


DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45) NOT NULL,
    lastname VARCHAR(45) NOT NULL,
    post VARCHAR(45) NOT NULL,
    seniority INT, 
    salary DECIMAL(8,2), -- 100 000 . 00
    age INT
);

INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
  ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
  ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
  ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
  ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
  ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
  ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
  ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
  ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
  ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
  ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
  ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
  ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
  

  SELECT * FROM staff;
  

# ZADANIE 1. 

# По возрастанию

SELECT * FROM staff
ORDER BY salary;

# По убыванию

SELECT * FROM staff
ORDER BY salary DESC;

# ZADANIE 2. 

SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;

# ZADANIE 3. 

SELECT post, SUM(salary)
FROM staff
GROUP BY post;

# ZADANIE 4.

SELECT COUNT(*) AS 'Кол-во сотрудников'
FROM staff
WHERE post = "Рабочий" 
AND age >= 24 
AND age <=49;

# ZADANIE 5.

SELECT COUNT(DISTINCT post)
AS 'Кол-во специальностей'
FROM staff;

# ZADANIE 6.

SELECT post AS "Профессии средний возраст работников <= 30 лет"
FROM staff
GROUP BY post 
HAVING AVG(age) <= 30;



# Доп

(SELECT * FROM staff
WHERE post = "Начальник"
ORDER BY salary DESC
LIMIT 2)
UNION ALL
(SELECT * FROM staff
WHERE post = "Инженер"
ORDER BY salary DESC
LIMIT 2)
UNION ALL
(SELECT * FROM staff
WHERE post = "Рабочий"
ORDER BY salary DESC
LIMIT 2)
UNION ALL
(SELECT * FROM staff
WHERE post = "Уборщик"
ORDER BY salary DESC
LIMIT 2);