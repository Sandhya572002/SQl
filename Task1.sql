create database RTO;
use RTO;

create table LLR_INFO(llr_id int,llr_name varchar(20),age int,address varchar(20),issue_date date,expiry_date date,
gender varchar(20),phneno bigint,email varchar(20),statues varchar(20),primary key(llr_id));

select * from  LLR_INFO; 
insert into LLR_INFO values (1,'Johne',30, '123 Elm Street', '2023-01-15', '2024-01-15','Male',1234567890,'john.@example.com','Active');
insert into LLR_INFO values (2,'Jane',28, '456 Oak Avenue', '2023-02-20', '2024-02-20','Female', 2345678901,'jane.@example.com','Active');
insert into LLR_INFO values (3,'Emily',35, '789 Pine Road', '2023-03-10', '2024-03-10','Female', 3456789012,'emily.@example.com','Expired');
insert into LLR_INFO values (4,'Michael',40, '101 Maple Drive', '2023-04-25', '2024-04-25','Male', 4567890123,'michael.@example.com','Active');
insert into LLR_INFO values (5,'Linda',32, '202 Birch Lane', '2023-05-30', '2024-05-30','Female', 5678901234,'linda.@example.com','Active');
insert into LLR_INFO values (6,'James',27, '303 Cedar Street', '2023-06-15', '2024-06-15','Male', 6789012345,'james.@example.com','Active');
insert into LLR_INFO values (7,'Patricia',29, '404 Walnut Way', '2023-07-22', '2024-07-22','Female',7890123456,'patria.@example.com','Suspended');
insert into LLR_INFO values (8,'Robert',45, '505 Chestnut Court','2023-08-19','2024-08-19','Male', 8901234567,'robert.@example.com','Active');
insert into LLR_INFO values (9,'Sarah',38, '606 Spruce Terrace', '2023-09-12', '2024-09-12','Female', 9012345678, 'sarah.@example.com','Active');
insert into LLR_INFO values (10,'David',33, '707 Fir Place','2023-10-05','2024-10-05', 'Male', 1012345678,'david.@example.com','Expired');
insert into LLR_INFO values (11,'Jessica',31, '808 Aspen Boulevard','2023-11-15', '2024-11-15','Female', 1123456789,'jessica.@example.com','Active');
insert into LLR_INFO values (12,'William',29, '909 Sequoia Avenue', '2023-12-20', '2024-12-20','Male', 1234567890, 'william.@example.com','Active');
insert into LLR_INFO values (13,'Mary',26, '1010 Maple Lane', '2023-01-10', '2024-01-10','Female', 2345678901,'mary.@example.com','Expired');
insert into LLR_INFO values (14,'Charles',34, '1111 Oak Street', '2023-02-15','2024-02-15','Male', 3456789012,'charles.@example.com','Active');
insert into LLR_INFO values (15,'Barbara',42, '1212 Pine Drive', '2023-03-20','2024-03-20','Female', 4567890123,'barba.@example.com','Active');
insert into LLR_INFO values (16,'Daniel',37, '1313 Birch Road', '2023-04-25','2024-04-25','Male', 5678901234,'daniel.@example.com','Suspended');
insert into LLR_INFO values (17,'Susan',28, '1414 Walnut Street', '2023-05-30','2024-05-30','Female', 6789012345,'susan.@example.com','Active');
insert into LLR_INFO values (18,'Matthew',39, '1515 Cedar ','2023-06-15','2024-06-15', 'Male',7890123456,'mathew.@example.com','Active');
insert into LLR_INFO values (19,'Lisa',26, '1616 Chestnut Avenue','2023-07-22', '2024-07-22','Female', 8901234567,'lisa.@example.com','Expired');
insert into LLR_INFO values (20,'Christopher',33, '1717 Fir Court', '2023-08-19', '2024-08-19', 'Male', 9012345678,'chrer.@example.com','Active');

create table LLR_Test_INFO(test_id int,llr_id int,test_date date,test_result varchar(20),conducted_by varchar(20),
score int,comments varchar(20),test_type varchar(20),test_location varchar(20),address varchar(20),primary key(test_id),
foreign key(llr_id)references LLR_INFO(llr_id));

