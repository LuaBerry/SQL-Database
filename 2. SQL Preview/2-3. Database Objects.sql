/*Index*/
SELECT * FROM member WHERE member_name = '아이유';
CREATE INDEX idx_member_name ON member(member_name);
SELECT * FROM member WHERE member_name = '아이유';

/*View*/
CREATE VIEW member_view
AS	
	SELECT * FROM member;
SELECT * FROM member_view;

/*Stored Procedure*/
SELECT * FROM member WHERE member_name = '최진우';
SELECT * FROM product WHERE product_name = '삼각김밥';

DELIMITER //
CREATE PROCEDURE myProc()
BEGIN
	SELECT * FROM member WHERE member_name = '최진우';
    SELECT * FROM product WHERE product_name = '삼각김밥';
END //
DELIMITER ;

CALL myProc();