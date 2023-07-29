DML---> Data Manipulation Language 

DESC PRODUCT;

-----------------------------------INSERT------------------------------------------
--SYNTAX 1
INSERT INTO PRODUCT VALUES (1, 'LIPSTICK', 3999);
SELECT * FROM PRODUCT;

--SYNTAX 2
INSERT INTO PRODUCT (PNAME, PRICE, PID)
VALUES ('TOYS', 100, 2);

--SYNTAX 3 - USER INPUT STRING SHOULD BE IN ' ' 
INSERT INTO PRODUCT VALUES (&PID, &PNAME, &PRICE);

----------------------------------UPDATE-------------------------------------------------
UPDATE PRODUCT 
SET PRICE = 110
WHERE PNAME = 'LIPSTICK';

UPDATE PRODUCT 
SET PRICE = 40000
WHERE PNAME = 'LAPTOP';

---------------------------------DELETE----------------------------------------------------------
DELETE 
FROM PRODUCT 
WHERE PNAME = 'LIPSTICK';

-------------------------------------TRUNCATE--------------------------------------------
--STRUCTURE REMAINS SAME 

--disconnectiong the foreign key
--MYSQL
--ALTER TABLE CUSTOM
--DROP CONSTRAINT FOREIGN KEY
--ORACLE
ALTER TABLE CUSTOM
DROP CONSTRAINT PID_FK;

TRUNCATE TABLE PRODUCT;
SELECT *
FROM PRODUCT;

----------------------------------------------DROP----------------------------------------------
--DELETE THE TABLE 
DROP TABLE EMP;
SELECT *
FROM EMP;
DROP TABLE PRODUCT;
DROP TABLE CUSTOM;
--RESTORING 
FLASHBACK TABLE PRODUCT
TO BEFORE DROP;
TABLE DROPPED;

SELECT *
FROM RECYCLEBIN;

SELECT *
FROM PRODUCT;

SHO RECYCLEBIN;
select *
from   V$PARAMETER
where  NAME = 'recyclebin';

ALTER SESSION SET RECYCLEBIN=ON;
SHOW USER;

------------------------------------CREATING NEW USER-------------------------------
alter session set "_oracle_script"=true;

CREATE USER pentagon IDENTIFIED BY space
DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp
QUOTA 20M ON users
ACCOUNT UNLOCK;


SELECT username, account_status, default_tablespace, temporary_tablespace
profile, authentication_type 
FROM DBA_USERS 
WHERE username = 'PENTAGON';

