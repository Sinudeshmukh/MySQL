show databases;
create database sinudb;
show databases;
use sinudb;
show tables;
create table students(
std_id integer,
sname char(20),
age int,
course char(20));
desc students;
insert into students values(1,'sinu',21,'Data Science');
insert into students values(2,'Anand',40,'BA');
select * from students;
use sinudb;
create table patients(pid integer, pname varchar(20), DOB Date, TOA datetime);
insert into patients values(1,'Pat', '1960-06-23' , '2021-02-18 07:30:00');
select now();
insert into patients values(2,'Mat', '1950-12-12' , now());

alter table students add column marks integer;
alter table students drop column age;
select * from students;

alter table students change std_id S_id integer;
alter table students rename to myclass;

show tables;

rename table myclass to Students;

show tables; 

insert into patients values (3,'Tom', '1995-08-22','2021-02-19 08:35:00');
insert into patients values(4,'Bobby','1944-02-24',now());

select adddate(dob, interval 31 day) from patients;

create table 10_C (Roll_NO integer, Name varchar(20), Address varchar(255), Mob_No char(10));

insert into 10_C values (1,'Aakash','Pune',8888881212);

desc students;

alter table students add column grades varchar(3);
alter table students drop grades;
alter table students change stdid std_id varchar(255);          
alter table students modify column sname varchar(255);    
alter table students rename to Class10;                                