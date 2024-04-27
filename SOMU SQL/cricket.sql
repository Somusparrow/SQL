use somu
create table cartoon(
id int,
name varchar(50),
age int,
runs int,
strikerate int,
)
insert into cartoon values
(1,'Virat Kohli',33,120,200),
(2,'Rohit Sharma',34,96,192),
(3,'KL Rahul',29,80,190),
(4,'Rishabh Pant ',24,100,188),
(5,'Shubman Gill',22,70,160),
(6,'Ravindra Jadeja',33,50,160),
(7,'Ravichandran Ashwin',35,36,150),
(8,'Mayank Agarwal',31,30,120),
(9,'Jasprit Bumrah', 28,25,100),
(10,'Mohammed Shami',31,20,110),
(11,'Cheteshwar Pujara ',34,10,115)
select * from cartoon
select id from cartoon
select distinct * from cartoon
select * from cartoon where id=3
select * from cartoon order by age asc
select * from cartoon order by name asc
select * from cartoon order by name desc

--logical opertor
select * from cartoon where name='Shubman Gill' and id=5
select * from cartoon where not name='Shubman Gill'

--top 5 rows
select top 5 * from cartoon

--aggregate functions
select sum(runs) from cartoon
select avg(runs) from cartoon
select min(runs) from cartoon
select * from cartoon where runs=(select max(runs) from cartoon)
select count (id) from cartoon

--like and wildcard_%
select * from cartoon where name like 's%'
select * from cartoon where name like '%a'
select * from cartoon where name like '%d%'
select * from cartoon where name like '_a%'
select * from cartoon where name like '%_l'
select * from cartoon where name like '[a-t]%'
select * from cartoon where name like '[^a-m]%'
select * from cartoon where name like '[abc]%'

--aliases
select id as empid from cartoon

--update
update cartoon set strikerate= 130 where id=5
select * from cartoon
alter table cartoon drop column email

--rename