select * from LLR_Test_INFO;
insert into LLR_Test_INFO values (1, 1,'2024-01-15', 'Pass','John ', 85, 'Well done', 'Written', 'City Center', '123 Elm');
insert into LLR_Test_INFO values (2, 2,'2024-02-20', 'Fail','Mary ', 55, 'Needs ', 'Practical', 'Suburban Area', '456St');
insert into LLR_Test_INFO values (3, 3,'2024-03-10','Pass','Paul White', 90, 'Excellent ', 'Written', 'City Center', 'banglore');
insert into LLR_Test_INFO values (4, 4, '2024-04-22','Pass','Linda ', 78, 'Good job', 'Practical', 'City Center', 'manglore');
insert into LLR_Test_INFO values (5, 5,'2024-05-30','Fail','James ', 50, 'Needs  practice', 'Written', 'Suburban Area', 'cbpur');
insert into LLR_Test_INFO values (6, 6,'2024-06-15','Pass','Rachel Adams', 88, 'Great job', 'Practical', 'City Center', 'kerala');
insert into LLR_Test_INFO values (7, 7,'2024-07-25','Pass','Michael Clark', 92, 'Perfect ', 'Written', 'Suburban Area', 'iti');
insert into LLR_Test_INFO values (8, 8,'2024-08-18','Fail','Emily Davis', 60, 'Please review ', 'Practical', 'City Center', 'jayanagar');
insert into LLR_Test_INFO values (9, 9,'2024-09-10','Pass','John Lee', 85, 'Good work', 'Written', 'Suburban Area', 'tinfactory');
insert into LLR_Test_INFO values (10, 10,'2024-10-05','Pass','Sara ', 80, 'Well done', 'Practical', 'City Center', 'hicker');
insert into LLR_Test_INFO values (11, 11,'2024-11-01','Fail','David ', 53, 'Needs ', 'Written', 'Suburban Area', '579 Elm St');
insert into LLR_Test_INFO values (12, 12,'2024-12-15','Pass','Laura ', 89, 'Great ', 'Practical', 'City Center', '680 Oak St');
insert into LLR_Test_INFO values (13, 13,'2024-01-30','Fail','Chris ', 62, 'Review ', 'Written', 'City Center', '791Pine St');
insert into LLR_Test_INFO values (14, 14,'2024-02-25','Pass','Nancy Turner', 84, 'Good job', 'Practical', 'Suburban Area', '802 Maple ');
insert into LLR_Test_INFO values (15, 15,'2024-03-15','Fail','Steven White', 57, 'Needs  practice', 'Written', 'City Center', 'jamunagar');
insert into LLR_Test_INFO values (16, 16,'2024-04-10','Pass','Barbara Lee', 91, 'Excellent', 'Practical', 'Suburban Area', 'krishnapur');
insert into LLR_Test_INFO values (17, 17,'2024-05-20','Pass','Tom ', 87, 'Well done', 'Written', 'City Center', '135 Walnut St');
insert into LLR_Test_INFO values (18, 18,'2024-06-18','Fail','Katherine ', 59, 'Needs improvement', 'Practical', 'Suburban Area','bagepalli');
insert into LLR_Test_INFO values (19, 19,'2024-07-30','Pass','George ', 82, 'Good job', 'Written', 'City Center', 'tc palya');
insert into LLR_Test_INFO values (20, 20,'2024-08-25','Fail','Olivia ', 63, 'Review needed', 'Practical', 'Suburban Area', 'kr puram');

create table DRIVING_LICENSE_INFO(dl_id int,llr_id int,test_id int,issue_date date,expiry_date date ,
class varchar(20),restrictions varchar(20),statuss varchar(20),address varchar(20),phoneno bigint,primary key(dl_id),
foreign key(test_id)references LLR_Test_INFO(test_id));

select * from DRIVING_LICENSE_INFO;
insert into DRIVING_LICENSE_INFO values(1, 1, 1, '2024-01-20', '2029-01-20', 'A', 'None', 'Active', '123 Elm St', 1234567890);
insert into DRIVING_LICENSE_INFO values(2, 2, 2, '2024-02-25', '2029-02-25', 'B', 'None', 'Expired', '456 Oak St', 2345678901);
insert into DRIVING_LICENSE_INFO values(3, 3, 3, '2024-03-15', '2029-03-15', 'C', 'None', 'Active', '789 Pine St', 3456789012);
insert into DRIVING_LICENSE_INFO values(4, 4, 4, '2024-04-30', '2029-04-30', 'A', 'None', 'Active', '321 Maple St', 4567890123);
insert into DRIVING_LICENSE_INFO values(5, 5, 5, '2024-06-01', '2029-06-01', 'B', 'None', 'Expired', '654 Cedar St', 5678901234);
insert into DRIVING_LICENSE_INFO values(6, 6, 6, '2024-06-20', '2029-06-20', 'C', 'None', 'Active', '987 Birch St', 6789012345);
insert into DRIVING_LICENSE_INFO values(7, 7, 7, '2024-07-28', '2029-07-28', 'A', 'None', 'Active', '135 Walnut St', 7890123456);
insert into DRIVING_LICENSE_INFO values(8, 8, 8, '2024-08-20', '2029-08-20', 'B', 'None', 'Expired', '246 Spruce St', 8901234567);
insert into DRIVING_LICENSE_INFO values(9, 9, 9, '2024-09-15', '2029-09-15', 'C', 'None', 'Active', '357 Fir St', 9012345678);
insert into DRIVING_LICENSE_INFO values(10, 10, 10, '2024-10-10', '2029-10-10', 'A', 'None', 'Active', '468 Hickory St', 1234567890);
insert into DRIVING_LICENSE_INFO values(11, 11, 11, '2024-11-05', '2029-11-05', 'B', 'None', 'Expired', '579 Elm St', 2345678901);
insert into DRIVING_LICENSE_INFO values(12, 12, 12, '2024-12-20', '2029-12-20', 'C', 'None', 'Active', '680 Oak St', 3456789012);
insert into DRIVING_LICENSE_INFO values(13, 13, 13, '2024-01-30', '2029-01-30', 'A', 'None', 'Active', '791 Pine St', 4567890123);
insert into DRIVING_LICENSE_INFO values(14, 14, 14, '2024-02-28', '2029-02-28', 'B', 'None', 'Expired', '802 Maple St', 5678901234);
insert into DRIVING_LICENSE_INFO values(15, 15, 15, '2024-03-20', '2029-03-20', 'C', 'None', 'Active', '913 Cedar St', 6789012345);
insert into DRIVING_LICENSE_INFO values(16, 16, 16, '2024-04-15', '2029-04-15', 'A', 'None', 'Active', '024 Birch St', 7890123456);
insert into DRIVING_LICENSE_INFO values(17, 17, 17, '2024-05-25', '2029-05-25', 'B', 'None', 'Expired', '135 Walnut St', 8901234567);
insert into DRIVING_LICENSE_INFO values(18, 18, 18, '2024-06-30', '2029-06-30', 'C', 'None', 'Active', '246 Spruce St', 9012345678);
insert into DRIVING_LICENSE_INFO values(19, 19, 19, '2024-07-20', '2029-07-20', 'A', 'None', 'Active', '357 Fir St', 1234567890);
insert into DRIVING_LICENSE_INFO values(20, 20, 20, '2024-08-15', '2029-08-15', 'B', 'None', 'Expired', '468 Hickory St', 2345678901);

