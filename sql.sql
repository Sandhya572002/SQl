create database moviebank;
use moviebank;
create table movie_information(movie_id int,movie_name varchar(20),movie_hero varchar(20),movie_heroin varchar(20),movie_duration int);
Alter table movie_information add column movie_title varchar(20),add column movie_language varchar(20) ,add column movie_ticket bigint,add column no_peoples bigint,add column movie_isgood_bad boolean;
select * from movie_information;
alter table movie_information rename column movie_id TO m_id,rename column movie_name TO m_name,rename column movie_hero TO m_hero,rename column movie_heroin TO m_heroin,rename column movie_duration TO m_duration;
alter table movie_information rename column movie_title  TO movie_producer;
insert into movie_information values(1,'hello','akhil','pavani',3,'krishna','telugu',150,1000,true);
insert into movie_information values(2,'bunny','allu arju','leela',4,'ramu','kannada',100,1500,false);
insert into movie_information values(3,'kalki','prabhas','deepika',2,'adirama','hindi',120,3000,true);
insert into movie_information values(4,'darling','prabhas','kalji',3,'pravven','telugu',250,2000,true);
insert into movie_information values(5,'july','allu','janu',1,'harsha','tamil',350,2000,false);
insert into movie_information values(6,'after','alex','emma stone',5,'hunter','english',950,5000,false);
insert into movie_information values(7,'amrutha geetham','ramesh','lavanya',2,'madhu','kannada',110,1900,true);
insert into movie_information values(8,'kushi','vijay','samanth',4,'rohith','telugu',320,3300,true);
insert into movie_information values(9,'sapnon ki duniya','arjun sigh','priya',1,'rajesh','hindi',150,2500,false);
insert into movie_information values(10,'yeong won','minjun','leeji',9,'wook','korean',150,2900,true);
update movie_information set m_name='king' where m_id=1;
update movie_information set m_hero='naga' where m_id=2;
update movie_information set m_heroin='prema' where m_id=3;
update movie_information set m_duration=4 where m_id=4;
update movie_information set movie_producer='keerthi' where m_id=5;
update movie_information set movie_language='telugu' where m_id=6;
update movie_information set movie_ticket=120 where m_id=7;
update movie_information set no_peoples=900 where m_id=8;
update movie_information set movie_isgood_bad=false where m_id=9;
update movie_information set movie_isgood_bad=false where m_id=10;
rollback;
select * from movie_information;
delete from movie_information where m_id=1;
delete from movie_information where m_hero='minjun';
delete from movie_information where m_duration=9;

select * from movie_information where m_duration=2 and m_name='amrutha geetham';
select * from movie_information where movie_isgood_bad=0 or m_name='kushi' or movie_ticket=120;
select * from movie_information where m_id in(2,3,4);
select * from movie_information where m_id not in(2,3,4);

create table bank_details(account_id int , branch_code int , account_holder varchar(20), account_type varchar(20), bank_name varchar(20));
select * from bank_details;
alter table  bank_details add column branch_name varchar(20),add column ifsc_code varchar(20), add column micr_code varchar(20), add column account_balance bigint, add column phoneno bigint ,add column is_active boolean;
alter table bank_details rename column bank_id TO b_id,rename column branch_code TO b_code,rename column account_holder TO a_holder,rename column account_type TO a_type,rename column bank_name TO b_name;

insert into bank_details values(1, 1234, 'John Doe', 'Savings', 'Bank A', 'Main Branch', 'IFSC0012345', 'MICR001234', 500000,8904906637, TRUE);
insert into bank_details values(2, 5678, 'Jane Smith', 'Checking', 'Bank B', 'Downtown Branch', 'IFSC0056789', 'MICR005678', 1000000,8904806637, TRUE);
insert into bank_details values(3, 9101, 'Robert Brown', 'Savings', 'Bank C', 'Uptown Branch', 'IFSC0091011', 'MICR009101', 750000,6362411289, FALSE);
insert into bank_details values(4, 1121, 'Emily Davis', 'Savings', 'Bank D', 'East Branch', 'IFSC0011223', 'MICR001122', 1200000, 7897234329,TRUE);
insert into bank_details values(5, 3141, 'Michael Wilson', 'Checking', 'Bank E', 'West Branch', 'IFSC0031415', 'MICR003141', 200000, 9904569987,TRUE);
insert into bank_details values(6, 5161, 'Sarah Miller', 'Savings', 'Bank F', 'South Branch', 'IFSC0051617', 'MICR005161', 450000,9004569987, FALSE);
insert into bank_details values(7, 7181, 'David Lee', 'Checking', 'Bank G', 'North Branch', 'IFSC0071819', 'MICR007181', 600000,7704569987, TRUE);
insert into bank_details values(8, 9202, 'Laura Garcia', 'Savings', 'Bank H', 'Central Branch', 'IFSC0092021', 'MICR009202', 800000, 9904969987,TRUE);
insert into bank_details values(9, 2232, 'James Martinez', 'Savings', 'Bank I', 'Suburb Branch', 'IFSC0022324', 'MICR002232', 300000,8994569987, FALSE);
insert into bank_details values(10, 4252, 'Patricia Hernandez', 'Checking', 'Bank J', 'Metro Branch', 'IFSC0042526', 'MICR004252', 950000,9904569987, TRUE);
select * from bank_details;
update bank_details set b_code=1134 where b_id=1;
update bank_details set a_holder='sandhya' where b_name='Bank B';
update bank_details set a_type='checking' where b_name='Bank B';
update bank_details set branch_name='north branch' where b_name='Bank C';
update bank_details set a_holder='bhavya' where account_balance=950000;
update bank_details set a_holder='sunny' where b_id=9;
update bank_details set a_type='saving' where b_id=5;
update bank_details set phoneno=9480446647 where b_name='Bank H';
update bank_details set branch_name='yamuna' where b_name='Bank D';
update bank_details set a_holder='akhil' where b_name='Bank G';

select * from bank_details;
delete from bank_details where b_id=10;
delete from bank_details where a_holder='akhil';
delete from bank_details where b_name='Bank A';

select * from bank_details where b_id=9 and b_name='Bank I';
select * from bank_details where b_id=3 or b_code=5678 or a_type='checking';
select * from bank_details where b_id in(4,5,6);
select * from bank_details where b_code not in(1121,3141,5161);






