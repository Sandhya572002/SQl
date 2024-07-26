create database Allow;
use Allow;
create table show_room(room_id int not null,room_name varchar(20) not null,location varchar(20) unique,email varchar(20) unique,
floor_number int check(floor_number>=100) ,capacity int check (capacity>=10),phoneno bigint,available boolean,contact_person varchar(20),room_type varchar(20));

insert into show_room values(1,'Aurora','hello Hall','aurora1@example.com', 101, 50, 1234567890, TRUE, 'Alice Smith', 'Conference');
insert into show_room values(2,'Zenith','West Wing','zenith@example.com', 102, 30, 1234567891, TRUE, 'Bob Johnson', 'Meeting');
insert into show_room values(3,'Horizon','East Wing','horizon@example.com', 103, 20, 1234567892, FALSE, 'Carol Davis', 'Workshop');
insert into show_room values(4,'Eclipse','North Block','eclipse@example.com', 104, 15, 1234567893, TRUE, 'David Brown', 'Seminar');
insert into show_room values(5,'Celestial','South Block','celestl@example.com', 105, 25, 1234567894, TRUE, 'Eva Wilson', 'Conference');
insert into show_room values(6,'Nebula','Upper Deck','nebula@example.com', 106, 40, 1234567895, TRUE, 'Frank Clark', 'Meeting');
insert into show_room values(7,'Orion','Lower Deck','orion@example.com', 107, 35, 1234567896, TRUE, 'Grace Lewis', 'Workshop');
insert into show_room values(8,'Pinnacle','Lobby','pinle@example.com', 108, 22, 1234567897, FALSE, 'Hank Walker', 'Seminar');
insert into show_room values(9,'Zen','Atrium','zen@example.com', 109, 18, 1234567898, TRUE, 'Ivy Hall', 'Conference');
insert into show_room values(10,'Stellar','Garden Room','stellar@example.com', 110, 28, 1234567899, TRUE, 'Jack Adams', 'Meeting');
insert into show_room values(11,'Apex','Sky Lounge','apex@example.com', 111, 45, 1234567801, TRUE, 'Kathy Mitchell', 'Workshop');
insert into show_room values(12,'Vortex','Zen Zone','votex@example.com', 112, 32, 1234567802, TRUE, 'Leo Martinez', 'Seminar');
insert into show_room values(13,'Summit','Board Room','summt@example.com', 113, 26, 1234567803, FALSE, 'Mona Scott', 'Conference');
insert into show_room values(14,'Vertex','Breakout Area','verex@example.com', 114, 30, 1234567804, TRUE, 'Nina Taylor', 'Meeting');
insert into show_room values(15,'Quasar','Sunset Room','quasr@example.com', 115, 20, 1234567805, TRUE, 'Oscar Young', 'Workshop');
insert into show_room values(16,'Radiance','Moonlight Hall','radiance@example.com', 116, 50, 1234567806, TRUE, 'Paula King', 'Seminar');
insert into show_room values(17,'Nexus','Ocean View','nexs@example.com', 117, 29, 1234567807, TRUE, 'Quinn Evans', 'Conference');
insert into show_room values(18,'Zenith','Penthouse','zenth2@example.com', 118, 23, 1234567808, FALSE, 'Rita Carter', 'Meeting');
insert into show_room values(19,'Aurora','Sunrise Room','auroa2@example.com', 119, 17, 1234567809, TRUE,'Steve Hill', 'Workshop');
insert into show_room values(20,'Horizon','Skyline Room','horin2@example.com', 120, 27, 1234567810, TRUE,'Tina Green', 'Seminar');

select * from show_room;
desc show_room;
alter table show_room modify room_type varchar(20) not null;
alter table show_room add constraint contact_person_uni unique(contact_person);
alter table show_room add constraint capacity_chk check(capacity>=10);
alter table show_room add constraint room_id_chk check(room_id>=1);




