use sinudb;
select count(*) from students;
	
#first 10 rows
select * from myemp limit 10;

#start from 5 and limit next 10 rows 
select * from myemp limit 5,10;

select first_name, last_name, salary from myemp limit 10;

#alias only for display purpose
#opr on column for additional column to display
select FIRST_NAME, LAST_NAME , SALARY , SALARY*0.10 as Bonus from myemp limit 10;

select concat(first_name,'',last_name), salary from myemp limit 10;

select concat(first_name,'',last_name) as EmpName, salary from myemp limit 10;

select * from myemp;

select distinct dep_id from myemp;

select * from myemp where dep_id=50;

select * from myemp where salary > 10000;

select * from myemp where salary > 10000;

select * from myemp where salary >= 10000;

select * from myemp where job_id != 'ad_vp';
#another not operator <>

select * from myemp where commission_pct <> 0;

insert into patients values (5,'aj','2020-12-12',null);

select * from patients where toa is null;
#instead of is we can use <=>
select * from patients where toa is not null;

select * from myemp where salary between 10000 and 15000;

#like operator % , _
#all values starting with a
select * from myemp where first_name like 'a%';

#all values ending with d
select * from myemp where first_name like '%d';

#all values containing with c
select * from myemp where first_name like '%c%';

#fill the blank spaces
select * from myemp where first_name like 'j____';

select * from myemp where first_name like '____a';

#Operators NOT AND OR 

select * from myemp where dep_id = 50 and salary > 5000;

select * from myemp where dep_id = 60 or salary > 30000;

select * from myemp where dep_id=10 or dep_id=30 or dep_id=80;
#also can be done with

select * from myemp where dep_id in (10,30,80);

select * from myemp where dep_id not in (10,30,80);
