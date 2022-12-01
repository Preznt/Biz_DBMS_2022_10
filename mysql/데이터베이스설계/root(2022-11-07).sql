-- root로 접속한 화면입니다.
CREATE SCHEMA foodDB;
USE foodDB;

CREATE TABLE tbl_today (
fd_date VARCHAR(10) NOT NULL,
fd_food VARCHAR(30) NOT NULL,
fd_intake INT,
fd_cal INT,
sum_cal INT
);

SELECT * FROM tbl_today;

INSERT INTO tbl_today (fd_date, fd_food, fd_intake, fd_cal) VALUES ('2022-07-03','행복 토스트 식빵',1,100);
INSERT INTO tbl_today (fd_date, fd_food, fd_intake, fd_cal) VALUES ('2022-07-05','버거킹 스태커 와퍼2',2,200);


 
SELECT  ROW_NUMBER() OVER(ORDER BY fd_date DESC) AS ROWNUM, fd_date,fd_food FROM tbl_today;
 
set sql_safe_updates=0;
 
DELETE FROM tbl_today WHERE fd_food = '피자';

DELETE FROM tbl_today WHERE ROWNUM = 1;

 
 