create table chat_center(chat_id int not null,user_id int not null,chat_name varchar(20) unique,user_name varchar(20) unique,rating int check(rating>=10),duration int check(duration>=4 and duration<=10),
status varchar(20),items_cost bigint,center_phoneno bigint,location varchar(20));
select * from chat_center;
desc chat_center;
insert into chat_center values(1,101,'Tech Talk','JohnDoe',15,6,'Active',5000,1234567890,'Downtown');
insert into chat_center values(2,102,'Business Chat','JaneSmith',20, 7,'Inactive',7500, 1234567891,'Uptown');
insert into chat_center values(3,103,'Gaming Hub','AlexBrown',18, 5,'Active',4000, 1234567892,'Suburbia');
insert into chat_center values(4,104,'Music Lounge','EmilyWhite', 25, 8,'Active',6000, 1234567893,'City Center');
insert into chat_center values(5,105,'Fitness Forum','MichaelGreen', 12, 4,'Active',4500, 1234567894,'West End');
insert into chat_center values(6,106,'Cooking Corner','LisaBlack',22, 9,'Inactive',3000, 1234567895,'Eastside');
insert into chat_center values(7,107,'Travel Tales','ChrisBlue', 17, 6,'Active',5500, 1234567896, 'Southfield');
insert into chat_center values(8,108,'Book Club','NatalieRed', 14, 7,'Active',7000, 1234567897,'Northside');
insert into chat_center values(9,109,'Movie Madness','DanielGold', 19, 5,'Inactive', 5000, 1234567898, 'Midtown');
insert into chat_center values(10,110,'Art Gallery', 'OliviaGray', 21, 8,'Active',8000, 1234567899, 'Riverside');
insert into chat_center values(11,111,'Sports Zone','EthanSilver', 16, 6,'Active', 6500, 2345678901,'Hilltop');
insert into chat_center values(12,112,'panipuri Chat','SophiaCyan', 23, 4,'Inactive',4200, 2345678902,'Lakeside');
insert into chat_center values(13,113,'Health Hub','JackMagenta', 13, 5,'Active', 5200, 2345678903,'Woodland');
insert into chat_center values(14,114,'Tech Trends','AvaTeal', 24, 7, 'Active',5800, 2345678904, 'Beachside');
insert into chat_center values(15,115,'History Talk','WilliamMaroon', 11, 6, 'Inactive',6000, 2345678905, 'Hillside');
insert into chat_center values(16,116,'Fashion Focus','IsabellaTurquoise', 28, 9,'Active',7200, 2345678906,'Greenfield');
insert into chat_center values(17,117,'Finance Forum','JamesPeach', 30, 5,'Active',9000, 2345678907, 'Plainsview');
insert into chat_center values(18,118,'Pet Talk', 'CharlotteLime',19, 4, 'Inactive', 3500, 2345678908, 'Sunset');
insert into chat_center values(19,119,'Education Exchange','BenjaminOlive', 20, 7, 'Active', 4300, 2345678909, 'Ridgewood');
insert into chat_center values(20,120,'Gardening Group','AmeliaIvory', 12, 8, 'Active', 4800, 2345678910, 'Horizon');
select * from chat_center;
desc chat_center;
alter table chat_center modify chat_name varchar(20) not null;
alter table chat_center add constraint location_uni unique(location);
alter table chat_center add constraint rating_chk check(rating>=10),add constraint chat_id_chk check(chat_id>=1);



create table temple_information(temple_id int not null,temple_name varchar(40) not null,location varchar(40) unique, 
established_year date unique,no_of_visiter int check(no_of_visiter>=1),enter_free int check(enter_free>=500),god_name varchar(40),contact_no bigint,pooja_name varchar(40),opening_time time);
select * from temple_information;
insert into temple_information values(1,'Ganesh Temple', 'Mumbai', '1980-01-15', 5000, 1000, 'Ganesh', 9123456789, 'Ganesh Chaturthi', '07:00:00');
insert into temple_information values(2,'Kashi Vishwanath Temple', 'Varanasi', '1780-05-05', 10000, 1500, 'Shiva', 9123456790, 'Maha Shivaratri', '06:00:00');
insert into temple_information values(3,'Vaishno Devi Temple', 'Katra', '1925-08-10', 20000, 1200, 'Vaishno Devi', 9123456791, 'Navratri', '05:00:00');
insert into temple_information values(4,'Jagannath Temple', 'Puri', '1170-11-12', 15000, 800, 'Jagannath', 9123456792, 'Rath Yatra', '06:30:00');
insert into temple_information values(5,'Brihadeeswarar Temple', 'Thanjavur', '1010-12-22', 3000, 2000, 'Shiva', 9123456793, 'Thiruvadhirai', '08:00:00');
insert into temple_information values(6,'Meenakshi Temple', 'Madurai', '1600-03-01', 7000, 1100, 'Meenakshi', 9123456794, 'Chithirai Festival', '07:00:00');
insert into temple_information values(7,'Rameswaram Temple', 'Rameswaram', '1600-04-14', 4000, 900, 'Shiva', 9123456795, 'Rama Navami', '05:30:00');
insert into temple_information values(8,'Golden Temple', 'Amritsar', '1577-12-01', 25000, 1800, 'Guru Granth Sahib', 9123456796, 'Baisakhi', '04:00:00');
insert into temple_information values(9,'Dilwara Temples', 'Mount Abu', '1030-06-18', 1500, 700, 'Jain Tirthankaras', 9123456797, 'Paryushana', '08:00:00');
insert into temple_information values(10,'Hampi Temple', 'Hampi', '1500-09-23', 8000, 1300, 'Virupaksha', 9123456798, 'Vijaya Utsav', '07:00:00');
insert into temple_information values(11,'Somnath Temple', 'Prabhas Patan', '649-09-01', 6000, 1000, 'Shiva', 9123456799, 'Mahashivaratri', '06:00:00');
insert into temple_information values(12,'Siddhivinayak Temple', 'banglore', '1801-11-19', 12000, 1500, 'Ganesh', 9123456800, 'Ganesh Chaturthi', '05:00:00');
insert into temple_information values(13,'Chidambaram Temple', 'Chidambaram', '1200-02-02', 3500, 850, 'Nataraja', 9123456801, 'Karthigai Deepam', '07:30:00');
insert into temple_information values(14,'Kedarnath Temple', 'Kedarnath', '800-10-05', 2000, 500, 'Shiva', 9123456802, 'Maha Shivaratri', '06:30:00');
insert into temple_information values(15,'Ranganathaswamy Temple', 'Srirangam', '205-01-23', 18000, 1400, 'Ranganatha', 9123456803, 'Panguni Uthiram', '07:00:00');
insert into temple_information values(16,'KukkeSubramanya Temple', 'Kukke', '1550-07-04', 5000, 1000, 'Subramanya', 9123456804, 'Nag Panchami', '08:00:00');
insert into temple_information values(17,'Baba Vanga Temple', 'Vrindavan', '1850-09-29', 4000, 950, 'Krishna', 9123456805, 'Holi', '07:00:00');
insert into temple_information values(18,'Kali Temple', 'Kolkata', '1800-06-15', 6000, 1200, 'Kali', 9123456806, 'Durga Puja', '05:30:00');
insert into temple_information values(19,'Kushinagar Temple', 'Kushinagar', '500-02-20', 3000, 1100, 'Buddha', 9123456807, 'Buddha Jayanti', '06:00:00');
insert into temple_information values(20,'Sri Aurobindo Ashram', 'Pondicherry', '1926-01-01', 5000, 800, 'Sri Aurobindo', 9123456808, 'Aurobindo Day', '08:00:00');
desc temple_information;
alter table temple_information modify opening_time time not null;
alter table temple_information add constraint established_year_uni unique(established_year);
alter table temple_information add constraint temple_id_chk check(temple_id>=1),add constraint no_of_visiter_chk check(no_of_visiter>=1);


