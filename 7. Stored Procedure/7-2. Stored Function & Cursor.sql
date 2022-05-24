-- Stored Function
SET GLOBAL log_bin_trust_function_creators = 1;

USE market_db;
DROP FUNCTION IF EXISTS sumFunc;
DELIMITER $$
CREATE FUNCTION sumFunc(number1 INT, number2 INT)
	RETURNS INT
BEGIN
	RETURN number1 + number2;
END $$
DELIMITER ;

SELECT sumFunc(100, 200) AS 'Result';

DROP FUNCTION IF EXISTS calcYearFunc;
DELIMITER $$
CREATE FUNCTION calcYearFunc(dYear INT)
	RETURNS INT
BEGIN
	DECLARE runYear INT;
    SET runYear = YEAR(CURDATE()) - dYear;
    RETURN runYear;
END $$
DELIMITER ;

SELECT calcYearFunc(2010) AS '활동 햇수';

SELECT calcYearFunc(2007) INTO @debut2007;
SELECT calcYearFunc(2013) INTO @debut2013;
SELECT @debut2007 - @debut2013 AS 'Diff of 2007 and 2013';

SELECT mem_id, mem_name, calcYearFunc(YEAR(debut_date)) AS '활동 햇수'
	FROM member;
    
SHOW CREATE FUNCTION calcYearFunc;

DROP FUNCTION calcYearFunc;

-- Cursor
DROP PROCEDURE IF EXISTS cursor_proc;
DELIMITER $$
CREATE PROCEDURE cursor_proc()
BEGIN
	DECLARE memNum INT;
    DECLARE total INT DEFAULT 0;
    DECLARE cnt INT DEFAULT 0;
    DECLARE endOfRow BOOLEAN DEFAULT FALSE;
    
    DECLARE memberCursor CURSOR FOR
		SELECT mem_number FROM member;
	
    DECLARE CONTINUE HANDLER
		FOR NOT FOUND SET endOfRow = TRUE;
	
    OPEN memberCursor;
    
    cursor_loop: LOOP
		FETCH memberCursor INTO memNum;
        
        IF endOfRow THEN
			LEAVE cursor_loop;
		END IF;
        
        SET cnt = cnt + 1;
        SET total = total + memNum;
	END LOOP cursor_loop;
    
    SELECT (total/cnt) AS 'AVG(mem_number)';
    
    CLOSE memberCursor;
END $$
DELIMITER ;

CALL cursor_proc();
SELECT AVG(mem_number) FROM member;