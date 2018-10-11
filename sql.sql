Select department_id,location_id from departments;

SELECT last_name,salary
FROm employees
WHERE salary BETWEEN 12000 AND 15000;

SELECT Last_name,salary ,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-1999' AND '01-JAN-2000';
SELECT LAst_name,Salary,COmmission_PCT
FROm employees
WHERE last_name BETWEEN'King' AND 'Smith'
AND COmmission_PCT IS NOT NUll;

-- USE Of IN ,LIKE and IS
SELECT Last_name,salary ,Hire_date,COmmission_pct
FROm employees 
WHERE Salary IN(13500,9000,7000,8000,8400)
AND COMMISSION_PCT IS NOT NUll;

SELECT Last_name,salary ,Hire_date,COmmission_pct,HIRE_DATE
FROm employees 
WHERE Salary NOT IN(13500,9000,7000,8000,8400)
AND COMMISSION_PCT IS NOT NUll
AND Hire_DATE BETWEEN '01-JAN-1990' AND '1-JAN-2001';

-- Like Operator\
SELECT FIrst_name,salary
FROM employees
WHERE LOWER(first_name) LIKE 'st%';

SELECT LAst_name,salary 
FROm employees
WHERE last_name LIKE '__t%';

SELECT LAst_name,salary 
FROm employees
WHERE last_name LIKE '%t_'
AND LoWER(last_name) LiKE '_m%';


--Using Of IS operator
SELECt Last_name ,salary ,Commission_pCT,Manager_id
FROm Employees
WHERE /*Manager_id*/ COMMISSION_PCT Is NOT Null;

--  Using of AND ,OR And NOT Logical Operator

SELECT Last_Name,salary ,Commission_pct ,manager_id,Job_id
FROm employees
WHERE salary Between 1000 ANd 15000
ANd Lower(Job_id) LIKE '%man'
AND Commission_pct Is NoT Null
OR manager_id =101;

SELECT Last_name,Job_id
FROm employees
WHERE Job_id NOT IN ('IT_PROG','ST_CLERK','SA_REP','SH_CLERK','ST_MAN','SA_MAN');

SELECT Last_name,JOB_id
FROm employees
WHERE Job_Id='SA_REP'
OR JOB_ID='AD_PRES'
AND salary >15000;

SELECT Last_name,JOB_id
FROm employees
WHERE (Job_Id='SA_REP'
OR JOB_ID='AD_PRES')
AND salary >15000;

SELECT Last_name,JOB_id,salary
FROm employees
WHERE (Job_Id='SA_REP'
OR JOB_ID='AD_PRES');

SELECT Last_Name ,salary ,HIRE_DATE
FROm employees
ORDER By salary DESC;


SELECT Last_Name ,salary ,HIRE_DATE
FROm employees
ORDER By salary ,HIRE_DaTE;

SELECt FIRST_NAME|| ' ' || LAsT_NAME NAME ,SALARY tk 
FROM employees
ORDER By tk;

SELECT SYSDATE
FROm DUAL;

SELECT Employee_id,Last_name,salary ,Job_id
FRom employees
WHere job_id LiKE '%ST%';

SELECT employee_id,Last_Name,job_id,department_id,Hire_date,salary
From employees
Order By department_id,salary DESC;

-- Using Of Ampersand Substitution Variable

SELECT Employee_id,last_name,department_id ,salary
FROm Employees
Where employee_id = &employee_num;

SELECT Last_name,salary ,salary*12 Anual_salary
FROM &Tab_name_here
Where &Condition_here = &Condition_Value_here;

SELECT &first_cul_name,&second_CUL_name,&third_cul_name
FROm &Table_name_here
Where &condition_here = &condition_value_here
Order By &order_by_value;

SELECT last_name,department_id,job_id
FROM employees
Where lower(job_id)= '&job_id_Value_here';

/*SELECT employee_id,last_name,job_id,&&colum_name
From employees
Where &colum_name = &value
Order By &colum_name;*/

SELECT UPPER(last_name|| ' ' ||First_name)"Full Name",salary,LOWER(job_id)Job,INITCAp(email)Mail_id
FROM Employees;

DESC Employees;

SELECT Last_name,salary,job_id
FROm employees
WHERE LOWER(last_name)='smith';

--Using Of Character Manipulation Function

SELECT CONCAT(First_name,Last_name),salary
FROm employees;

SELECT last_name,SUBSTR(last_name ,1,3),salary 
From employees;

SELECT LOWER(INSTR(last_name,'s'))fName,salary
FROM employees
WHERE LAST_NAME iS NOt NUll;

SELECt Last_name, LENGTH(Last_name)A,LENGTH(First_name)B,salary
FROm employees;

-- Using of LPAD and RPAD
SELECT last_name,LPAD(salary,10,'.')
FROm employees;

SELECT Rpad(last_name,10,'.'),salary
FROm employees;

-- Using Of Number Function  ROUND,TRUNCT and MOD

