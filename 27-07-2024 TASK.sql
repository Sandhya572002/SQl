create database statescam;
use statescam;
create table state_infomation(state_id int,state_name varchar(20),state_abbreviation varchar(20),capital_city varchar(20),largest_city varchar(20),population bigint,areasqmiles bigint,areasqkm bigint,iscoastal boolean,admission_year  int); 
select * from  state_infomation;
alter table state_infomation add column state_governer int ,add column state_cm int ,add column  state_education_minister int ,add column time_zone int ,add column no_of_district varchar(20);
drop table state_infomation;
alter table state_infomation rename column state_name to s_name, rename column state_abbreviation to s_abbreviation, rename column capital_city to cap_city, rename column largest_city to largestest_city;
alter table state_infomation modify column state_governer varchar(20),modify column state_cm varchar(20),modify column state_education_minister varchar(20),modify column time_zone bigint ,modify column no_of_district int ;

insert into state_infomation values(1,'Maharashtra','MH','Mumbai','Mumbai',123144223, 118809, 307713, true, 1960, 'Bhagat', 'Uddhav Thackeray', 'Varsha Gaikwad', 5, 36);
insert into state_infomation values(2,'Uttar Pradesh','UP', 'Lucknow', 'Kanpur', 199812341, 243286, 243286, false, 1950, 'AnandibenPatel', 'Yogi Adityanath', 'Dr. Dinesh ', 5.5, 75);
insert into state_infomation values(3,'Bihar', 'BR','Patna', 'Patna', 124799926, 94163, 94163, false, 1950, 'Phagu Chauhan', 'Nitish', 'Vijay Kumar ', 5.5, 38);
insert into state_infomation values(4,'West Bengal','WB', 'Kolkata', 'Kolkata', 91276115, 34287, 88752, true, 1950, 'Jagdeep ', 'Mamata ', 'Bratya Basu', 5.5, 23);
insert into state_infomation values(5,'Madhya Pradesh','MP', 'Bhopal', 'Indore', 72597565, 308350, 308350, false, 1956, 'Mangubhai C. ', 'Shivraj Singh ', 'Inder Singh ', 5.5, 52);
insert into state_infomation values(6,'Tamil Nadu','TN', 'Chennai', 'Chennai', 77841267, 50362, 130058, true, 1969, 'R. N. Ravi', 'M. K. Stalin', 'Anbil Mahesh ', 5.5, 38);
insert into state_infomation values(7,'Rajasthan','RJ', 'Jaipur', 'Jaipur', 68548437, 342239, 342239, false, 1950, 'Kalraj ', 'Ashok Gehlot', 'Govind Singh ', 5.5, 33);
insert into state_infomation values(8,'Karnataka','KA', 'Bengaluru', 'Bengaluru', 61095297, 191791, 191791, true, 1956, 'Thaawarchand ', 'Basavaraj ', 'B.C. Nagesh', 5.5, 30);
insert into state_infomation values(9,'Gujarat','GJ', 'Gandhinagar', 'Ahmedabad', 60439692, 196024, 196024, true, 1960, 'Acharya ', ' Patel', 'Bhupendrasinh ', 5.5, 33);
insert into state_infomation values(10,'Andhra Pradesh','AP', 'Amaravati', 'Visakhapatnam', 49577103, 162968, 162968, true, 1956, 'Biswa Bhusan ', 'Y. S. Jagan Mohan ', 'A. Suresh', 5.5, 13);
insert into state_infomation values(11,'Odisha','OD', 'Bhubaneswar', 'Bhubaneswar', 41974218, 155707, 155707, true, 1950, 'Ganeshi Lal', 'Naveen ', 'Sushanta Singh', 5.5, 30);
insert into state_infomation values(12,'Telangana','TS', 'Hyderabad', 'Hyderabad', 35003674, 114840, 297479, false, 2014, 'Tamilisai ', 'K. Chandrashekar ', 'P. Sabitha Indra ', 5.5, 33);
insert into state_infomation values(13,'Kerala','KL', 'Thiruvananthapuram', 'Thiruvananthapuram', 35699443, 38863, 39931, true, 1956, 'Arif  Khan', 'Pinarayi ', 'V. Sivankutty', 5.5, 14);
insert into state_infomation values(14,'Jharkhand','JH', 'Ranchi', 'Jamshedpur', 32988134, 79714, 79714, false, 2000, 'Ramesh Bais', 'Hemant ', 'Jagarnath ', 5.5, 24);
insert into state_infomation values(15,'Assam','AS', 'Dispur', 'Guwahati', 31205576, 78438, 78438, true, 1950, 'Jagdish Mukhi', 'Himanta Biswa ', 'Ranoj Pegu', 5.5, 33);
insert into state_infomation values(16,'Punjab','PB', 'Chandigarh', 'Ludhiana', 27743338, 50362, 50362, false, 1966, 'Banwarilal ', 'Charanjit Singh ', 'Pargat Singh', 5.5, 22);
insert into state_infomation values(17,'Chhattisgarh', 'CG', 'Raipur', 'Raipur', 25545198, 135194, 135194, false, 2000, 'Anusuiya ', 'Bhupesh ', 'Premsai Singh Tekam', 5.5, 27);
insert into state_infomation values(18,'Haryana','HR', 'Chandigarh', 'Faridabad', 25351462, 44212, 44212, false, 1966, 'Bandaru ', 'Manohar Lal ', 'Kanwar Pal Gujjar', 5.5, 22);
insert into state_infomation values(19,'Uttarakhand','UK', 'Dehradun', 'Dehradun', 11082791, 53483, 53483, false, 2000, 'Gurmit Singh', 'Pushkar Singh ', 'Dhan Singh ', 5.5, 13);
insert into state_infomation values(20,'Himachal Pradesh','HP', 'Shimla', 'Shimla', 7307030, 55673, 55673, false, 1971, 'Rajendra ', 'Jai Ram ', 'Govind Singh ', 5.5, 12);