create table market_information(m_id int not null,c_id int not null,m_name varchar(30) unique ,m_location varchar(30) unique,
daily_visiter int check(daily_visiter>=100),cost_items int check(cost_items>=50),phneno bigint,entry_free bigint,opening_time time,email varchar(30));
select * from market_information;

insert into market_information values (1, 101, 'Central Market', 'Downtown', 1500, 200, 9123456789, 0, '08:00:00', 'info@centralmarket.com');
insert into market_information values(2, 102, 'Greenwich Market', 'Uptown', 1200, 180, 9123456790, 50, '09:00:00', 'contact@greenwichmarket.com');
insert into market_information values(3, 103, 'Old Town Bazaar', 'Eastside', 2000, 150, 9123456791, 0, '07:30:00', 'info@oldtowngroup.com');
insert into market_information values(4, 104, 'Harbor Market', 'West End', 1800, 250, 9123456792, 100, '08:30:00', 'support@harbormarket.com');
insert into market_information values(5, 105, 'City Square Market', 'Central Park', 2500, 300, 9123456793, 75, '10:00:00', 'info@citysquaremarket.com');
insert into market_information values(6, 106, 'Riverside Market', 'Riverside', 1700, 160, 9123456794, 25, '06:00:00', 'contact@riversidemarket.com');
insert into market_information values(7, 107, 'Sunset Market', 'Sunset Boulevard', 1300, 140, 9123456795, 50, '09:30:00', 'info@sunsetmarket.com');
insert into market_information values(8, 108, 'Plaza Market', 'Plaza', 2200, 200, 9123456796, 100, '07:00:00', 'support@plazamarket.com');
insert into market_information values(9, 109, 'Market Street', 'Market Street', 1600, 180, 9123456797, 0, '08:00:00', 'info@marketstreet.com');
insert into market_information values(10, 110, 'Northside Market', 'Northside', 1400, 150, 9123456798, 30, '07:00:00', 'contact@northside.com');
insert into market_information values(11, 111, 'West End Market', 'West Ending', 1900, 220, 9123456799, 70, '10:00:00', 'info@westendmarket.com');
insert into market_information values(12, 112, 'South Park Market', 'South Park', 2100, 170, 9123456800, 20, '09:00:00', 'contact@southparkmarket.com');
insert into market_information values(13, 113, 'East Village Market', 'East Village', 1300, 180, 9123456801, 60, '08:00:00', 'info@eastvillagemarket.com');
insert into market_information values(14, 114, 'Grand Central Market', 'Grand Central', 2000, 190, 9123456802, 0, '07:30:00', 'support@grandcentralmarket.com');
insert into market_information values(15, 115, 'The Bazaar', 'The Plaza', 1600, 150, 9123456803, 40, '08:00:00', 'info@thebazaar.com');
insert into market_information values(16, 116, 'City Market', 'City Center', 1700, 220, 9123456804, 90, '06:00:00', 'contact@citymarket.com');
insert into market_information values(17, 117, 'Town Market', 'Town Center', 1500, 160, 9123456805, 50, '09:00:00', 'info@townmarket.com');
insert into market_information values(18, 118, 'Central Bazaar', 'Central City', 1400, 180, 9123456806, 30, '08:00:00', 'support@centralbazaar.com');
insert into market_information values(19, 119, 'High Street Market', 'High Street', 2000, 210, 9123456807, 80, '07:00:00', 'info@highstreetmarket.com');
insert into market_information values(20, 120, 'Downtown Market', 'Downtowning', 1900, 170, 9123456808, 0, '08:30:00', 'contact@downtownmarket.com');
desc market_information;
alter table market_information modify m_name varchar(20) not null;
alter table market_information add constraint phneno_uni unique(phneno);
alter table market_information add constraint m_id_chk check(m_id>=1),add constraint c_id_chk check(c_id>=100);