SELECT last_name,salary,commission_pct,ROUND(salary/Commission_pct,2),(salary/Commission_pct)
FROm employees
WHERE CoMMISSIOn_pct IS NOT NUll;

SELECT last_name,salary,COMMISSION_PCT,TRUNC(salary/Commission_pct,2),(salary/Commission_pct)
FROm employees
WHERE Commission_PCT IS NOT NULL;

SELECT LAst_name,salary,COMMiSSION_PCT,MOD(salary,5000)
from employees
WHERE COMMISSION_pct IS NOT NULL;

--27-10-2018

-- Working with date

SELECT last_name,Hire_date
FROm employees
Where Hire_date <'01-FEB-88';

SELECT LAST_NAME,TRUNC((sysdate-Hire_date)/365) As Year,hire_date
FROm employees
Where department_id =50;

-- MONTHS BETWEEN
SELECT last_name,hire_date,TRUNC(MONTHS_BETWEEN(sysdate,hire_date))
from employees;

-- ADD MONTHS
SELECT last_name,Hire_date,ADD_MONTHS(hire_date,6)
FROm employees;

SELECT LAst_name, Hire_date,Next_day(Hire_date,'FRIDAY'),Last_day(Hire_date)
FROM Employees;

SELECT last_name,TO_CHAR(HIRE_date,'day MONTH year')
FROm Employees;

SELECT last_name,TO_CHAR(HIRE_date,'dd MM yyyy')
FROm Employees;

SELECT last_name,HIRE_date,TO_CHAR(Hire_date,'fmdd mm yyyysp ')
FROm Employees;
SELECT last_name,Hire_date,To_CHAR(Hire_date,'Day Month YEAR')
FROm employees;

SELECT last_name,salary,TO_char(salary,'$99,999.00')
FROm employees;  

--   02/10/2018

SELECT LAst_name,salary,NVL(COmmission_pct,0)
FROm employees;

SELECT last_name,salary,(commission_pct*salary)
FROm employees;

SELECT last_name,salary,nvl(commission_pct,0),(salary*12)+(salary
*12*NVL(commission_pct,0)) Anual_Salary
FROm employees;

SELECT last_name,salary,(salary*12*NVL(commission_pct,0 )) Anual_commission,COmmission_pct
from employees;

SELECT last_name,salary,commission_pct,nvl2(commission_pct,'sal+comm','sal') income
from employees;

-- Using CASE EXPRESSION 

SELECT Last_name,job_id,salary,
       ( CASE job_id WHEN 'IT_PROG' THEN 1.10*SALARY
                    WHEN 'ST_CLERK' THEN 1.15*salary
                    WHEN 'SA_REP' THEN 1.25*salary
                    ELSE salary
        END) "Revised Salary"
FROm employees;

SELECT last_name,salary,
        (CASE WHEN salary<5000 THEN 'LOW SALARY'
            WHEN salary<10000 THEN 'MEDIUM SALARY'
            WHEN salary <20000 THEN 'GOOD SALARY'
        ELSE 'EXCELENT'
        END ) "SALARY_STATUS"
FROM EMployees;

--06/10/2018

--GROUP Function

SELECT ROUND(AVG(salary)),MAX(SALARY),MIN(SALARY),SUM(SALARY)
FROm EMPLOYEES
WHERE job_id LIKE '%REP%';

SELECT SQRT(32) FROm dual;

SELECT COUNT(last_name),COUNT(salary),COUNT(employee_id),count(commission_pct)
FROm employees
where department_id =60;
SELECT count(DISTINCT(department_id))
from employees;

SELECT department_id,ROUND(avg(salary))
from employees
group by department_id;

SELECT department_id,job_id,manager_id,SUM(salary)
FROm employees
WHERE department_id>40
GROUP by department_id,job_id,manager_id
order by department_id;


--10-10-2018

--USE  OF HAVING

select DEPARTMENT_ID,MAX(SALARY)
from EMPLOYEES
gROUP BY DEPARTMENT_ID
HAVING MAX(salary)>10000;


SELECT DEPARTMENT_ID,ROUND(AVG(SALARY))
FROM employees
GROUP BY DEPARTMENT_id
HAVING MAX(salary)>10000
ORDER BY 2 DESC;

SELECT JOB_ID ,SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID NOT LIKE '%REP%'
GROUP By JOB_ID
HAVING SUM(salary)>13000
ORDER BY 2;


-- Using Join
-- Natural Join

SELECT distinct(department_id),department_name
FROm Employees Natural Join departments
order by 1;

SELECT DISTINCT(department_id),(department_name),city
FROm employees Natural JOIN departments Natural Join locations;

-- Using Natural Join(Using)
SELECT *--last_name,department_name
FROm employees JOIN departments 
USING (DEPARTMENT_ID );


SELECT table_name FROM ALL_TABLES	;
DESC JOBS;

--COMMING On Clause 
-------------------------------------------
SELECT * FROM user_tables;
SELECT * FROM all_users;
SELECT * from dba_users;
SELECT * FROM INFORMATION_SCHEMA.TABLES;
select * from sys.tables;
--------------------------------------------


