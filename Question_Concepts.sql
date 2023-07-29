SELECT * 
FROM EMP;
-----------------------------------------------------VIEW----------------------------------------------------
CREATE VIEW V
AS
SELECT ENAME, SAL
FROM EMP
WHERE JOB = 'SALESMAN';
--MODIFY IN TABLE AUTOMATICALLY UPDATE TO THE VIEWS
SELECT *
FROM V;

UPDATE EMP
SET SAL = SAL - 500
WHERE ENAME = 'WARD';


--To copy the structure of the table along with data ??
--or exact copy of the TABLE ??
CREATE TABLE E
AS 
SELECT *
FROM EMP;

SELECT *
FROM E;

--how to copy the structure of the table not the data ??
CREATE TABLE ES
AS 
SELECT *
FROM EMP
WHERE 2 != 2;

DESC ES;
SELECT *
FROM ES;


--SET OPERATION

--WAQTD emp name in lower case if they were working as a salesman else display there 
--name in reverse format ??
SELECT LOWER(ENAME)
FROM EMP
WHERE JOB = 'SALESMAN'
UNION
SELECT REVERSE(ENAME)
FROM EMP
WHERE JOB != 'SALESMAN';
--UNION - USED TO JOIN TABLES VERTICALLY


---What are DataBase Properties ??





