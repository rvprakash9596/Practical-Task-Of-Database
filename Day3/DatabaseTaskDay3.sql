--  																S.No.3.1
-- =======================================================================================================================================

create database Day3;
use Day3;

create table Employee (
employee_ID int(3) primary key not null auto_increment,
first_name varchar(20),
last_name varchar(20),
department varchar(20),
salary int);

show tables;

desc employee;

select * from employee;

insert into employee values
(123,"James","Smith","Accounting",80000),
(234,"Robert","Johnson","Sales",100000),
(345,"Mary","Williams","Marketing",90000),
(456,"Jon","Lee","Sales",120000),
(567,"Patricia","Spade","Marketing",110000);

select * from employee;

-- 1.update all employee salary is equal to 50000 whose salary is less than 100000.
-- SET SQL_SAFE_UPDATES = 0;
update  employee set salary=50000 where salary<100000;
select * from employee;
-- truncate table employee;


-- 2.write a sql query to rename employee table to Employee_Details.
alter table employee rename to Employee_Details;
show tables;
select * from employee_details;

-- 3.write down sql query to truncate all records.
truncate table employee_details;

-- 4.write down sql query to drop table employee.
drop table employee_details;

-- 5.update all employee department whose first_name starts with J.
update employee_details set department="Production" where first_name like 'J%';
select * from employee_details;

--  														   S.No.3.2
-- =======================================================================================================================================

show tables;

create table Customer (
Customer_ID int ,
Name varchar(20),
Address varchar(20),
Age int);

Desc Customer;

insert into customer values 
(1,"Billie","NY",22),
(2,"Eilish","London",19),
(3,"Ariana","Miami",18),
(4,"Selena","New Jersey",32),
(5,"Kety","Hawaii",42),
(6,"Adele","Miami",29);

select * from customer;


-- 1.write a sql query to change table name Customer_details to new table Customer.
alter table customer rename to Customer_details;
desc customer_details;
select * from customer_details;

-- 2.write a syntax to update name  whose belongs to London and Customer Age between 18-20.
update customer_details set name ="Evlish yadav"  where address="London" and age between 18 and 20;
select * from customer_details;
 

-- 3.How to all row delete at a time write a syntax.
truncate table table_name;

-- 4.Write a syntax to drop table Customer_details.
drop table table_name;



-- Completed