select * from  state_infomation;
update  state_infomation set s_abbreviation="MS" where state_id=1;
update  state_infomation set iscoastal=true where state_id=2;
update  state_infomation set population=2345678 where state_id=9;
update  state_infomation set no_of_district=75 where state_id=2;
update  state_infomation set s_abbreviation="BR" where state_cm="nitish";
update  state_infomation set s_name="assama" where state_id=15;
update  state_infomation set largestest_city="hyderbadd" where state_id=12;
update  state_infomation set s_abbreviation="PAB" where state_id=16;
update  state_infomation set time_zone=7 where state_id=13;
update state_infomation set population=987654 where  s_name="kerala";

delete from state_infomation where s_name="karnataka";
delete from state_infomation where s_name="Andhra Pradesh";
delete from state_infomation where s_name="Odisha";

select * from state_infomation where state_id=7 and s_name="rajasthan";
select * from state_infomation where state_id=8 or s_name="Maharashtra" or iscoastal=1;
select * from state_infomation where state_id in(1,2,3,4);
select * from state_infomation where state_id NOT IN(1,2,3,4);

create  table scam_information(scam_id int,scam_type varchar(20),scam_description varchar(20),scam_date DATE,
scam_amount BIGINT,scam_location varchar(20),scam_perpetrator_name varchar(20),scam_victim_name varchar(20),scam_status int,police_station int);
alter table scam_information add column investigation_officer int ,add column case_registered_date DATE,add column case_closed_date DATE ,add column money_recovered BIGINT ,add column is_case_closed BOOLEAN ;
select * from scam_information;
alter table scam_information rename column scam_id to s_id,rename column scam_type to s_type,rename column scam_description to s_description,rename column scam_date to s_date,rename column scam_amount to s_amount;
alter table scam_information modify column case_registered_date varchar(20),modify column case_closed_date varchar(20),modify column scam_status varchar(20),modify column police_station varchar(20),modify column investigation_officer varchar(20);
desc scam_information;

