--SELECT * 
--FROM EMP

--SELECT ENAME, HIREDATE, SAL * 6 "Anual Sal"
--FROM emp
--####################################################################
--PROJECTION 
--1} WAQTD ENAME Along with JOB and HIREDATE
SELECT ENAME, JOB, HIREDATE
FROM EMP;

--2}WAQTD ENAME , COMM and SAL with 300RS Incentive
--Incentives not to add on the annual sal add on the monthly
SELECT ENAME, COMM, SAL + 300 "Incentives Sal"
FROM EMP;

--3}WAQTD ENAME, JOB, SAL OF Employ with 500RS bonus 
--Add bonus on the annual income
SELECT ENAME, JOB, (SAL * 12) + 500 "500 bonus"
FROM EMP

--4} WAQTD Details of All the Emps
SELECT * 
FROM EMP;

--5} WAQTD Details of an Emp along with Annual Sal
-- EMP detail along with annual sal  "EMP.*"
SELECT EMP.*, SAL * 12 "Annual Sal"
FROM EMP; 

--######################################################################
--SELECTION 
--1}WAQTD Details of an emp if the emp name is 'king' ?
SELECT * 
FROM EMP
WHERE ENAME = 'KING';

--2}WAQTD Emp name and job if the emp is working as a salseman ?
SELECT ENAME, JOB
FROM EMP
WHERE JOB = 'SALESMAN';

--######################################################################
--WHERE Clause --WHERE Clause--WHERE Clause--WHERE Clause--WHERE Clause--WHERE Clause--WHERE Clause--WHERE Clause

--1} WAQTD Name, Job and Sal Given to the emps If the emp is getting sal more than 1250?
SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL > 1250;

--2} WAQTD Details Of an emp if the emp is working in dep no 30 ?
SELECT *
FROM EMP
WHERE DEPTNO = 30;

--3}WAQTD Emp no , ename and sal given to all the emp if the emp no is 7788 ?
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE EMPNO = 7788;

--4} WAQTD Details of an emp who are hired after 81?
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-81';
--OR HIREDATE >= '01-JAN-82

--5} WAQTD details of an emp who have hiredate before 82 ?
SELECT *
FROM EMP
WHERE HIREDATE < '01-JAN-82';

--6} WAQTD details of all the emp along with annual sal if the annual sal is more than 25000?
SELECT EMP.*, SAL * 12 "ANNUAL SAL"
FROM EMP
WHERE SAL*12 > 25000;

--7} WAQTD details of an emp except who is working as president ?
SELECT * 
FROM EMP
WHERE JOB != 'PRESIDENT';

--8} WAQTD Details of an emp if the emp is getting commission more than sal ??
SELECT * 
FROM EMP
WHERE COMM > SAL;

--9} WAQTD NAME, JOB, DEPTNO of an emp if the emp working as a clerk in in depno 30?
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = 30;

--#########################################################################
--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR--OPERATOR
--1} WAQTD details of an emp if the emp is working as salseman o manager
SELECT * 
FROM EMP
WHERE JOB = 'SALESMAN' OR JOB = 'MANAGER';

--2} WAQTD emp name , job, deptno if the emp is working as the president in deptno 10 of 20?
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB = 'PRESIDENT' AND (DEPTNO = 10 OR DEPTNO = 20);

--3} WAQTD details of an emp who are working as a salesman and getting sal more than 1200?
SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND SAL > 1200;

--4} WAQTD details of an emp who are getting comm as 0 or 500 in deptno 20 or 30?
SELECT * 
FROM EMP
WHERE (COMM = 0 OR COMM = 500) AND (DEPTNO = 20 OR DEPTNO = 30);

--5} WAQTD details of an emp if the emp is getting sal more than 1250 but sal less than 4000?
SELECT *
FROM EMP
WHERE SAL > 1250 AND SAL < 4000;

--6} WAQTD Name , Job and hiredate of an emp who were hired after 80 and getting sal more 
--than 1200 and working as an salesman??
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE HIREDATE > '31-DEC-80' AND SAL > 1200 AND JOB = 'SALESMAN';

--7} WAQTD details of an emp who were hired during the year 81?
SELECT * 
FROM EMP
WHERE HIREDATE >= '01-JAN-81' AND HIREDATE <= '31-DEC-81';


--***********************************IN OPERATOR*******************

--8} WAQTD EMP NAME, JOB AND DEPTNO if the emp is working as a analyst , salseman 
--or manager in dept  no 10, 20, 30?
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE JOB IN ('SALESMAN' , 'ANALYST', 'MANAGER') AND 
                    DEPTNO IN (10, 20, 30);
                
--9} WAQTD details of an emp if the emp is working in dept no 10, 20, 30, 40?
SELECT * 
FROM EMP
WHERE DEPTNO IN (10, 20, 30, 40);

--10} WAQTD details of an emp working salesman or manger in dept no 30 or 40?

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN', 'MANAGER') AND DEPTNO IN (30, 40);

--******************************NOT IN OPERATOR ***************************************
--11} WAQTD name, job, deptno and sal given to all the emps except who where getting sal
--as 1250 and 3000 and 5000 and they were hired after 80 except president or analyst
SELECT ENAME, JOB, DEPTNO, SAL
FROM EMP
WHERE SAL NOT IN (1250, 3000, 5000) AND HIREDATE > '31-DEC-80' AND 
                JOB NOT IN ('PRESIDENT', 'ANALYST');
                
--12}WAQTD details of an emp who where working in deptno 20 or 30 except analyst, clerk and president?
SELECT *
FROM EMP
WHERE DEPTNO IN (20, 30) AND JOB NOT IN ('ANALYST', 'CLERK', 'PRESIDENT');

--13} WAQTD empno, ename , job and comm if the emp is working as a salesman or manager
--and getting commission 300 or 1400 except empno 7788 or 7566??
SELECT EMPNO, ENAME, JOB , COMM
FROM EMP
WHERE JOB IN ('SALESMAN', 'MANAGER') AND COMM IN (300, 1400) AND 
                    EMPNO NOT IN (7788, 7566);

--*******************************BETWEEN OPERATOR*************************************

--14} WAQTD details of emp who are getting sal more than or equal to 1250 but less than 
--equal to 3000??

SELECT *
FROM EMP
WHERE SAL BETWEEN 1250 AND 3000;

