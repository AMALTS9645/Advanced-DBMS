CREATE TABLE STUDENT(sid INT,name VARCHAR(50),dob DATE,physics INT,chemistry INT,maths INT);
DESCRIBE STUDENT;
INSERT INTO STUDENT
VALUES(1,'Anu','1998-12-20',88,61,70),(2,'Sara','2000-05-13',68,74,38),
(3,'Jack','1998-03-11',71,79,90),(4,'Della','1999-10-23',50,75,92),(5,'Aby','1999-09-09',90,60,70);
SELECT * FROM STUDENT;
SELECT sid,name FROM STUDENT WHERE dob=(SELECT MAX(dob)FROM STUDENT);
SELECT * FROM STUDENT WHERE maths >=40 and (physics >=40 or chemistry >=40);
ALTER TABLE STUDENT add total int;
ALTER TABLE STUDENT add average float(10,3);
DESCRIBE STUDENT;
SELECT name from STUDENT where maths=(select max(maths) from STUDENT);
SELECT name from STUDENT where chemistry=(select min(chemistry) from STUDENT);
UPDATE STUDENT set total=physics+chemistry+maths;
SELECT * from STUDENT;
UPDATE STUDENT SET average=total/3;
SELECT * FROM STUDENT ORDER BY total DESC;
ALTER TABLE STUDENT RENAME COLUMN average TO avg_mark;
SELECT * FROM STUDENT;
SELECT AVG(avg_mark) AS overall_average FROM STUDENT;
SELECT*FROM STUDENT WHERE avg_mark >(SELECT AVG(avg_mark)AS overall_average FROM STUDENT);
SELECT COUNT(*)FROM STUDENT WHERE avg_mark > (SELECT AVG(avg_mark)AS overall_average FROM STUDENT);
