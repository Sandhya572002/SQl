create database orderdetails;
use orderdetails;




create table order_details(id int,order_name varchar(20),cost int,order_id int,
created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),primary key(order_id));
select * from order_details;
insert into order_details values(1,'pizz',30,91,now(),now(),now(),now());
insert into order_details values(2,'chocolate',40,92,now(),'sandhya',now(),'sindhu');
insert into order_details values(3,'maggi',50,93,now(),'deepa',now(),'krishna');
insert into order_details values(4,'gobi',20,94,now(),'ramu',now(),'sujana');
insert into order_details values(5,'pani puri',10,95,now(),'leela',now(),'janu');



create table payment(id int,price int,payment_id int,order_id int,payment_status varchar(20),
created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
primary key(payment_id),foreign key(order_id)references order_details(order_id)on delete cascade on update cascade);
select * from payment;
insert into payment values(21,40,11,92,'sucess',now(),'padma',now(),'ravi');
insert into payment values(22,50,12,91,'fail',now(),'roopa',now(),'priya');
insert into payment values(23,60,13,94,'sucess',now(),'varshu',now(),'vipul');
insert into payment values(24,70,14,93,'fail',now(),'geetha',now(),'ankitha');
insert into payment values(25,80,15,95,'sucess',now(),'madhu',now(),'sindhu');



create table restaurant(id int,restaurant_name varchar(20),restaurant_id int,location varchar(20),order_id int,
ratings int,payment_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
primary key(restaurant_id),
foreign key(order_id)references order_details(order_id)on delete cascade on update cascade,
foreign key(payment_id)references payment(payment_id)on delete cascade on update cascade);
select * from restaurant;
insert into restaurant values(81,'AB',10,'banglore',95,1,15,now(),'moni',now(),'adi');
insert into restaurant values(82,'chickencountry',30,'kr puram',94,2,14,now(),'akhil',now(),'jaya');
insert into restaurant values(83,'zam zam',50,'tc palya',92,3,13,now(),'sri',now(),'laya');
insert into restaurant values(84,'nandhini',100,'cbpur',93,5,12,now(),'acchu',now(),'prema');
insert into restaurant values(85,'udapi',20,'manglore',91,4,11,now(),'anil',now(),'pavani');

create table delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),restaurant_id int,
order_id int,created_at timestamp, created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(restaurant_id)references restaurant(restaurant_id)on delete cascade on update cascade,
foreign key(order_id)references order_details(order_id)on delete cascade on update cascade);
select * from delivery;
insert into delivery values(31,'sandhya','online',10,91,now(),'hari',now(),'manasa');
insert into delivery values(32,'bhavya','offline',20,92,now(),'kavya',now(),'siranth');
insert into delivery values(33,'guna','online',30,93,now(),'divya',now(),'lasya');
insert into delivery values(34,'sunny','offline',100,94,now(),'haripriya',now(),'nikil');
insert into delivery values(35,'deepa','online',50,95,now(),'veda',now(),'varshini');