--15} WAQTD details of an emp who were getting comm between 300 and 500??
SELECT * 
FROM EMP
WHERE COMM BETWEEN 300 AND 500;

--16} WAQTD emp name job and hiredate if the emp who were hired during the year 81??
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN '01-JAN-81' AND '31-DEC-81';

--17} WAQTD details of an emp along with annual sal if the emp is getting sal more than 
--1250 but less than 3000
SELECT EMP.*, SAL * 12 "ANNUAL SAL" 
FROM EMP
WHERE SAL BETWEEN 1251 AND 2999;

--18} WAQTD ename , sal and hiredate of an emp who where hired after 81 and except who 
--where getting sal 1250?

SELECT ENAME, SAL, HIREDATE
FROM EMP 
WHERE HIREDATE > '31-DEC-81' AND SAL <> 1250;

--*********************************NOT BETWEEN OPERATOR***************************
--19} WAQTD ename , sal and comm giving to all the emps who were getting commission 
--between 0 to 1200 and except who were getting sal between 2500 to 500?

SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM BETWEEN 0 AND 1200 AND SAL NOT BETWEEN 2500 AND 5000;

--20} WAQTD details of an emp except getting comm  between 0 to 1400?

SELECT * 
FROM EMP
WHERE COMM NOT BETWEEN 0 AND 1400;

--21} WAQTD emp name and sal if the emp getting sal less than 1250 but more than 2500?

SELECT ENAME, SAL 
FROM EMP
WHERE SAL NOT BETWEEN 1250 AND 2500;

--22} WAQRD emp name comm given to all the emps if the emp is getting comm more than 0 
--but less than or equal to 1400?

SELECT ENAME, COMM
FROM EMP
WHERE COMM BETWEEN 0 AND 1400;\

--***********************************IS OPERATOR ***********************************
--23} WAQTD details of an emp who where getting commm

SELECT * 
FROM EMP
WHERE COMM IS NOT NULL;

--24} WAQTD emp name, job and the comm given to all the emp if the emp working as the 
--salseman and getting comm
SELECT ENAME , JOB, COMM
FROM EMP
WHERE JOB = 'SALESMAN' AND COMM IS NOT NULL;

--25} WAQTD details of an emp if the emp name is smith
SELECT *
FROM EMP
WHERE ENAME = 'SMITH';

--26} WAQTD details of an emp who were having reporting manager?
SELECT *
FROM EMP
WHERE MGR IS NOT NULL;

--27} WAQTD ename , job sal hire date and comm given to all the emps if the emp is working 
--in department no 10, 20, 30, as a analyst or manager or clerk and getting sal more than
--or equal to 1250 but less than 400 except the who were hired in 80 and they were not
--getting comm

SELECT ENAME, JOB, SAL, HIREDATE , COMM
FROM EMP
WHERE DEPTNO IN (10, 20, 30) AND JOB IN ('MANAGER', 'CLERK', 'ANALYST')
            AND SAL BETWEEN 1250 AND 3999 AND HIREDATE NOT BETWEEN '01-JAN-80' AND '31-DEC-80'
            AND COMM IS NULL;

--28} WAQTD details of an emp if the emp name is king 

SELECT * 
FROM EMP
WHERE ENAME = 'KING';

--***********************************LIKE OPERATOR ***********************************


--29} WAQTD details of an emp if the emp name starts with s
SELECT *
FROM EMP
WHERE ENAME LIKE  'S%';

--30} WAQTD if the emp name should contains alternative 
SELECT *
FROM EMP
WHERE ENAME LIKE '%A_A%';

--31} WAQTD emp name contains consicutive L
SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%';

--32} WAQTD if the emp name contains atleast 2 A
SELECT *
FROM EMP
WHERE ENAME LIKE '%A%A%';

--33} WAQTD second last of the name should be E

SELECT *
FROM EMP
WHERE ENAME LIKE '%E_';

--34} WAQTD name and job of an emp if the emp name ends with 'R' ????

SELECT ENAME, JOB
FROM EMP
WHERE ENAME LIKE '%R';

--35} WAQTD details of an emp if the emp name contains 'A' in it ?
SELECT * 
FROM EMP
WHERE ENAME LIKE '%A%';

--36} WAQTD emp name, sal and hiredate if the emp name starts with 'M' OR 'B'

SELECT * 
FROM EMP
WHERE ENAME LIKE 'M%' OR ENAME LIKE 'B%';


--37} WAQTD details of an emp who where working as a salesman or manager and
--getting 3 digit comm

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN', 'MANAGER') AND COMM LIKE '___';

--38}WAQTD name, job and hiredate of an emp if the emp job starts with 'MAN'?

SELECT ENAME, JOB, HIREDATE 
FROM EMP
WHERE JOB LIKE 'MAN%';

--39} WAQTD name , job and hiredate of an emp if the emp name second last char is 'I'?
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE ENAME LIKE '%I_';

--40} WAQTD details of an emp if the emp name ends with R or E and getting 4 dig sal?
SELECT *
FROM EMP
WHERE (ENAME LIKE '%R' OR ENAME LIKE '%E') AND (SAL LIKE '____');

--41} WAQTD   details of an emp along with annual sal if the emp is getting annual salary
--which ends with '0'?
SELECT EMP.*, SAL * 12 "ANNUAL SAL"
FROM EMP
WHERE SAL * 6 LIKE '%0';

--42} WAQTD name , job and hiredate of an emp who were hired the year 81?

SELECT ENAME, JOB, HIREDATE 
FROM EMP
WHERE HIREDATE LIKE '%81';

--43} WAQTD details of an emp who were hired in the moth of dec of jan?

SELECT *
FROM EMP
WHERE HIREDATE LIKE '%DEC%' OR HIREDATE LIKE '%JAN%';

--44} WAQTD details of an emp if the emp name contains percentile(%) in it ?
SELECT * 
FROM EMP
WHERE ENAME LIKE '%!%%'  ESCAPE '!'; 

--45} WAQTD name of an emp if the emp name contains underscore '_' in it?
SELECT ENAME 
FROM EMP
WHERE ENAME LIKE '%!_%' ESCAPE '!';

46} WAQTD name and age of an emp if the emp name contains atleast two '%'
SELECT ENAME 
FROM EMP
WHERE ENAME LIKE '%!%%!%%' ESCAPE '!';

