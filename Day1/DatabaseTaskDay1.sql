show databases;
create database HospitalDB;
use HospitalDB;
show tables;

--  																S.No.1
-- =======================================================================================================================================
create table PatientDetails (
SR int primary key not null auto_increment,
NAME varchar(30),
ADDRESS varchar(50),
MOBNO varchar(10),
ENTRY_DATE date,
DISCHARGE_DATE date,
DOCTOR varchar(20)
);
show tables;
desc patientdetails;


--  															S.No.2
-- =========================================================================================================================================
insert into patientdetails (SR,NAME,ADDRESS,MOBNO,ENTRY_DATE,DISCHARGE_DATE,DOCTOR) VALUES
(1,"RAM","VIKAS NAGAR LUCKNOW",9839029547,'2021-07-01','2022-07-01',"DR.Prince"),
(2,"SHIVAM","CANTT VARANASI",NULL,'2021-07-01','2022-07-01',"DR. Prince"),
(3,"ANURAG","MAHANAGAR LUCKNOW",8900766554,'2021-07-01','2022-07-01',"DR. Meera"),
(4,"MAHESH","GOMTI NAGAR LUCKNOW",7898776554,'2021-07-01','2022-07-01',"DR. Prince"),
(5,"VIKAS","PATNA",8897451254,'2021-07-01','2022-07-01',"DR. Meera");
SELECT * FROM PATIENTDETAILS;

--  																S.No.3
-- ==========================================================================================================================================
create table productdetails(
SR int primary key not null auto_increment,
Product_Name varchar(20),
Total int,
MRP int,
SaleRate int,
EntryDate date
);

desc productdetails;

--  																S.No.4
-- ==========================================================================================================================================
insert into productdetails(SR,Product_Name,Total,MRP,SaleRate,EntryDate) values
(1,"Hospital Beds",3,2000,1500,'2021-09-01'),
(2,"Trolley",2,3000,2500,'2021-09-01'),
(3,"Injection",1,200,150,'2021-09-01'),
(4,"Trolley",4,2000,1500,'2021-08-01'),
(5,"Dustbin",2,100,50,'2021-08-01'),
(6,"Injection",6,300,250,'2021-09-10');

select * from productdetails;

--  																S.No.5
-- =========================================================================================================================================
-- 5.1
alter table productdetails modify column mrp varchar(5);
desc productdetails;

-- 5.2
alter table productdetails rename column salerate to SalePrice;
desc productdetails;

-- 5.3
alter table productdetails rename to  product;
show tables;
desc product;

-- 5.4
alter table product drop column total;
desc product;

-- 5.5
alter table product add column Brand varchar(20);
desc product;
