create schema COMPANY;


create table company.EMPLOYEE ( 
Fname varchar(15) NOT NULL,
Minit char , Lname varchar(15) NOT NULL,
Ssn char(9) not null,
Bdate DATE ,
Address VARCHAR(30),
Sex char,
Salary decimal(10,2),
Super_ssn CHAR(9),
Dno int not null);

create table company.department(
Dname VARCHAR(15) NOT NULL,
Dnumber INT NOT NULL,
Mgr_ssn CHAR(9) NOT NULL,
Mgr_start_date DATE,
unique(Dname));



SELECT CURDATE();

create table Company.dept_locations(
Dnumber INT NOT NULL,
Dlocation VARCHAR(20) NOT NULL);


create table company.project(
pname VARCHAR(15) NOT NULL,
pnumber INT NOT NULL,
plocation VARCHAR(15),
Dnum INT NOT NULL,
unique(pname));

create table company.works_on(
Essn CHAR(9) NOT NULL,
Pno INT not null,
Hours DECIMAL(3,1) NOT NULL);


create table company.dependent(
Essn CHAR(9) NOT NULL,
dependent_name VARCHAR(15) NOT NULL,
Sex CHAR ,
Bdate DATE,
Relationship VARCHAR(8) );



alter table company.employee
add constraint EMPPK
primary key(ssn);

ALTER TABLE COMPANY.EMPLOYEE
ADD CONSTRAINT EMPSUPERFK
FOREIGN KEY (Super_ssn) REFERENCES COMPANY.EMPLOYEE(Ssn)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE COMPANY.EMPLOYEE ALTER Dno SET DEFAULT 1;


alter table company.department
add constraint DEPTPK
PRIMARY KEY(Dnumber);



ALTER TABLE COMPANY.EMPLOYEE
ADD CONSTRAINT EMPDEPTFK
FOREIGN KEY (DNO) REFERENCES COMPANY.DEPARTMENT(dnumber)
ON DELETE SET DEFAULT
ON UPDATE CASCADE;

ALTER TABLE COMPANY.DEPARTMENT ALTER MGR_SSN SET default 888665555;

alter table company.department
add constraint DEPTMGRFK
FOREIGN KEY(MGR_SSN) REFERENCES COMPANY.EMPLOYEE(SSN)
ON DELETE SET DEFAULT
ON UPDATE CASCADE;


ALTER TABLE COMPANY.DEPT_LOCATIONS 
ADD CONSTRAINT
PRIMARY KEY(DLOCATION,DNUMBER);

ALTER TABLE COMPANY.DEPT_LOCATIONS
ADD CONSTRAINT
foreign key(dnumber) references company.department(dnumber)
on delete cascade
on update CASCADE;

ALTER TABLE COMPANY.PROJECT 
ADD CONSTRAINT
PRIMARY KEY(pnumber);

alter table company.project
add constraint
foreign key(dnum) references company.department(dnumber);

alter table company.works_on
add constraint
primary key(essn,pno);

ALTER TABLE COMPANY.WORKS_ON
ADD CONSTRAINT
FOREIGN KEY (Essn) REFERENCES COMPANY.EMPLOYEE(Ssn);

ALTER TABLE COMPANY.WORKS_ON
ADD CONSTRAINT
FOREIGN KEY (Pno) REFERENCES COMPANY.PROJECT(Pnumber);

ALTER TABLE COMPANY.DEPENDENT
ADD CONSTRAINT
PRIMARY KEY(ESSN,DEPENDENT_NAME);

ALTER TABLE COMPANY.DEPENDENT
ADD CONSTRAINT
FOREIGN KEY(ESSN) REFERENCES company.EMPLOYEE(SSN);

John	B	Smith	123456789	1965-01-09	Fondren,731 Houston, Tx	M	30000	333445555	5		

create table company.EMPLOYEE ( 
Fname varchar(15) NOT NULL,
Minit char , Lname varchar(15) NOT NULL,
Ssn char(9) not null,
Bdate DATE ,
Address VARCHAR(30),
Sex char,
Salary decimal(10,2),
Super_ssn CHAR(9),
Dno int not null);

INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('John', 'B', 'smith', '12345678', '1965-01-09', 'Fondren,731 Houston, Tx','M', '30000', '333445555','5');


Alter table company.DEPARTMENT
drop constraint DEPTMGRFK;


drop table company.DEPARTMENT;




create table company.EMPLOYEE ( 
Fname varchar(15) NOT NULL,
Minit char , Lname varchar(15) NOT NULL,
Ssn char(9) not null,
Bdate DATE ,
Address VARCHAR(30),
Sex char,
Salary decimal(10,2),
Super_ssn CHAR(9),
Dno int not null);