--47} WAQTD details of an emp if the emp name second last of char is '%' ?
SELECT *
FROM EMP
WHERE ENAME LIKE '%!%_' ESCAPE '!';

--***********************************NOT LIKE OPERATOR ***********************************

--48} WAQTD name of an emp if the emp name does not starts with 'S'
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE 'S%';

--49} WAQTD details of an emp if the emp job doesnt ends with 'MAN' ??
SELECT *
FROM EMP 
WHERE JOB NOT LIKE '%MAN';

--50} WAQTD name , job and hiredate of an emp if the emp name does not starts with 's' or 'm'
--AND IS USED 
SELECT ENAME, JOB, HIREDATE
FROM EMP 
WHERE ENAME NOT LIKE 'S%' AND ENAME NOT LIKE 'M%'; 


--IMPORTANT
--51} WAQTD details of an emp if they were getting commission without using is operator?
SELECT * 
FROM EMP 
WHERE COMM LIKE '%';


--***********************************CONCATINATION OPERATOR ***********************************

SELECT 'Mr.' || ENAME || ' your salary is' || SAL || 'RS' "Detailed Note"
FROM EMP;

--#########################################################################

--***********************************MULTI-ROW-FUNCTION***********************************

--52} WAQTD maximum sal given to all the emp from emp table 
SELECT MAX(SAL)
FROM EMP;

--53}WAQTD total sal needed to pay for all the salesman from emp table 
SELECT SUM(SAL)
FROM EMP
WHERE JOB = 'SALESMAN';

--54} WAQTD total sal and avg sal needed to pay for all the emp if the emps except president?

SELECT SUM(SAL), AVG(SAL)
FROM EMP
WHERE JOB != 'PRESIDENT';

--55} WAQTD no of emp working as a manager from emp table 
SELECT COUNT(*)
FROM EMP 
WHERE JOB = 'MANAGER';

--56} WAQTD no of emps who were not working as analyst except 10, 20
SELECT COUNT(*)
FROM EMP
WHERE JOB NOT IN ('CLERK', 'MANAGER') AND DEPTNO NOT IN (10, 20);

--57} WAQTD max sal , total sal along with min comm given to all the emps if the emp name 
doesn't starts with 'S' and doesnt ends with 'A ??
SELECT MAX(SAL), SUM(SAL), MIN(COMM)
FROM EMP
WHERE ENAME NOT LIKE 'S%' AND ENAME NOT LIKE 'A%';

--58} WAQTD No of emps getting commission in dept no 20 or 30 and they were working as a 
--salesman WE  CAN ALSO USE COUNT(COMM)

SELECT COUNT(*)
FROM EMP
WHERE DEPTNO IN (20, 30) AND JOB = 'SALESMAN' AND COMM IS NOT NULL;

--IMPORTAND
--59} WAQTD no of job present in emp table?
SELECT COUNT(DISTINCT JOB)
FROM EMP;

--60} WAQTD NO of deptno present in emp table ?
SELECT COUNT(DISTINCT DEPTNO)
FROM EMP;

--61} WAQTD recently hired emp / last hired emp hiredate ?
SELECT MAX(HIREDATE)
FROM EMP;

--62} WAQTD first hired emp hiredate ?
SELECT MIN(HIREDATE)
FROM EMP;

--***********************************SINGLE-ROW-FUNCTION*********************************
SELECT LOWER('Pentagon')
FROM DUAL;

--63} WAQTD details of an emp if the emp name starts with 'M'?
SELECT *
FROM EMP
WHERE SUBSTR (ENAME, 1, 1) = 'M';

--64} WAQTD ENP NAME ,JOB IF THE EMP NAME  ENDS WITH 'R' ?
SELECT ENAME, JOB
FROM EMP 
WHERE SUBSTR(ENAME, -1, 1) = 'R'; 

--65} WAQTD   emp name , job and hiredate if the emp job starts with man or sal?
SELECT ENAME, JOB, HIREDATE
FROM EMP 
WHERE SUBSTR(JOB, 1, 3) IN ('MAN', 'SAL');

--66} WAQTD details of an emp if the emp name starts with M and second char is A?
SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 1, 2) = 'MA';

--67} WAQTD first half of the emp names in lower case 
SELECT ENAME, LOWER(SUBSTR(ENAME, 1, LENGTH(ENAME)/2)) "FIRST-HALF"
FROM EMP;

--68} WAQTD  to display second half in reverse format ?
SELECT ENAME, REVERSE(SUBSTR(ENAME, LENGTH(ENAME)/2 + 1 )) "SECOND_HALF_REV"
FROM EMP;

--69} WAQTD first half of the emp name in lower case and second half  in reverse format? 
SELECT ENAME, LOWER(SUBSTR(ENAME, 1, LENGTH(ENAME)/2)) || 
                REVERSE(SUBSTR(ENAME, LENGTH(ENAME)/2 + 1 )) "STR MODIFIED"
FROM EMP;

--70} WAQTD details of an emp if the emp name does not starts with M without using like oper?
SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) != 'M';

--71} WAQTD name, job, sal and comm given to all the emps if the emp name having 6 char
--and getting 4 dig sal ?
SELECT ENAME, JOB, SAL, COMM
FROM EMP
WHERE LENGTH(ENAME) = 6 AND LENGTH(SAL) = 4;
--WHERE (ENAME LIKE '______') AND (SAL LIKE '____'); UPPER ONE IS RECOMENDED

--72} WAQTD details of an emp if the emp name second last char is E?
SELECT *
FROM EMP
WHERE SUBSTR(ENAME, -2, 1) = 'E';

--##REPLACE FUNCTION##

--73} WAQTD no of times a particular char occured in a given string?
SELECT LENGTH('PENTAGON') - LENGTH(REPLACE('PENTAGON', 'N')) "Count of N"
FROM DUAL;

--74} WAQTD emp name if the emp name contains exactly one 'A' ?
SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) - LENGTH(REPLACE(ENAME, 'A')) = 1;

--75} WAQTD name, job and sal given to all the emps if the emp job contaisn exactly 2 S?
SELECT ENAME, JOB, SAL
FROM EMP
WHERE LENGTH(JOB) - LENGTH(REPLACE(JOB, 'S')) = 2;

