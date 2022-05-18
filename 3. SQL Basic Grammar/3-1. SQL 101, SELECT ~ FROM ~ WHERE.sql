-- Basic Querying: SELECT ~ FROM
USE market_db;

SELECT * FROM member;
SELECT * FROM market_db.member;

SELECT mem_name FROM member;

SELECT addr, debut_date, mem_name FROM member;
SELECT addr, "주소", debut_date "데뷔 날짜", mem_name "멤버 이름" FROM member;

-- Querying specific things: SELECT ~ FROM ~ WHERE
SELECT * FROM member WHERE mem_name = '블랙핑크';

SELECT * FROM member WHERE mem_number = 4;

SELECT mem_id, mem_name
	FROM member
	WHERE height <= 162;
    
SELECT mem_name, height, mem_number
	FROM member
	WHERE height >= 165 AND mem_number > 6;
    
SELECT mem_name, height, mem_number
	FROM member
    WHERE height >= 165 OR mem_number > 6;
    
SELECT mem_name, height
	FROM member
    WHERE height >= 163 AND height <= 165;

SELECT mem_name, height
	FROM member
    WHERE height BETWEEN 163 AND 165;

SELECT mem_name, addr
	FROM member
    WHERE addr = '경기' OR addr = '전남' OR addr = '경남';

SELECT mem_name, addr
	FROM member
    WHERE addr IN('경기', '전남', '경남');
    
SELECT *
	FROM member
    WHERE mem_name LIKE '_주%';

SELECT *
	FROM member
    WHERE mem_name Like '__핑크';

-- Subquery
SELECT height FROM member WHERE mem_name = '에이핑크';

SELECT mem_name FROM member WHERE height > 164;

SELECT mem_name, height
	FROM member
    WHERE height > (SELECT height FROM member WHERE mem_name = '에이핑크');