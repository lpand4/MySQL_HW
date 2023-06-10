CREATE DATABASE IF NOT EXISTS lesson_6_HW;

USE lesson_6_HW;

# Zadanie 1 Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней, часов, минут и секунд.
# Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS FormatSecToDays;
DELIMITER $$
CREATE PROCEDURE FormatSecToDays (IN numSec INT)
	begin 
		DECLARE sec INT DEFAULT 0;
		DECLARE min INT DEFAULT 0;
		DECLARE hours INT DEFAULT 0;
		DECLARE days INT DEFAULT 0;
        DECLARE answer VARCHAR(60);
        
		SET sec = numSec % 60;
        SET min = numSec DIV 60%60;
        SET hours = numSec DIV 60 DIV 60%24;
        SET days = (numSec/60/60) DIV 24;
        
        SET answer = CONCAT(days, " days ", hours, " hours ", min, " minutes ", sec, " seconds ");
        SELECT answer;
	end $$
    DELIMITER ;
    
CALL FormatSecToDays(12345678);



# Zadanie2 Выведите только четные числа от 1 до 10 (Через цикл).
# Пример: 2,4,6,8,10
DROP PROCEDURE IF EXISTS evenNum;
DELIMITER $$
CREATE PROCEDURE evenNum ( IN num INT)
BEGIN
	DECLARE i INT DEFAULT 2;
    DECLARE answer VARCHAR(45) DEFAULT "";
    WHILE i <= num DO
		IF i+2<=num THEN
			SET answer = CONCAT(answer, i, ", ");
		ELSE
			SET answer = CONCAT(answer, i);
		END IF;
		SET i=i+2;
	END WHILE;
    SELECT answer;
END $$
DELIMITER ;

CALL evenNum(11);