insert into scam_information values(1,'Phishing','Emailscam', '2023-01-15', 100000, 'New York', 'John Doe', 'Jane Smith', 'Underinvestigation', 'Central Station', 'Detective Smith', '2023-01-16', NULL, 0, false);
insert into scam_information values(2,'Investment Fraud', 'Ponzi ', '2023-02-20', 500000, 'Los Angeles', 'Alice Johnson', 'Michael Brown', 'Closed', 'Westside Station', 'Detective Johnson', '2023-02-21', '2023-03-10', 250000, true);
insert into scam_information values(3,'Online Shopping Scam', 'Fake website ', '2023-03-05', 75000, 'Chicago', 'Sarah Lee', 'David Wilson', 'Under investigation', 'Downtown Station', 'Detective Williams', '2023-03-06', NULL, 0, false);
insert into scam_information values(4,'Identity Theft', 'Stolen', '2023-04-10', 300000, 'Houston', 'Emily Taylor', 'Robert Martinez', 'Closed', 'Eastside Station', 'Detective Brown', '2023-04-12', '2023-05-01', 200000, true);
insert into scam_information values(5,'Telecom Fraud', 'Phone  scam ', '2023-05-15', 150000, 'Miami', 'Daniel ', 'Jennifer Harris', 'Under investigation', 'SouthStation', 'Detective White', '2023-05-16', NULL, 0, false);
insert into scam_information values(6,'Real Estate Scam', 'Fake property ', '2023-06-20', 400000, 'San ', 'Matthew Clark', 'Jessica Davis', 'Closed', 'Financial Station', 'Detective Green', '2023-06-21', '2023-07-10', 300000, true);
insert into scam_information values(7,'Phishing', 'Text scam ', '2023-07-25', 80000, 'Seattle', 'Olivia Moore', 'William Wilson', 'Under investigation', 'Downtown Station', 'Detective Anderson', '2023-07-26', NULL, 0, false);
insert into scam_information values(8,'Investment Fraud', 'Fakescheme', '2023-08-30', 600000, 'Dallas', 'Ethan Allen', 'Sophia Adams', 'Closed', 'Uptown Station', 'Detective Carter', '2023-08-31', '2023-09-20', 400000, true);
insert into scam_information values(9,'Online Shopping Scam', 'Counterfeit goods', '2023-09-10', 200000, 'Atlanta', 'Ava Robinson', 'Daniel Murphy', 'Under investigation', 'Midtown Station', 'Detective King', '2023-09-11', NULL, 0, false);
insert into scam_information values(10,'Identity Theft', 'Bankaccount', '2023-10-15', 120000, 'Phoenix', 'Liam Baker', 'Isabella Rodriguez', 'Closed', 'Downtown  Station', 'Detective Martinez', '2023-10-16', '2023-11-01', 100000, true);
insert into scam_information values(11,'Telecom Fraud', 'Caller posing ', '2023-11-20', 90000, 'Philadelphia', 'Lucas Young', 'Mia Hernandez', 'Under investigation', 'Old Station', 'Detective Perez', '2023-11-21', NULL, 0, false);
insert into scam_information values(12,'Real Estate Scam', 'Rent scam ', '2023-12-05', 250000, 'Detroit', 'Sophie Turner', 'Alexander Scott', 'Closed', 'Downtown Station', 'Detective Taylor', '2023-12-06', '2024-01-05', 150000, true);
insert into scam_information values(13,'Phishing', 'Email scam ', '2024-01-10', 70000, 'Denver', 'Noah Hall', 'Emily White', 'Under investigation', 'Financial  Station', 'Detective Brown', '2024-01-11', NULL, 0, false);
insert into scam_information values(14,'Investment Fraud', 'promising high ', '2024-02-15', 350000, 'San Diego', 'Mason Lewis', 'Lily Martinez', 'Closed', 'South Station', 'Detective Garcia', '2024-02-16', '2024-03-10', 300000, true);
insert into scam_information values(15,'Online Shopping ', 'Payment', '2024-03-20', 180000, 'Portland', 'Logan Clark', 'Hannah ', ' investigation', 'Westside Station', 'Detective White', '2024-03-21', NULL, 0, false);
insert into scam_information values(16,'Identity Theft', 'Socialactivities', '2024-04-25', 130000, 'L as Vegas', 'Grace Martin', 'James Thompson', 'Closed', 'Downtown Station', 'Detective Carter', '2024-04-26', '2024-05-15', 100000, true);
insert into scam_information values(17,'Telecom Fraud', 'SMS scam ', '2024-05-30', 95000, 'Minneapolis', 'Lucy Harris', 'Benjamin Turner', 'Under investigation', 'Uptown Station', 'Detective Anderson', '2024-05-31', NULL, 0, false);
insert into scam_information values(18,'Real Estate Scam', 'forged signatures', '2024-06-10', 280000, 'Charlotte', 'Ella Walker', 'Jack Roberts', 'Closed', 'Midtown Station', 'Detective King', '2024-06-11', '2024-07-01', 200000, true);
insert into scam_information values(19,'Phishing','Websitescam ', '2024-07-15', 60000, 'Boston', 'Isaac Davis', 'Emma Moore', 'Under investigation', ' East Station', 'Detective Perez', '2024-07-16', NULL, 0, false);
insert into scam_information values(20,'InvestmentFraud', 'Fakeschemes', '2024-08-20', 400000, 'Washington D.C.', 'Luke Hall', 'Ava Robinson', 'Closed', 'Financial Station', 'Detective Taylor', '2024-08-21', '2024-09-15', 300000, true);

select * from  scam_information;
update  scam_information set s_type="vishing" where s_id=1;
update  scam_information set s_date='2023-01-18' where s_id=2;
update  scam_information set s_amount=2345678 where s_id=9;
update  scam_information set scam_status='underinvestigation' where s_id=2;
update  scam_information set scam_location="banglore" where money_recovered=0;
update  scam_information set s_description='fail scam' where s_id=19;
update  scam_information set scam_location="mysure" where s_id=9;
update  scam_information set s_amount=45678 where s_id=13;
update  scam_information set police_station='north station'where s_id=10;
update scam_information set s_amount=987654 where  s_type="Telecom Fraud";

delete from scam_information where s_id=1;
delete from scam_information where s_description="Fakeschemes";
delete from scam_information where s_id=20;

select * from scam_information where s_id=1 and s_type="Rent scam" and is_case_closed=1;
select * from scam_information where s_id=8 or s_type="'Telecom Fraud'" or is_case_closed=1;
select * from scam_information where s_id in(15,16,17);
select * from scam_information where s_type NOT IN('Identity Theft','Online Shopping Scam');