create table merto_information(metro_id int not null,customer_id int not null,metro_name varchar(30) unique,country varchar(20)unique,
total_stations int check(total_stations>=12),ticket int check(ticket>=90),no_of_lines int,phno bigint,seat bigint,operator varchar(20));
select * from merto_information;

insert into merto_information values(1, 101, 'MetroLine 1', 'USA', 20, 100, 5, 1234567890, 5000, 'MetroCorp');
insert into merto_information values(2, 102, 'City Metro', 'UK', 15, 120, 4, 1234567891, 4500, 'CityTransit');
insert into merto_information values(3, 103, 'Downtown Metro', 'Canada', 18, 110, 6, 1234567892, 5500, 'Downtown Services');
insert into merto_information values(4, 104, 'Urban Express', 'Australia', 25, 150, 8, 1234567893, 6000, 'UrbanTransit');
insert into merto_information values(5, 105, 'Central Metro', 'Germany', 22, 95, 7, 1234567894, 5200, 'CentralTransit');
insert into merto_information values(6, 106, 'Green Metro', 'France', 16, 130, 5, 1234567895, 4800, 'GreenLine');
insert into merto_information values(7, 107, 'Skyline Metro', 'Japan', 30, 140, 9, 1234567896, 7000, 'Skyline Networks');
insert into merto_information values(8, 108, 'River Metro', 'China', 12, 100, 3, 1234567897, 4000, 'RiverTransit');
insert into merto_information values(9, 109, 'Metro City', 'India', 24, 110, 6, 1234567898, 5500, 'MetroCity Ltd.');
insert into merto_information values(10, 110, 'Highway Metro', 'South Korea', 20, 90, 5, 1234567899, 5300, 'Highway Express');
insert into merto_information values(11, 111, 'MetroNet', 'Brazil', 21, 125, 7, 2345678901, 6000, 'MetroNet Services');
insert into merto_information values(12, 112, 'Future Metro', 'Italy', 17, 115, 4, 2345678902, 4700, 'Future Transport');
insert into merto_information values(13, 113, 'Express Metro', 'Spain', 14, 140, 5, 2345678903, 4900, 'Express Transit');
insert into merto_information values(14, 114, 'Capital Metro', 'Mexico', 26, 105, 8, 2345678904, 5600, 'Capital Lines');
insert into merto_information values(15, 115, 'Speed Metro', 'Russia', 19, 135, 6, 2345678905, 5100, 'SpeedTransport');
insert into merto_information values(16, 116, 'Sky Metro', 'South Africa', 15, 95, 5, 2345678906, 4800, 'SkyTransit');
insert into merto_information values(17, 117, 'Golden Metro', 'Turkey', 28, 120, 7, 2345678907, 6200, 'GoldenLines');
insert into merto_information values(18, 118, 'Metro Express', 'Saudi Arabia', 23, 100, 6, 2345678908, 5000, 'Metro Express');
insert into merto_information values(19, 119, 'Transit Metro', 'UAE', 18, 125, 4, 2345678909, 4600, 'TransitNet');
insert into merto_information values(20, 120, 'Bright Metro', 'Singapore', 12, 110, 3, 2345678910, 4200, 'BrightTransit');

use Allow;
desc merto_information;
alter table merto_information modify operator varchar(20) not null;
alter table merto_information add constraint phno_uni unique(phno);
alter table merto_information add constraint seat_chk check(seat>=1),add constraint no_of_lines_chk check(no_of_lines>=1);