create table company.department(
Dname VARCHAR(15) NOT NULL,
Dnumber INT NOT NULL,
Mgr_ssn CHAR(9) NOT NULL,
Mgr_start_date DATE,
unique(Dname));


create table Company.dept_locations(
Dnumber INT NOT NULL,
Dlocation VARCHAR(20) NOT NULL);


create table company.project(
pname VARCHAR(15) NOT NULL,
pnumber INT NOT NULL,
plocation VARCHAR(15),
Dnum INT NOT NULL,
unique(pname));

create table company.works_on(
Essn CHAR(9) NOT NULL,
Pno INT not null,
Hours DECIMAL(3,1));


create table company.dependent(
Essn CHAR(9) NOT NULL,
dependent_name VARCHAR(15) NOT NULL,
Sex CHAR ,
Bdate DATE,
Relationship VARCHAR(8) );


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('John', 'B', 'smith', '123456789',	'1965-01-09',	'Fondren,731 Houston, Tx',	'M',	'30000',	'333445555',	'5');		


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX','M', '40000', '888665555','5');


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Alicia','J','Zelaya','999887777','1968-01-19','3321 Castle, Spring, TX','F','25000','987654321','4');
	



INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Jennifer',	'S'	,'Wallace','987654321','1941-06-20','291 Berry, Bellaire, TX','F','43000','888665555','4');



INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Ramesh','K','Narayan','666884444','1962-09-15','975 Fire Oat, Humble, TX',	'M','38000','333445555','5');		




INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Joyce','A','English','453453453','1972-07-31',	'5631 Rice, Houston, TX',	'F','25000','333445555','5');		


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('Ahmad','V','Jabbar','987987987','1969-03-29','980 Dallas, Houston, TX','M','25000','987654321','4');	


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
VALUES ('James','E','Borg',	'888665555','1937-11-10','450 Stone, Houston, TX','M','55000','NULL','1');


use company;
show tables;

select * from employee;

											
EMPLOYEE											
FName	Minit	Lname	Ssn	Bdate	Address	Sex	Salary	Super_ssn	Dno	SQL Prep	
John	B	Smith	123456789	1965-01-09	Fondren,731 Houston, Tx	M	30000	333445555	5		
Franklin	T	Wong	333445555	1955-12-08	638 Voss, Houston, TX	M	40000	888665555	5		
Alicia	J	Zelaya	999887777	1968-01-19	3321 Castle, Spring, TX	F	25000	987654321	4		
Jennifer	S	Wallace	987654321	1941-06-20	291 Berry, Bellaire, TX	F	43000	888665555	4		
Ramesh	K	Narayan	666884444	1962-09-15	975 Fire Oat, Humble, TX	M	38000	333445555	5		
Joyce	A	English	453453453	1972-07-31	5631 Rice, Houston, TX	F	25000	333445555	5		
Ahmad	V	Jabbar	987987987	1969-03-29	980 Dallas, Houston, TX	M	25000	987654321	4		
James	E	Borg	888665555	1937-11-10	450 Stone, Houston, TX	M	55000	NULL	1		


INSERT INTO COMPANY.department (dname, dnumber, mgr_ssn, mgr_start_date) 
VALUES ('Research','5','333445555','1988-05-22');
				
                
INSERT INTO COMPANY.department (dname, dnumber, mgr_ssn, mgr_start_date) 
VALUES ('Administration','4	','987654321','1995-01-01');	

INSERT INTO COMPANY.department (dname, dnumber, mgr_ssn, mgr_start_date) 
VALUES ('Headquarters','1','888665555','1981-06-19');	

select * from department;

drop table department;

                
DEPARTMENT				
DName	DNumber	Mgr_ssn	Mgr_start_date	
Research	5	333445555	1988-05-22	
Administration	4	987654321	1995-01-01	
Headquarters	1	888665555	1981-06-19	


		
DEPT_LOCATIONS		
Dnumber	Dlocations	
1	Houston	
4	Stafford	
5	Bellaire	
5	Sugarlan	
5	Houston	

insert into company.dept_locations(dnumber,dlocation)
values('1','Houston');	

insert into company.dept_locations(dnumber,dlocation)
values('4','Stafford');	

insert into company.dept_locations(dnumber,dlocation)
values('5','Bellaire');	

insert into company.dept_locations(dnumber,dlocation)
values('5','Sugarlan');	

insert into company.dept_locations(dnumber,dlocation)
values('5','Houston');	