SELECT INSTR('MACHHAMACHI' , 'H', 4, 2)
FROM DUAL;

--76}WAQTD details of an emp if the emp name contains atleast one 'A'?
SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A', 1, 1) > 0;

--77}WAQTD details of an emp if the emp name contains atleast two A in it ?
SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A', 1, 2) > 0;

--78}(HW)WAQTD details of an emp if the emp name contains exactly one A in it using inStr init 
SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A', 1, 1) > 0 AND INSTR(ENAME, 'A', 1, 2) = 0;

--78}SYSDATE/ CURRENT_DATE  display todays date 
SELECT SYSDATE "Todays Date"
FROM DUAL;

SELECT SYSTIMESTAMP
FROM DUAL;

--Subraction of days 

SELECT SYSDATE - TO_DATE('05-JAN-22') "SUBRACT"
FROM DUAL;

--##TO_CHAR FUNCTION##

SELECT TO_CHAR(SYSDATE, 'YEAR')
FROM DUAL;


--79}WAQTD details of an emp if the emp hired in the month of dec?
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'MON') = 'DEC'; 

--80}WAQTD NAME, job and hiredate if the emp were hired during the year 81?
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YY') = '81';

--81}WAQTD EMP NAME , HIREDATE IF THE EMP HIRED IN THE MONTH OF FEB, SEP AND 
--DEC?
SELECT ENAME, HIREDATE
FROM EMP
WHERE TO_CHAR(HIREDATE, 'MON') IN ('FEB', 'SEP', 'DEC');


--82}WAQTD details of an emp who were hired on 17th or 20th?
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'DD') IN ('17', '20');


--83}WAQTD emp name, job and hire date if the emp name doesnt starts with 's' and they where 
--hired on sunday friday or saturday
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE TO_CHAR(HIREDATE, 'DY') IN ('SUN', 'FRI', 'SAT') 
                AND SUBSTR(ENAME, 1, 1) != 'S';
                
-- 84}WAQTD all the emp hiredate in us(MM-DD-YYYY) format               
SELECT TO_CHAR(HIREDATE, 'MM-DD-YYYY')
FROM EMP;

--##NVL(NULL VALE LOGIC) FUNCTION##

--85}WAQTD ename, salary add with comm of all the emp ?         
SELECT  ENAME, SAL + NVL(COMM, 0) "SAL ADDED COMM"
FROM EMP;
                
--86}WAQTD MAX SAL GIVEN TO ALL THE EMP FROM EMP TABLE 
SELECT MAX(SAL)
FROM EMP;

--***********************************GROUP-BY CLAUSE *********************************
                
--87}WAQTD MAX SAL GIVEN TO ALL THE EMP IN EACH DEPT?
SELECT DEPTNO, MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

--88}WAQTD MIN SAL GIVEN TO ALL THE EMP IN EACH DEPT?
SELECT DEPTNO, MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

--89}WAQTD total sal needed to pay for all the emps in each job ?
SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB;

--90} WAQTD no of emps working as a manager in each dept ?
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO;

--91} WAQTD avg sal needed to pay for all the clerk and analyst in each dept ?
SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE JOB IN ('CLERK', 'ANALYST')
GROUP BY DEPTNO;

--92} WAQTD no of emps getting sal more than 1250 in each dept?
SELECT DEPTNO, COUNT(*)
FROM EMP
WHERE SAL > 1250
GROUP BY DEPTNO;

--93} WAQTD max sal, min sal , avg sal and total sal needed to pay for all the emps if the emp
--name contains  'A' in each dept ?
SELECT DEPTNO ,MAX(SAL), MIN(SAL), AVG(SAL), SUM(SAL)
FROM EMP 
WHERE ENAME LIKE '%A%'
GROUP BY DEPTNO;

--***********************************HAVING CLAUSE *********************************

--94} WAQTD MAXIMUM SAL GIVEN TO ALL THE EMPS IF THE EMP GETTING SAL
--MORE THAN 2000 AND MAXIMUM SAL LESS THAN 4200 IN EACH DEPT?
SELECT DEPTNO, MAX(SAL)
FROM EMP
WHERE SAL > 2000
GROUP BY DEPTNO
HAVING MAX(SAL) < 4200;

--95} WAQTD to display min sal given to all the manager in each dept if they are getting min 
--sal more than 500 
SELECT DEPTNO, MIN(SAL)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO
HAVING MIN(SAL) > 500;

--96} WAQTD avg sal needed to pay for all the analyst in each dept if they are getting avg sal
--more than2200?
SELECT DEPTNO, AVG(SAL)
FROM EMP
WHERE JOB = 'ANALYST'
GROUP BY DEPTNO
HAVING AVG(SAL) > 2200;

--97} WAQTD no of emps present in each job in which atleast 2 emps are working 
SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 2;

WAQTD max sal given to dept no 30 ?
SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = 30;

WAQTD avg sal given to all the emps if they were getting avg sal between 1250 and 
--3000 in each dept
SELECT AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) BETWEEN 1250 AND 3000;


WAQTD max comm and min comm given to all the salesman in each dept if they are getting 
sal more than1250?
SELECT MAX(COMM), MIN(COMM)
FROM EMP
WHERE JOB = 'SALESMAN' AND SAL > 1250
GROUP BY DEPTNO;


WAQTD no of emps working in each job except president in which 3 emps and at most 
6 emps were working ?
SELECT JOB, COUNT(*)
FROM EMP
WHERE JOB != 'PRESIDENT' 
GROUP BY JOB
HAVING COUNT(*) BETWEEN 3 AND 6;

WAQTD sal which are repeated/duplicated sal in emp table ?
SELECT SAL
FROM EMP
GROUP BY SAL
HAVING COUNT(*) > 1;

WAQTD hiredate of an emp if they were hired in same date ?
SELECT HIREDATE 
FROM EMP 
GROUP BY HIREDATE 
HAVING COUNT(*) > 1;

WAQTD no of emps getting same sal in same dept ?
SELECT COUNT(*), SAL, DEPTNO
FROM EMP
GROUP BY SAL, DEPTNO
HAVING COUNT(*) > 1;

WAQTD no of emps hired on same date into same department
SELECT COUNT(*)
FROM EMP
GROUP BY HIREDATE, DEPTNO
HAVING COUNT(*) > 1;

