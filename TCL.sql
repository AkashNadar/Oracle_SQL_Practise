---------------------------------------COMMIT----------------------------------------
SELECT * FROM PRODUCT;
INSERT INTO PRODUCT VALUES (&PID, &PNAME, &PRICE);
COMMIT;-- USED TO SAVE IN THE DATA BASE 

------------------------------------------ROLLBACK-------------------------------------
INSERT INTO PRODUCT VALUES (1, 'LAPTOP', 40000);
ROLLBACK;  -- ROLLBACK TO THE LAST COMMINT
SELECT * FROM PRODUCT;

-----------------------------------------SAVEPOINT------------------------------------------
INSERT INTO PRODUCT VALUES (5, 'MOBILE', 10000);
SAVEPOINT S1;
UPDATE PRODUCT 
SET PRICE = 50000
WHERE PNAME = 'LAPTOP';
SAVEPOINT S2;
DELETE FROM PRODUCT
WHERE PNAME = 'MOBILE';
SELECT * FROM PRODUCT;
ROLLBACK TO S2
ROLLBACK;


