create database Hospitals;
use  Hospitals;
create table hospital_information(hospital_id int,hospital_name varchar(20) unique,location varchar(20),phoneno bigint,doctor_id int check(doctor_id >=1),primary key(hospital_id));

alter table hospital_information add constraint hospital_id_uni unique(hospital_id);
alter table hospital_information drop constraint hospital_name;

desc hospital_information;
select  * from hospital_information;
insert into hospital_information values(1,'mental hospital','banglore',8904906637,201);
insert into hospital_information values(2,'kids hospital','manglore',9904906637,202);
insert into hospital_information values(3,'babdys hospital','tc playa',6904906637,203);
insert into hospital_information values(4,'ramu hospital','kr puram',7604906637,204);
insert into hospital_information values(5,'krishan hospital','magadi',8904766637,205);

alter table hospital_information modify hospital_id int not null;
alter table hospital_information drop primary key;
 
 
 create table patient_information(patient_id int,patient_name varchar(20)unique,patient_age int check(patient_age>=18),patient_gender varchar(20),address varchar(20),primary key(patient_id));
 alter table patient_information add constraint address_uni unique(address);
 alter table patient_information drop constraint patient_name;
 
 
insert into patient_information values(21,'sandhya',21,'female','jp nagra');
insert into patient_information values(31,'bhavya',25,'female','kr puram');
insert into patient_information values(41,'guna',28,'female','majestic');
insert into patient_information values(51,'sujana',29,'female',' iti');
insert into patient_information values(61,'megha',20,'female','bagepalli');
desc patient_information;
select * from patient_information;

alter table patient_information modify patient_id int not null;
alter table patient_information drop  primary key;
alter table patient_information drop  