--WAQTD SAL of an emp in dec order from emp table?
SELECT SAL
FROM EMP
ORDER BY SAL DESC;


--***********************************SUB-QUERY *********************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
WAQTD details of an emp if the emp getting salary more than blake salary?
SELECT *
FROM EMP
WHERE SAL > (
SELECT SAL
FROM EMP 
WHERE ENAME = 'BLAKE');

--WAQTD details of an emp who where hired after miller?
SELECT *
FROM EMP
WHERE HIREDATE > 

(SELECT HIREDATE 
FROM EMP
WHERE ENAME = 'MILLER');

WAQTD name and job of an emp except manager if they were getting sal less than 'king'?
SELECT ENAME, JOB
FROM EMP 
WHERE JOB != 'MANAGER' AND SAL <
(
SELECT SAL
FROM EMP 
WHERE ENAME = 'KING');

WAQTD emp name and sal along with job if the emp is working as a 'salesman' and getting
commission and hired before turner?
SELECT ENAME, SAL, JOB
FROM EMP
WHERE JOB = 'SALESMAN' AND COMM IS NOT NULL AND HIREDATE < 

(
SELECT HIREDATE 
FROM EMP
WHERE ENAME = 'TURNER');

WAQTD name and job of an emp if they where working in same job as allen job??
SELECT ENAME, JOB
FROM EMP
WHERE JOB = 
(
SELECT JOB 
FROM EMP
WHERE ENAME = 'ALLEN');

WAQTD no of emps working in same dept as turner dept?
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM EMP
WHERE ENAME = 'TURNER'
);

WAQTD details of an emp who were working as a 'manager' and getting sal more than smit
sal?
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND SAL > 
(
SELECT SAL
FROM EMP
WHERE ENAME = 'SMITH'
);

WAQTD ename, sal and comm given to all the emps if the emp getting sal more than clark
sal and the name contains atleast one 'A' and there were getting 4 digits of sal  ??
SELECT ENAME, SAL, COMM
FROM EMP
WHERE ENAME LIKE '%A%' AND SAL LIKE '____' AND SAL > 
(
SELECT SAL 
FROM EMP 
WHERE ENAME = 'CLARK'
);

WAQTD details of an emp if an emp getting sal more than miller but less than scott?
SELECT *
FROM EMP 
WHERE SAL BETWEEN  
(
SELECT SAL+1
FROM EMP
WHERE ENAME = 'MILLER'
)
AND
(
SELECT SAL-1
FROM EMP
WHERE ENAME = 'SCOTT'
);


WAQTD Details of an emp if the emp hired after 'allen' but before 'james'?
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN
(
SELECT HIREDATE 
FROM EMP
WHERE ENAME = 'ALLEN'
)+1
AND
(
SELECT HIREDATE 
FROM EMP
WHERE ENAME = 'JAMES'
)-1;


WAQTD Details of an emp if the emp hired after 81 but before 'clark'?
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-81' AND HIREDATE <
(
SELECT HIREDATE
FROM EMP
WHERE ENAME = 'CLARK'
);


--CASE 2


--WAQTD DEPT NAME OF BLAKE ?            
SELECT DNAME
FROM DEPT
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM EMP
WHERE ENAME = 'BLAKE'
);


WAQTD location name of miller?
SELECT LOC
FROM DEPT
WHERE DEPTNO = 
(
SELECT DEPTNO 
FROM EMP
WHERE ENAME = 'MILLER'
);

WAQTD NO of emps working in sales dept?
SELECT COUNT(*)
FROM EMP 
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'SALES'
);


-->WATD DETAILS OF AN EMP WHO WERE WORKING IN CHICAGO LOC?
SELECT *
FROM EMP
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM DEPT
WHERE LOC = 'CHICAGO'
);

WAQTD dept name and loc of all the emps working as a president?
SELECT DNAME, LOC 
FROM DEPT
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM EMP
WHERE JOB = 'PRESIDENT'
);

WAQTD details of an emp who were working in accounting dept?
SELECT *
FROM EMP
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'ACCOUNTING'
);

WAQTD details of an emp who were working in accounting or sales dept?
SELECT *
FROM EMP
WHERE DEPTNO IN 
(
SELECT DEPTNO
FROM DEPT
WHERE DNAME IN ('ACCOUNTING', 'SALES')
);


WAQTD details of an emp who where working in chicago or newyour location ??
SELECT *
FROM EMP
WHERE DEPTNO IN 
(
SELECT DEPTNO
FROM DEPT
WHERE LOC IN ('CHICAGO', 'NEW YORK')
);


WAQTD details of an emp who were working in sales dept getting sal more than smith?
SELECT *
FROM EMP
WHERE SAL > 
(
SELECT SAL
FROM EMP
WHERE ENAME = 'SMITH'
)
AND DEPTNO = 
(
SELECT DEPTNO
FROM DEPT
WHERE DNAME = 'SALES'
);

WAQTD no of emps working in blake dept and they were belongs to accounting and
reaearch dept?
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO = 
(
SELECT DEPTNO
FROM EMP
WHERE ENAME = 'BLAKE')
AND DEPTNO IN 
(
SELECT DEPTNO
FROM DEPT
WHERE DNAME IN ('ACCOUNTING', 'RESEARCH'));


WAQTD dept name of an emp if the emp is hired after allen and working in chicago, dallas, 
boston?
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN 
(
SELECT DEPTNO 
FROM EMP 
WHERE HIREDATE > 
(SELECT HIREDATE
FROM EMP
WHERE ENAME = 'ALLEN') 
)AND
LOC IN ('CHICAGO', 'DALLAS', 'BOSTON');


WAQTD details of an emp who were getting sal more than smith but less than scott and 
working in sales, accounting or research dept ?
SELECT *
FROM EMP 
WHERE SAL BETWEEN
(SELECT SAL
FROM EMP
WHERE ENAME = 'SMITH')+1
AND 
(SELECT SAL 
FROM EMP
WHERE ENAME = 'SCOTT')-1 AND DEPTNO IN 
(SELECT DEPTNO
FROM DEPT
WHERE DNAME IN ('SALES', 'ACCOUNTING', 'RESEARCH')
);

