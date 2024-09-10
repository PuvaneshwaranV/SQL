use pratice;
CREATE TABLE employee (
emp_id INT PRIMARY KEY,
ename VARCHAR(30),
job_desc VARCHAR(20),
salary INT );

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000);
INSERT INTO employee VALUES(3,'George','SALES',2000000);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000);
INSERT INTO employee VALUES(5,'Meena','HR',2000000);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000);
SELECT * FROM employee
where ename="Raghu";

select * from employee;

select * from employee where salary>1900000 AND  (job_desc="MANAGER" OR job_desc="HR");
select * from employee  GROUP BY MAX(salary);
select * from employee where MAX(salary);
alter table employee add column hiredate date;
SET SQL_SAFE_UPDATES = 0;
update employee set hiredate="2004-01-26" where job_desc="HR";
SET SQL_SAFE_UPDATES = 1;
desc employee;
update employee set hiredate="2006-10-12" where ename LIKE 'A%' AND job_desc="HR";
SELECT UCASE(ename),salary FROM employee; 
SELECT ename,LEFT(job_desc,4) job_desc FROM employee order by job_desc,ename desc;
select job_desc,count(job_desc) from employee where count(job_desc)>1 group by job_desc; 
select job_desc,count(job_desc) from employee where salary>1900000 group by job_desc having count(job_desc)>1  order by job_desc;