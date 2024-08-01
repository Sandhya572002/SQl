create database Systems;
use Systems;
create table Employee_information(id int,emp_name varchar(20) unique,department varchar(20),
hire_date date,Salary bigint check(Salary>=1000),phono bigint,location varchar(20) not null,primary key(id));

select * from Employee_information;
insert into Employee_information values (1,'sandhya','Sales','2020-01-15',5000, 1234567890, 'NewYork');
insert into Employee_information values(2,'ramu','Marketing','2019-03-22',6000, 2345678901, 'rr nagar');
insert into Employee_information values(3,'divya','HR','2018-05-10', 4500,3456789012, 'tc palya');
insert into Employee_information values(4,'krishna','IT','2021-08-05',7000,4567890123, 'hostoke');
insert into Employee_information values(5,'Jessica','Finance','2017-11-30', 5500, 5678901234, 'devanahalli');
insert into Employee_information values(6,'David','Engineering','2016-07-19',8000, 6789012345, 'cbpur');
insert into Employee_information values(7,'Laura','Support','2022-02-25',3200, 7890123456, 'krpuram');
insert into Employee_information values(8,'Daniel','Legal','2015-12-14',6800, 8901234567, 'iti');
insert into Employee_information values(9,'sujana','R&D','2023-04-01',7500, 9012345678, 'tin factory');
insert into Employee_information values(10,'James','Logistics','2020-09-20',5100, 1234567891, 'magadi road');

select * from Employee_information where Salary between 5000 and 6000;
select * from Employee_information where emp_name like '%l';
select * from Employee_information where emp_name like 's%a';
select * from Employee_information where emp_name like 'd%';
select * from Employee_information where emp_name like '_%l';
select * from Employee_information where emp_name like 's%_';
select * from Employee_information order by emp_name ;
select * from Employee_information order by emp_name desc;
select LOWER(location)as to_lower from Employee_information;
select UPPER(location)as to_lower from Employee_information;
select CONCAT(location,emp_name) from Employee_information;
select length(location),location from Employee_information;
create index emp_name_index on Employee_information(emp_name);
show index from Employee_information;
explain select * from Employee_information where emp_name='sandhya'; 
select * from Employee_information;

create table product_inventory(id int,p_name varchar(20) unique,category varchar(20),date_added date,
supplier_name varchar(20),price bigint check(price>=100),foreign key(id)references Employee_information(id)) ;

select * from product_inventory;
insert into product_inventory values (1,'Laptop','Electronics','2022-01-10','TechSupplier',1500);
insert into product_inventory values(2,'Smartphone','Electronics','2021-03-15','Gadget World',800);
insert into product_inventory values(3,'Desk Chair','Furniture','2020-05-25','Office Depot',200);
insert into product_inventory values(4,'Water Bottle','Kitchen','2023-07-05','Home Goods',120);
insert into product_inventory values(5,'Notebook','Stationery','2022-09-13','Paper Store',150);
insert into product_inventory values(6,'Headphones','Electronics','2020-11-30','Sound Express',300);
insert into product_inventory values(7,'Coffee Maker','Appliances','2019-02-22','Kitchen Tech',250);
insert into product_inventory values(8,'Backpack','Accessories','2021-04-10','Travel Gear',180);
insert into product_inventory values(9,'Monitor','Electronics','2018-06-29','Screen Solutions',400);
insert into product_inventory values(10,'Pen ','Stationery','2023-02-14','Office Max', 130);

select * from product_inventory where price between 100 and 200;
select * from product_inventory where category like '%s';
select * from product_inventory where category like 'A%';
select * from product_inventory where category like 's%t%';
select * from product_inventory order by price;
select * from product_inventory order by id desc;
select LOWER(category)as to_lower from product_inventory;
select UPPER(supplier_name)as to_lower from product_inventory;
select CONCAT(category,id)as to_concat from product_inventory;
select length(p_name),p_name from product_inventory;
create index p_name_index on product_inventory(p_name);
show index from  product_inventory;
explain select * from product_inventory where p_name='Laptop'; 
select * from product_inventory;