--(**Important**)WAQTD dept name in which atleast 3 salesmans are working?
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN
(SELECT DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO
HAVING COUNT(*) >= 3);

--WAQTD details of an emp who were getting sal more than miller sal?
SELECT *
FROM EMP
WHERE SAL > 
(SELECT SAL
FROM EMP
WHERE ENAME = 'MILLER');

--*****************************ALL OPERATOR**********************************************
WAQTD details of an emp who were getting sal more than salesman ?
SELECT *
FROM EMP
WHERE SAL >
ALL(SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN' );
--OR
SELECT *
FROM EMP
WHERE SAL >
(SELECT MAX(SAL)
FROM EMP
WHERE JOB = 'SALESMAN' );

WAQTD details of an emp who were getting sal more than any of the clerk
SELECT *
FROM EMP
WHERE SAL >
ANY(SELECT SAL
FROM EMP 
WHERE JOB = 'CLERK') AND 
JOB != 'CLERK';
--OR
SELECT *
FROM EMP
WHERE SAL >
(SELECT MIN(SAL)
FROM EMP 
WHERE JOB = 'CLERK')AND JOB != 'CLERK';

WAQTD NAME, JOB AND SAL given to all the emps if the emp getting sal more than
martin and working in chicago or boston as a salesman or manager or analyst ??
SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL > 
(SELECT SAL
FROM EMP
WHERE ENAME = 'MARTIN') AND DEPTNO IN 
(SELECT DEPTNO
FROM DEPT
WHERE LOC IN ('CHICAGO', 'BOSTON')
) AND JOB IN ('SALESMAN', 'MANAGER', 'ANALYST');

WAQTD loc in which atleast two analyst were working?
SELECT LOC 
FROM DEPT
WHERE DEPTNO IN
(SELECT DEPTNO
FROM EMP
WHERE JOB = 'ANALYST'
GROUP BY DEPTNO
HAVING COUNT(*) >= 2);


--WAQTD dept name in which atleast 4 emp are working and atmost 6 employes are working ?
SELECT DNAME 
FROM DEPT
WHERE DEPTNO IN 
(SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) BETWEEN 4 AND 6);

--WAQTD first max sal ??
SELECT MAX(SAL)
FROM EMP;

--WAQTD details of an emp who were getting first max sal ?
SELECT *
FROM EMP
WHERE SAL = 
(SELECT MAX(SAL) 
FROM EMP);

WAQTD third max sal given to all the emp ??
SELECT MAX(SAL)
FROM EMP
WHERE SAL < 
(SELECT MAX(SAL)
FROM EMP
WHERE SAL < 
(SELECT MAX(SAL)
FROM EMP));


WAQTD 4th min sal given to all the emp?
SELECT MIN(SAL)
FROM EMP
WHERE SAL > 
(SELECT MIN(SAL)
FROM EMP
WHERE SAL > 
(SELECT MIN(SAL)
FROM EMP
WHERE SAL>
(SELECT MIN(SAL)
FROM EMP)));


WAQTD 8th max sal given to all the emps ?





WAQTD NAME of blake manager ?
SELECT ENAME 
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP 
WHERE ENAME = 'BLAKE');


WAQTD smith manager details ??
SELECT *
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH');



WAQTD details of president manager ?
SELECT *
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE JOB = 'PRESIDENT');


WAQTD dept name of turner manager ?
SELECT DNAME
FROM DEPT
WHERE DEPTNO = 
(SELECT DEPTNO
FROM EMP 
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE ENAME = 'TURNER'));

WAQTD loc name of clerk manager ?
SELECT LOC
FROM DEPT
WHERE DEPTNO IN
(SELECT DEPTNO
FROM EMP
WHERE EMPNO IN
(SELECT MGR
FROM EMP
WHERE JOB = 'CLERK'));


WAQTD details of smith managers manager?
SELECT *
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE ENAME = 'SMITH'));


WAQTD dept details of turner managers manager dept details?
SELECT *
FROM DEPT
WHERE DEPTNO = 
(SELECT DEPTNO
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE ENAME = 'TURNER')));

--**** Assignment*****
--WAQTD miller managers managers manager name ?
SELECT ENAME 
FROM EMP
WHERE EMPNO = 
(SELECT MGR 
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE EMPNO = 
(SELECT MGR
FROM EMP
WHERE ENAME = 'MILLER')));


--TYPE2 (REPORTING)
--WAQTD number of emps reporting to blake ?  
SELECT COUNT(*)
FROM EMP
WHERE MGR = 
(SELECT EMPNO
FROM EMP 
WHERE ENAME = 'BLAKE');


