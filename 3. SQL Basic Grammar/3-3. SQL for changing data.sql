USE market_db;

-- Input data: INSERT
CREATE TABLE hongong1 (toy_id INT, toy_name CHAR(4), age INT);

INSERT INTO hongong1 VALUES (1, '우디', 25);

INSERT INTO hongong1 (toy_id, toy_name) VALUES (2, '버즈');

INSERT INTO hongong1 (toy_id, age, toy_name) VALUES (3, 20, '제시');

SELECT * FROM hongong1;

CREATE TABLE hongong2 (
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT);

INSERT INTO hongong2 VALUES (NULL, '보핍', 25);
INSERT INTO hongong2 VALUES (NULL, '슬링키', 22);
INSERT INTO hongong2 VALUES (NULL, '렉스', 21);
SELECT * FROM hongong2;

SELECT LAST_INSERT_ID();

ALTER TABLE hongong2 AUTO_INCREMENT = 100;
INSERT INTO hongong2 VALUES (NULL, '재남', 35);
SELECT * FROM hongong2;

CREATE TABLE hongong3(
	toy_id INT AUTO_INCREMENT PRIMARY KEY,
    toy_name CHAR(4),
    age INT);
ALTER TABLE hongong3 AUTO_INCREMENT = 1000;
SET @@auto_increment_increment = 3;

INSERT INTO hongong3 VALUES (NULL, 'Thom', 20);
INSERT INTO hongong3 VALUES (NULL, 'Jay', 23);
INSERT INTO hongong3 VALUES (NULL, 'Gor', 25);
SELECT * FROM hongong3;

SELECT COUNT(*) FROM world.city;

DESC world.city;

SELECT * FROM world.city ORDER BY Population DESC LIMIT 5;

CREATE TABLE city_popul (city_name CHAR(35), population INT);

INSERT INTO city_popul
	SELECT Name, Population from world.city ORDER BY Population DESC LIMIT 10;

SELECT * FROM city_popul;

-- Modify data: UPDATE
USE market_db;
UPDATE city_popul
	SET city_name = '서울'
    WHERE city_name = 'Seoul';
SELECT * FROM city_popul WHERE city_name = '서울';

UPDATE city_popul
	SET city_name = '뉴욕', population = 8128210
    WHERE city_name = 'New York';
SELECT * FROM city_popul WHERE city_name = '뉴욕';

UPDATE city_popul
	SET population = population / 10000;
SELECT * FROM city_popul;

-- Delete data: DELETE
DELETE FROM city_popul
	WHERE city_name LIKE 'S%';

DELETE FROM city_popul
	WHERE city_name LIKE 'M%'
    LIMIT 1;

SELECT * FROM city_popul;

-- Deleting big-size table
CREATE TABLE big_table1 (SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table2 (SELECT * FROM world.city, sakila.country);
CREATE TABLE big_table3 (SELECT * FROM world.city, sakila.country);
SELECT COUNT(*) FROM big_table1;

DELETE FROM big_table1;
DROP TABLE big_table2;
TRUNCATE TABLE big_table3;

SELECT * FROM big_table1;
SELECT * FROM big_table2;
SELECT * FROM big_table3;