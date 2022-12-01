CREATE DATABASE companydb;
USE companydb;

CREATE TABLE tbl_buyer (
c_id	VARCHAR(5)	NOT NULL	PRIMARY KEY,
c_name	VARCHAR(30)	NOT NULL,	
c_tel	VARCHAR(13),		
c_manager	VARCHAR(10),		
c_mgtel	VARCHAR(13),		
c_sum	INT
);

INSERT INTO tbl_buyer2 (c_id,c_name, c_tel, c_manager,c_mgtel,c_sum) 
VALUES ("B001","롯데상사","02-222-9999","홍길동","010-9999-8766",91000);

SELECT * FROM tbl_buyer2;