-->WAQTD details of an emp who is reporting to king?
SELECT *
FROM EMP
WHERE MGR =
(SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING');


WAQTD dept name of an emp who were reporting to analyst?
SELECT DNAME 
FROM DEPT
WHERE DEPTNO IN
(SELECT DEPTNO
FROM EMP
WHERE MGR IN 
(SELECT EMPNO
FROM EMP
WHERE JOB = 'ANALYST'));


--WAQTD name of an emp who were reporting to blake manager?
SELECT ENAME 
FROM EMP
WHERE MGR =
(SELECT MGR 
FROM EMP
WHERE ENAME = 'BLAKE');


WAQTD dept name of an emp who were reporting to turners manager 
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN
(SELECT DEPTNO
FROM EMP
WHERE MGR IN
(SELECT MGR
FROM EMP
WHERE ENAME = 'TURNER'));

WAQTD name of an emp who were acting as a reporting manager ?
SELECT ENAME 
FROM EMP
WHERE EMPNO IN
(SELECT MGR
FROM EMP);

WAQTD name of an emp who where not acting as a reporting manager ?
SELECT ENAME 
FROM EMP
WHERE EMPNO NOT IN 
(SELECT MGR 
FROM EMP
WHERE MGR IS NOT NULL);


WAQTD name of an emp who were having atleast 3 reporters ?
SELECT ENAME 
FROM EMP
WHERE EMPNO IN 
(SELECT MGR
FROM EMP
GROUP BY MGR 
HAVING COUNT(*) >= 3);


WAQTD details of an emp who were having one reporting and atmost 2 reportings ?
SELECT *
FROM EMP 
WHERE EMPNO IN
(SELECT MGR
FROM EMP 
GROUP BY MGR
HAVING COUNT(*) BETWEEN 1 AND 2);


-->WAQTD dept name of an emp who were having atleast 4 reportings ? 
SELECT DNAME 
FROM DEPT
WHERE DEPTNO = 
(SELECT DEPTNO
FROM EMP
WHERE EMPNO IN 
(SELECT MGR
FROM EMP
GROUP BY MGR
HAVING COUNT(*) >= 4));


-->WAQTD no of emps directly reporting to king ?
SELECT COUNT(*)
FROM EMP
WHERE MGR = 
(SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING');


WAQTD no of emps who were in-directly reporting to king ?

SELECT ENAME 
FROM EMP
WHERE MGR IN
(SELECT EMPNO
FROM EMP                          --Intermediate (Indirectly)
WHERE MGR IN
(SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING'));


--********************************Psudo Concept**********************************************

SELECT ROWID, EMP.*
FROM EMP;


SELECT ROWNUM, EMP.*
FROM EMP;


--WAQTD top 5 rec from emp tables ??
SELECT ROWNUM, EMP.* 
FROM EMP
WHERE ROWNUM < 6;

-->WAQTD top 3 rec from emp table ??
SELECT ROWNUM, EMP.*
FROM EMP
WHERE ROWNUM <= 3;

-->WAQTD top 10 rec from emp table ?
SELECT ROWNUM, EMP.*
FROM EMP
WHERE ROWNUM <= 10;

-->WAQTD first rec from emp table ?
SELECT ROWNUM, EMP.*
FROM EMP
WHERE ROWNUM = 1;


--> WAQTD first rec from emp table ?
SELECT *
FROM 
(SELECT ROWNUM "SLNO", EMP.*
FROM EMP)
WHERE SLNO = 2;



--> WAQTD 10TH rec from emp table ?
SELECT *
FROM 
(SELECT ROWNUM "SLNO", EMP.*
FROM EMP)
WHERE SLNO = 10;



--> WAQTD 8TH rec from emp table ?
SELECT *
FROM 
(SELECT ROWNUM "SLNO", EMP.*
FROM EMP)
WHERE SLNO = 8;


-->WAQTD FIRST FIVE REC FROM EMP TABLE 
SELECT *
FROM EMP
WHERE ROWNUM < 6;


-->WAQTD last five rec from emp table ?
SELECT *
FROM
(SELECT ROWNUM "SLNO", EMP.*
FROM EMP)
WHERE SLNO > 
(SELECT COUNT(*) -5
FROM EMP);

-->WAQTD last 10 rec from emp table  ??
SELECT *
FROM 
(SELECT ROWNUM "SLNO", EMP.*
FROM EMP)
WHERE SLNO >
(SELECT COUNT(*) - 10
FROM EMP);


-->WAQTD 8th min sal given to all the emps?
SELECT *
FROM
(SELECT ROWNUM "SLNO", SAL
FROM 
(SELECT DISTINCT SAL
FROM EMP
ORDER BY SAL ASC))
WHERE SLNO = 8;

--********************************INNER JOIN**********************************************

--> WAQTD  emp name and their dept name from emp and dept table ?
--ANSII
SELECT ENAME, DNAME
FROM EMP INNER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;
--ORACLE
SELECT ENAME, DNAME 
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;


--WAQTD emp name and dept details of an emp if the emp is working in chicago or dallas
--ANCII
SELECT ENAME, DEPT.*
FROM EMP INNER JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.LOC IN ('CHICAGO', 'DALLAS');
--ORACLE 
SELECT ENAME, DEPT.*
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND 
            DEPT.LOC IN ('CHICAGO', 'DALLAS');


-->WAQTD ename, job and sal along with dept name and loc if the emp is working as a 
salesman or analyst and getting sal more than 1250 and working in a accounting or sales
dept 
SELECT ENAME, JOB, SAL, DEPT.DNAME, DEPT.LOC
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND 
JOB IN ('SALESMAN', 'ANALYST') AND SAL >1250 AND 
DNAME IN ('ACCOUNTING', 'SALES');   

--********************************OUTER JOIN**********************************************
-->WAQTD emp name and dept name if the emp working in some dept or not ??
--ANSI
SELECT ENAME, DNAME 
FROM EMP LEFT OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;
--ORACLE
SELECT ENAME, DNAME 
FROM EMP, DEPT 
WHERE EMP.DEPTNO = DEPT.DEPTNO (+);


-->WAQTD ename and dname if the dept have some emp working in it or not ?
--ANSI
SELECT ENAME, DNAME 
FROM EMP RIGHT OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;
--ORACLE
SELECT ENAME, DNAME 
FROM EMP, DEPT 
WHERE EMP.DEPTNO (+)= DEPT.DEPTNO;

-->WAQTD emp name and dept name if the emp is not working in any dept ??
--ANSI
SELECT ENAME, DNAME 
FROM EMP LEFT OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.DNAME = NULL;
--ORACLE
SELECT ENAME, DNAME 
FROM EMP, DEPT 
WHERE EMP.DEPTNO = DEPT.DEPTNO (+) AND
DEPT.DNAME IS NULL;

-->WAQTD emp name and dept name if the dept does not have any emp working in it ?
--ANSI
SELECT ENAME , DNAME
FROM EMP RIGHT OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE EMP.ENAME IS NULL;

SELECT ENAME , DNAME
FROM EMP, DEPT 
WHERE EMP.DEPTNO(+) = DEPT.DEPTNO AND 
EMP.ENAME IS NULL;

WAQTD emp details along with dept details irrespective of emps working in a dept and 
irrespective of dept contains emp?
SELECT EMP.*, DEPT.*
FROM EMP FULL OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;

--********************************OUTER JOIN**********************************************
-->WAQTD emp name, sal along with manager name with sal ?
--ANSI
SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL 
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;
--ORACLE
SELECT E1.ENAME, E1.SAL, E2.ENAME, E2.SAL 
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO;


-->WAQTD emp name, job, sal and commission along with mgr name, sal from emp table 
if the emp is getting sal more than 1250
--ANSI
SELECT E1.ENAME, E1.JOB, E1.SAL, E1.COMM, E2.ENAME, E2.SAL
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.SAL > 1250;
--ORACLE
SELECT E1.ENAME, E1.JOB, E1.SAL, E1.COMM, E2.ENAME, E2.SAL
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND 
E1.SAL > 1250;

-->WAQTD emp details along with mgr job if the mgr is working as a analyst ????
--ANSI
SELECT E1.*, E2.JOB
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.JOB = 'ANALYST';

--ORACLE
SELECT E1.*, E2.JOB
FROM EMP E1, EMP E2
WHERE  E1.MGR = E2.EMPNO AND 
E2.JOB = 'ANALYST';

WAQTD emp name and comm along with mgr name if the emp is getting comm and the 
mgr is not getting any comm?
SELECT  E1.ENAME, E1.COMM, E2.ENAME "MGR_NAME"
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.COMM IS NOT NULL AND E2.COMM IS NULL;

WAQTD emp name , comm, hiredate, along with mgr hiredate if the emp hired after 86
but the mgr hired before 85?
SELECT E1.ENAME,  E1.COMM, E1.HIREDATE, E2.HIREDATE 
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.HIREDATE > '31-DEC-86' AND
E2.HIREDATE < '01-JAN-85'; 


WAQTD empname , hiredate along with manager name and hiredate if the emp were 
hired after manager ?
SELECT E1.ENAME, E1.HIREDATE, E2.ENAME, E2.HIREDATE
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.HIREDATE > E2.HIREDATE;


WAQTD emp name , job and dept no along with his manager name and job if the emp
is working as a clerk or salesman in dept no 20 or 30 and manager is working as actual 
'manager' 

SELECT E1.ENAME, E1.JOB, E1.DEPTNO, E2.ENAME, E2.JOB 
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E1.JOB IN ('CLERK', 'SALESMAN') AND E1.DEPTNO IN (20, 30) AND
E2.JOB = 'MANAGER';

WAQTD emp name along with his manager name?
SELECT E1.ENAME, E2.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;

WAQTD emp name along with his manager name along with employees deptname?
--ORACLE
SELECT E1.ENAME, E2.ENAME, D1.DNAME
FROM EMP E1, EMP E2, DEPT D1
WHERE E1.MGR = E2.EMPNO AND E1.DEPTNO = D1.DEPTNO;
 

--ANSII
SELECT E1.ENAME, E2.ENAME, D1.DNAME
FROM EMP E1 JOIN EMP E2 
ON E1.MGR = E2.EMPNO INNER JOIN DEPT D1
ON E1.DEPTNO = D1.DEPTNO;

WAQTD emp name along with his manager name along with dept deptname?
SELECT E1.ENAME, E2.ENAME, D1.DNAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO INNER JOIN DEPT D1
ON E2.DEPTNO = D1.DEPTNO;

--1642} WAQTD emp name along with his manager name along with their deptname?
--ANSII
SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.DNAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO INNER JOIN DEPT D1
ON E1.DEPTNO = D1.DEPTNO INNER JOIN DEPT D2
ON E2.DEPTNO = D2.DEPTNO;
--ORACLE
SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.DNAME
FROM EMP E1, EMP E2, DEPT D1, DEPT D2
WHERE E1.MGR = E2.EMPNO AND E1.DEPTNO = D1.DEPTNO AND 
E2.DEPTNO = D2.DEPTNO ;

WAQTD emp name, manager name along with managers manager name ?
SELECT E1.ENAME, E2.ENAME, E3.ENAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO JOIN EMP E3
ON E2.MGR = E3.EMPNO;

WAQTD emp name, manager name and managers manager name along with their
deptnames?
SELECT E1.ENAME, D1.DNAME, E2.ENAME, D2.DNAME, E3.ENAME, D3.DNAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO JOIN EMP E3
ON E2.MGR = E3.EMPNO JOIN DEPT D1
ON D1.DEPTNO = E1.DEPTNO JOIN DEPT D2
ON D2.DEPTNO = E2.DEPTNO JOIN DEPT D3
ON D3.DEPTNO = E3.DEPTNO;

WAQTD emp name, job and his dept name along with managers name, job if the emp is 
working as a salesman or clerk in research or accounting dept ?
SELECT E1.ENAME, E1.JOB, D1.DNAME, E2.ENAME, E2.JOB
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO INNER JOIN DEPT D1
ON E1.DEPTNO = D1.DEPTNO 
WHERE E1.JOB IN ('SALESMAN', 'CLERK') AND 
D1.DNAME IN ('RESEARCH', 'ACCOUNTING');

WAQTD to disp no of emp reporting to king ?
--SUB-QUERY
SELECT COUNT(*)
FROM EMP
WHERE MGR = 
(SELECT EMPNO
FROM EMP
WHERE ENAME = 'KING');

--JOINS
SELECT COUNT(*)
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO
WHERE E2.ENAME = 'KING';

WAQTD no of emps working in chicago ?
--SUBQUERY
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO IN
(SELECT DEPTNO
FROM DEPT
WHERE LOC = 'CHICAGO');
--JOIN
SELECT COUNT(*)
FROM EMP E1 INNER JOIN DEPT D1
ON E1.DEPTNO = D1.DEPTNO
WHERE D1.LOC = 'CHICAGO';

WAQTD dept name of blake manager?
--SUBQUERY
SELECT DNAME
FROM DEPT
WHERE DEPTNO = 
(SELECT DEPTNO 
FROM EMP
WHERE EMPNO = 
(SELECT MGR 
FROM EMP
WHERE ENAME = 'BLAKE'));
--JOIN
SELECT D1.DNAME
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO INNER JOIN DEPT D1
ON E2.DEPTNO = D1.DEPTNO 
WHERE E1.ENAME = 'BLAKE';

WAQTD emp name and sal if they are getting same sal ?
SELECT ENAME, SAL
FROM EMP
WHERE SAL = 
(SELECT SAL
FROM EMP);

SELECT E1.ENAME, E1.SAL
FROM EMP E1 JOIN EMP E2
ON E1.SAL = E2.SAL;

WAQTD emp name if the emps having same reporting manager?

SELECT DISTINCT E1.ENAME, E1.MGR
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.MGR
WHERE E1.EMPNO != E2.EMPNO;

3rd max sal using joins 
SELECT MAX(E1.SAL)
FROM EMP E1 JOIN EMP E2
ON E1.SAL < E2.SAL JOIN EMP E3
ON E2.SAL < E3.SAL;













--#########################################################################
