USE market_db;

-- Data types
CREATE TABLE hongong4 (
	tinyint_col TINYINT,
    smallint_col SMALLINT,
    int_col INT,
    bigint_col BIGINT);

INSERT INTO hongong4 VALUES (127, 32767, 214783647, 9000000000000000000);

INSERT INTO hongong4 VALUES (128, NULL, NULL, NULL);

CREATE TABLE big_table (
	data1 CHAR(256),
    data2 VARCHAR(16384) );
    
CREATE DATABASE netflix_db;
USE netflix_db;
CREATE TABLE movie(
	movie_id		INT,
    movie_title		VARCHAR(30),
    movie_director 	VARCHAR(20),
    movie_star		VARCHAR(20),
    movie_script	LONGTEXT,
    movie_film		LONGBLOB);
    
-- Use of varibles
USE market_db;
SET @myVar1 = 5;
SET @myVar2 = 4.25;

SELECT @myVar1;
SELECT @myVar1 + @myVar2;

SET @txt = '가수 이름 ==> ';
SET @height = 166;
SELECT @txt , mem_name FROM member WHERE height > @height;

SET @count = 3;
-- SELECT mem_name, height FROM member ORDER BY height LIMIT @count;
PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY height LIMIT ?';
EXECUTE mySQL USING @count;

-- Data type conversion
SELECT AVG(price) '평균 가격' FROM buy;

SELECT CAST(AVG(price) AS SIGNED) '평균 가격' FROM buy;
SELECT CONVERT(AVG(price), SIGNED) '평균 가격' FROM buy;

SELECT CAST('2022/12/12' AS DATE);
SELECT CAST('2022^12^12' AS DATE);
SELECT CAST('2022+12+12' AS DATE);

SELECT num,
	CONCAT(CAST(price AS CHAR), ' * ', CAST(amount AS CHAR), ' =')'가격 X 수량',
    price * amount '구매액'
    FROM buy;

SELECT '100' + '200';

SELECT CONCAT('100', '200');

SELECT CONCAT(100, '200');
SELECT 100 + '200';

SELECT num,
	CONCAT(price, ' * ', amount)'가격 X 수량',
    price * amount '구매액'
    FROM buy;