select * from dept_locations;


				
PROJECT				
PName	Pnumber	Plocation	Dnum	
ProductX	1	Bellaire	5	
ProductY	2	Sugarland	5	
ProductZ	3	Houston	5	
Computerization	10	Stafford	4	
Reorganization	20	Houston	1	
Newbenefits	30	Stafford	4	


insert into project(pname,pnumber,plocation,dnum)
values('ProductX','1','Bellaire','5');


insert into project(pname,pnumber,plocation,dnum)
values('ProductY','2','Sugarland','5');


insert into project(pname,pnumber,plocation,dnum)
values('ProductZ','3','Houston','5');


insert into project(pname,pnumber,plocation,dnum)
values('Computerization','10','Stafford','4');


insert into project(pname,pnumber,plocation,dnum)
values('Reorganization','20','Houston','1');	

insert into project(pname,pnumber,plocation,dnum)
values('Newbenefits','30','Stafford','4');	


SELECT * FROM PROJECT;

DROP TABLE PROJECT;


INSERT INTO WORKS_ON(essn,pno,hours)
values('123456789','1','32.5');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('123456789','2','7.5');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('666884444','3','40');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('453453453','1','20');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('453453453','1','20');	


INSERT INTO WORKS_ON(essn,pno,hours)
values('333445555','2','10');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('333445555','2','10');	




INSERT INTO WORKS_ON(essn,pno,hours)
values('333445555','3','10');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('333445555','10','10');	


INSERT INTO WORKS_ON(essn,pno,hours)
values('999887777','20','30');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('999887777','30','10');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('987987987','10','35');	


INSERT INTO WORKS_ON(essn,pno,hours)
values('987987987','10','5');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('987654321','30','20');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('987654321','30','15');	

INSERT INTO WORKS_ON(essn,pno,hours)
values('888665555','20',NULL);	

			
WORKS_ON			
Essn	Pno	Hours	
123456789	1	32.5	
123456789	2	7.5	
666884444	3	40	
453453453	1	20	
453453453	1	20	
333445555	2	10	
333445555	2	10	
333445555	3	10	
333445555	10	10	
999887777	20	30	
999887777	30	10	
987987987	10	35	
987987987	10	5	
987654321	30	20	
987654321	20	15	
888665555	20	NULL	


					



insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('333445555','Alice','F','1986-04-05','Daugther');


insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('333445555','Theodore','M','1983-10-25','Son');

insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('333445555','Joy','F','1958-05-03','Spouse');

insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('987654321','Abner','M','1942-02-28','Spouse');

insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('123456789','Michael','M','1988-01-04','Son');

insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('123456789','Alice','F','1988-12-30','Daugther');

insert into company.dependent(essn,dependent_name,sex,bdate,relationship)
values('123456789','Elizabeth','F','1967-05-05','Spouse');



select * from dependent;


select * from employee;






















#1 Retrieve the birth date and address of the employee(s) whose name is ‘John B. Smith’









select employee.bdate,address 
from company.employee
where employee.fname='john'and employee.minit='B' and employee.lname='smith';








 

 
FROM T1
INNER JOIN T2 ON T1.a > T2.b
 
returned?
(a)	4
(b)	6
(c)	8
(d)	10
(e)	12
 





use company;


#2 Retrieve the name and address of all employees who work for the ‘Research’ Department


select * from department;

select employee.fname,employee.minit,employee.lname,address
from company.employee,company.department
where dnumber=dno and department.dname='research';

select employee.fname,employee.minit,employee.lname,address
from employee
INNER JOIN department 
ON dnumber=dno and department.dname='research'












#3 For every project located in ‘Stafford’, 
list the project number, the controlling department number,
 and the department manager’s last name, address, and 
 birth date
 
 SELECT T1.id, T1.a, T2.b, T3.c 
FROM T1
INNER JOIN T2 ON T1.id = T2.id 
INNER JOIN T3 ON T1.id = T3.id

 
 select pnumber,dnum,lname,address,bdate
 from project,department,employee
 where plocation='stafford' and dnum=dno and mgr_ssn=ssn;

 select project.pnumber,project.dnum,employee.lname,employee.address,employee.bdate
 from employee
 INNER JOIN department ON employee.dno=department.dnumber and department.mgr_ssn=employee.ssn
 INNER JOIN project ON  dnum=dnumber and plocation='stafford';
 
 select * from employee

select * from employee;
select * from project;
select * from department;

use company;
14.	Display employees working in reasearch dept where there are two tables employee and department

select * from employee e inner join department d ON Dno=Dnumber where Dname='Administration'

