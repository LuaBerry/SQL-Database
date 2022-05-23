USE market_db;

-- Structure of Index
CREATE TABLE cluster
(
	mem_id CHAR(8),
    mem_name VARCHAR(10)
);

INSERT INTO cluster VALUES('TWC', '트와이스'),
						('BLK', '블랙핑크'),
                        ('WMN', '여자친구'),
                        ('OMY', '오마이걸'),
                        ('GRL', '소녀시대'),
                        ('ITZ', '잇지'),
                        ('RED', '레드벨벳'),
                        ('APN', '에이핑크'),
                        ('SPC', '우주소녀'),
                        ('MMU', '마마무');
                        
SELECT * FROM cluster;

ALTER TABLE cluster
	ADD CONSTRAINT
    PRIMARY KEY(mem_id);

SELECT * FROM cluster;

USE market_db;
CREATE TABLE second
(
	mem_id		CHAR(8),
    mem_name	VARCHAR(10)
);

INSERT INTO second VALUES('TWC', '트와이스'),
						('BLK', '블랙핑크'),
                        ('WMN', '여자친구'),
                        ('OMY', '오마이걸'),
                        ('GRL', '소녀시대'),
                        ('ITZ', '잇지'),
                        ('RED', '레드벨벳'),
                        ('APN', '에이핑크'),
                        ('SPC', '우주소녀'),
                        ('MMU', '마마무');

SELECT * FROM second;

ALTER TABLE second
	ADD CONSTRAINT
    UNIQUE(mem_id);
    
SELECT * FROM second;