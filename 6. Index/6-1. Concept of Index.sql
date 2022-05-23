Use market_db;

-- Type of Index
CREATE TABLE table1
(
	col1 INT PRIMARY KEY,
    col2 INT,
    col3 INT
);

SHOW INDEX FROM table1;

CREATE TABLE table2
(
	col1 INT PRIMARY KEY,
    col2 INT UNIQUE,
    col3 INT UNIQUE
);

SHOW INDEX FROM table2;

-- Feature of Indexes
USE market_db;
DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
(
	mem_id		CHAR(8),
    mem_name	VARCHAR(10),
    mem_number	INT,
    addr		CHAR(2)
);

INSERT INTO member VALUES ('TWC', '트와이스', 9, '서울'),
						('BLK', '블랙핑크', 4, '경남'),
                        ('WMN', '여자친구', 6, '경기'),
                        ('OMY', '오마이걸', 7, '서울');
SELECT * FROM member;

ALTER TABLE member
	ADD CONSTRAINT
    PRIMARY KEY(mem_id);
SELECT * FROM member;

ALTER TABLE member
	DROP PRIMARY KEY;

ALTER TABLE member
	ADD CONSTRAINT
    PRIMARY KEY(mem_name);
SELECT * FROM member;

INSERT INTO member VALUES ('GRL', '소녀시대', 8, '서울');
SELECT * FROM member;

DROP TABLE IF EXISTS member;
CREATE TABLE member
(
	mem_id		CHAR(8),
    mem_name	VARCHAR(10),
    mem_number	INT,
    addr		CHAR(2)
);

INSERT INTO member VALUES ('TWC', '트와이스', 9, '서울'),
						('BLK', '블랙핑크', 4, '경남'),
                        ('WMN', '여자친구', 6, '경기'),
                        ('OMY', '오마이걸', 7, '서울');
SELECT * FROM member;

ALTER TABLE member
	ADD CONSTRAINT
    UNIQUE(mem_id);
SELECT * FROM member;

ALTER TABLE member
	ADD CONSTRAINT
    UNIQUE(mem_name);
SELECT * FROM member;

INSERT INTO member VALUES ('GRL', '소녀시대', 8, '서울');
SELECT * FROM member;