create table DRIVING_LICENSE_TEST_INFO(dl_id int,test_date date,test_result date,conducted_by varchar(20),score int,comments varchar(20),
test_type varchar(20),test_location varchar(20),phono bigint,email varchar(20),foreign key(dl_id)references DRIVING_LICENSE_INFO(dl_id));
alter table DRIVING_LICENSE_TEST_INFO modify test_result varchar(20);
desc DRIVING_LICENSE_TEST_INFO;
select * from DRIVING_LICENSE_TEST_INFO;
insert into DRIVING_LICENSE_TEST_INFO values(1, '2024-01-25', 'Pass', 'Alice Brown', 80, 'Well executed', 'Written', 'City Center', 1234567890, 'john.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(2, '2024-02-28', 'Fail', 'Bob Smith', 45, 'Needs improvement', 'Practical', 'Suburban Area', 2345678901, 'jane.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(3, '2024-03-20', 'Pass', 'Charlie White', 85, 'Good work', 'Written', 'City Center', 3456789012, 'alice.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(4, '2024-04-30', 'Pass', 'Diana Green', 78, 'Well done', 'Practical', 'City Center', 4567890123, 'bob.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(5, '2024-06-05', 'Fail', 'Edward Wilson', 50, 'Needs more practice', 'Written', 'Suburban Area', 5678901234, 'carol.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(6, '2024-06-25', 'Pass', 'Fiona Black', 88, 'Great job', 'Practical', 'City Center', 6789012345, 'david.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(7, '2024-07-30', 'Pass', 'George Taylor', 92, 'Perfect score', 'Written', 'Suburban Area', 7890123456, 'emily.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(8, '2024-08-22', 'Fail', 'Hannah Lewis', 62, 'Review required', 'Practical', 'City Center', 8901234567, 'frank.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(9, '2024-09-15', 'Pass', 'Ian Scott', 83, 'Good performance', 'Written', 'Suburban Area', 9012345678, 'grace.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(10, '2024-10-10', 'Pass', 'Jack White', 79, 'Well done', 'Practical', 'City Center', 1234567890, 'hank.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(11, '2024-11-07', 'Fail', 'Karen Davis', 58, 'Needs preparation', 'Written', 'Suburban Area', 2345678901, 'ivy.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(12, '2024-12-20', 'Pass', 'Laura Adams', 86, 'Great performance', 'Practical', 'City Center', 3456789012, 'jackie.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(13, '2024-01-30', 'Fail', 'Michael King', 55, 'Needs improvement', 'Written', 'City Center', 4567890123, 'karl.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(14, '2024-02-26', 'Pass', 'Nina White', 84, 'Good job', 'Practical', 'Suburban Area', 5678901234, 'lily.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(15, '2024-03-22', 'Fail', 'Oscar Young', 49, 'More practice needed', 'Written', 'City Center', 6789012345, 'mike.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(16, '2024-04-15', 'Pass', 'Paula Brown', 87, 'Well executed', 'Practical', 'Suburban Area', 7890123456, 'nina.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(17, '2024-05-25', 'Pass', 'Quinn Green', 90, 'Excellent', 'Written', 'City Center', 8901234567, 'oscar.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(18, '2024-06-20', 'Fail', 'Rachel Black', 61, 'Review necessary', 'Practical', 'Suburban Area', 9012345678, 'paula.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(19, '2024-07-25', 'Pass', 'Sam Davis', 82, 'Good job', 'Written', 'City Center', 1234567890, 'quinn.@example.com');
insert into DRIVING_LICENSE_TEST_INFO values(20, '2024-08-18', 'Fail', 'Tina Martin', 64, 'Needs improvement', 'Practical', 'Suburban Area', 2345678901, 'rachel.@example.com');


