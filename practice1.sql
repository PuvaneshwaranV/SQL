create database puvi;
use puvi;
create table details(std_id int primary key auto_increment,std_name varchar(20),dept char(3),fees int default 10000);
alter table details auto_increment=100;
insert into details(std_name,dept) values
('dhoni','CVL'),
('virat','EEE'),
('raina','ECE'),
('sumathi','CVL'),
('sospin','ECE');
delete from details where std_id>3;
select * from details;
select * from details where std_name LIKE 'p%' AND fees=10000;
select dept,count(dept) as count from details group by dept order by count desc;