select * from employee where Dno IN (select Dnumber from department where Dname='Administration')


INSERT INTO COMPANY.EMPLOYEE (fname, Minit, lname, ssn, bdate ,address,sex,salary,super_ssn, dno) 
values('rani','B','smith','123456789','1965-01-09','Natkarni c4rescn','F','3000','1243134','4')

delete from employee
where Address='Natkarni c4rescn' and Ssn='123044'

 select project.pnumber ,project.dnum,
 lname,employee.address,employee.bdate
 from company.project,company.department,company.employee
 where project.plocation='stafford' and project.dnum=dno and department.mgr_ssn=ssn;


delete from employee
where ssn in ( select max(id)
			 from employee
             group by fname,Minit,Lname
             having count(*) > 1);


UPDATE employee
SET Ssn = '123456789' 
WHERE Sex='F' and Address='Natkarni c4rescn'

DELETE t1
FROM employee t1
INNER JOIN employee t2
WHERE t1.id > t2.id
  AND t1.Fname = t2.Fname
  AND t1.Minit = t2.Minit
  AND t1.Lname = t2.Lname
  AND t1.Address = t2.Address
  AND t1.Sex = t2.Sex;

use company;
select * from employee

#Window function to display max salary for every department along with all other entries

select *,
max(salary) over(partition by dno) as max_salary
from employee

select *,
row_number() over(partition by dno) as rn
from employee;



# select first two employees to join the company or say first two rownumber after sorting

select * from 
(
select e.*,
row_number() over(partition by dno order by ssn) as rn
from employee e) x
where x.rn < 3;


#Fetch top 3 employees in each dept earning max salary
#rank skips number after repating dense rank does not , excute the below query to understand better

select * from(
select e.*,
rank() over(partition by dno order by salary desc) as rnk,
dense_rank() over(partition by dno order by salary desc) as dense_rnk
from employee e) x
where x.rnk <  4

#to remove duplicates
select * from
(select e.*,
row_number() over(partition by lname,minit) as rn
from employee e) x
where x.rn >1

# lead and lag function with CASE statements

select e.*,
lag(salary) over(partition by dno) as prev_salary,
case when e.salary > lag(salary) over(partition by dno)  then 'higher then previous'
     when e.salary < lag(salary) over(partition by dno)  then 'lower then previous'
     when e.salary = lag(salary) over(partition by dno)  then 'same as previous'
     end salary
from employee e;

select* from employee 


# query to fetch the fname of highest salary taking employee under each dpt along with other entries
# for last_value there is twist becoz there comes frame concept, which a subset in the partition
# u can also use row instead of range , just changes for duplicate data

select *,
first_value(fname) over (partition by dno order by salary desc) as fname_high_sal_dept,
last_value(fname) over (partition by dno order by salary desc range between unbounded preceding and unbounded following) as fname_low_sal_dept
from employee
# if u want a where clause where dno=5

select * from employee


select *,
first_value(fname) over (partition by dno order by salary desc) as fname_high_sal_dept,
last_value(fname) over (partition by dno order by salary desc range between 2 preceding and 2 following) as fname_low_sal_dept
from employee

# alternate was to write window function
select *,
first_value(fname) over w as fname_high_sal_dept,
last_value(fname) over w as fname_low_sal_dept
from employee
window w as (partition by dno order by salary desc range between unbounded preceding and unbounded following)

# to fetch nth value 
#example, print second mos highset paid employee under each dept

select *,
nth_value(fname,2) over w as 3rd
from employee
window w as (partition by dno order by salary desc range between unbounded preceding and unbounded following)

select fname
from employee
order by salary desc
limit 1
offset 4

# to bucket the employeees based on salary as high , mid, ,low

select fname,
case when x.buckets=1 then'high'
 when x.buckets=2 then'mid'
 when x.buckets=3 then'low'
end sal
from
(
	select *,
	ntile(3) over( order by salary desc) as buckets
	from employee
) x


# to fecth fname who contributes first 30 perct based on salary using cume_dist() window function

select fname, (cume_dist_percentage ||'%') as cume_dist_percentage
from (
		select *,
        cume_dist() over(order by salary desc) as cume_distribution,
        round(cume_dist() over (order by salary desc)::numeric * 100,2) as cume_dist_percentage
        from employee) x
where x.cume_dist_percentage >=30


select fname,cume_distribution
from (
		select *,
        cume_dist() over(order by salary) as cume_distribution
        from employee) x
where x.cume_distribution >=0.3


# how much higher salary does revathi get when compared to other employees
select fname,perc
from (
    select *,
	percent_rank() over(order by salary) as perc
	from employee) x
