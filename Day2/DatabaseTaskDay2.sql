-- 																	Day 2
-- ========================================================================================================================================

show databases;
use hospitaldb;
show tables;

--  																S.No.2.1
-- =======================================================================================================================================

create table productdetails(
SR int primary key not null auto_increment,
Product_Name varchar(20),
Total int,
MRP int,
SaleRate int,
EntryDate date
);
desc productdetails;
select * from productdetails;

insert into productdetails(SR,Product_Name,Total,MRP,SaleRate,EntryDate) values
(1,"Hospital Beds",3,2000,1500,'2021-09-01'),
(2,"Trolley",2,3000,2500,'2021-09-01'),
(3,"Injection",1,200,150,'2021-09-01'),
(4,"Trolley",4,2000,1500,'2021-08-01'),
(5,"Dustbin",2,100,50,'2021-08-01'),
(6,"Injection",6,300,250,'2021-09-10');

select * from productdetails;

-- 1.select Name,MRP of product which  have highest MRP
select product_name,mrp from productdetails where mrp=(select max(mrp) from productdetails); -- Trolley	3000

-- 2.Selext total MRP rate of injection.
select sum(MRP) from productdetails where product_name="injection"; -- 500

-- 3.select total MRP rate of Trolley purchased in September Months.
select sum(MRP) from productdetails where product_name="Trolley" and entrydate like '%-09-%'; -- 3000

-- 4.Select average price of trolley according to sale Rate.
select avg(MRP) from productdetails where product_name="Trolley"; -- 2500.0000

-- 5.Select Name,MRP of product which have lowest MRP.
select product_name,MRP from productdetails where MRP=(select min(MRP) from productdetails); -- Dustbin 100

-- 6.Calculate how many Trolley present in the hospital.
select count(product_name) as "Tolat Trolley Available =" from productdetails where product_name="Trolley"; -- Total Trolley Available = 2





--  																S.No.2.2
-- =======================================================================================================================================
show tables;
select * from patientdetails;
truncate table patientdetails;
insert into patientdetails (SR,NAME,ADDRESS,MOBNO,ENTRY_DATE,DISCHARGE_DATE,DOCTOR) VALUES
(1,"RAM","VIKAS NAGAR LUCKNOW",9839029547,'2021-07-01','2022-07-01',"DR.Prince"),
(2,"SHIVAM","CANTT VARANASI",NULL,'2021-07-01','2022-07-01',"DR. Prince"),
(3,"ANURAG","MAHANAGAR LUCKNOW",8900766554,'2021-07-01','2022-07-01',"DR. Meera"),
(4,"MAHESH","GOMTI NAGAR LUCKNOW",7898776554,'2021-07-01','2022-07-01',"DR. Prince"),
(5,"VIKAS","PATNA",8897451254,'2021-07-01','2022-07-01',"DR. Meera"),
(6,"MITA","Vikas Nagar Lucknow",8989457845,'2021-07-03',NULL,"Dr. Prince"),
(7,"GITA",NULL,9839029548,'2021-01-03','2020-01-31',"Dr. Meena"),
(8,"SIYA","Lucknow",7485963625,'2021-04-02','2021-04-12',"Dr. Prince"),
(9,"RIYA","Patna",7854123265,'2021-08-05','2021-08-15',"Dr. Shikha"),
(10,"Sandeep",NULL,NULL,'2021-05-05','2021-05-15',"Dr. Rajendra"),
(11,"Mukul","Patna",NULL,'2021-09-01','2021-09-06',"Dr. Prince"),
(12,"Mukesh","BHU Varanasi",7854125478,'2021-10-23','2021-10-31',"Dr. Shikha");

select * from patientdetails;

-- 1.select name of patient whose name starts from S.
select * from patientdetails where Name like 'S%';

-- 2.Select details of patients who admitted in september months.
select * from patientdetails where entry_date like '%-09-%';

-- 3.Select details of patients whose mobno starts from 7.
select * from patientdetails where mobno like '7%';

-- 4.Select list of patients who is admitted in under of Dr. prince
select * from patientdetails where doctor="Dr. Prince";

-- 5.Select name,address of those patients who belong to Lucknow city
select name,address from patientdetails where address="Lucknow";

-- 6.select all details of patient whose city is patna and doctor is DR. Prince.
select * from patientdetails;
select * from patientdetails where address="Patna" and doctor="Dr. Prince";

-- 7.select all patients of patna and lucknow.
select * from patientdetails where address in ("Patna" , "Lucknow");

-- 8. select all patient list who belongs to patna and admitted in september months.
select * from patientdetails where address="patna" and entry_date like '%-09-%';

-- 9.delete all paient details of DR. Prince from table.
select * from patientdetails;
-- delete  from patientdetails where doctor="Dr. prince";
-- SET SQL_SAFE_UPDATES = 0;
delete  from patientdetails where doctor="Dr. prince";
-- truncate table patientdetails;


--  																S.No.2.3
-- =======================================================================================================================================
show tables;

create table EMPLOYEE(
EMPLOYEE_ID int primary key not null auto_increment,
FIRST_NAME varchar(20),
HIRE_DATE date,
JOB_ID varchar(20),
SALARY int);

Desc EMPLOYEE;

insert into EMPLOYEE  values( 100, "Siya" , '201-06-06', "IT_PROG" , 50000),
( 102, "Saurabh" , '2019-09-15', "IT_PROG" , 100000),
( 103, "Seema" , '2012-06-06', "IT_PROG" , 80000),
( 104, "Shivam" , '2019-08-15', "IT_PROG" , 200000),
( 105, "Sandhya" ,null,  "SOFT_PROG" , 100000),
( 106, "Shakshi" , '2021-09-25', "SOFT_PROG" , 200000),
( 107, "sHILPA" ,null,  "SOFT_PROG" , 60000),
( 108, "Shubham" , '2019-08-15', "IT_PROG" , 33000);

select * from EMPLOYEE;

-- 1.select record of employee who earns more than 40000.
select * from EMPLOYEE where salary>40000;

-- 2.show name and job_id of those employees who joined company before 2018-01-01.
select FIRST_NAME , JOB_ID from EMPLOYEE where HIRE_DATE< '2018-01-01';

-- 3.show all record of employee whose job_id IT_PROG and salary is greater than 100000.
select * from EMPLOYEE where JOB_ID = 'IT_PROG' and SALARY>100000;

-- 4.select all record of employee whose JOB_ID is either IT_PROG or who joined company after 2017-01-01.
select * from EMPLOYEE where (JOB_ID= 'IT_PROG' or HIRE_DATE > '2017-01-01');

-- 5.select record of employee whose salary is under 20000-100000.
SELECT salary from EMPLOYEE where SALARY BETWEEN 20000 and 100000;

-- 6.select all employee details whose name starts with Sh.
select * from EMPLOYEE where FIRST_NAME like 'sh%';

-- 7.Select number of employee whose HIRE_DATE is null.
SELECT COUNT(*) FROM EMPLOYEE WHERE HIRE_DATE IS NULL;

-- 8.delete record of employee whose salary is less than 33000.

-- 9.delete all record of employee whose JOB_ID is either IT_PROG or who joined company after 2017-01-01.

-- 10.Delete record of employee whose salary is belongx to 20000-60000 or HORE_DATE is null.
