use sinudb;
show tables;
SET SQL_SAFE_UPDATES=0;

rename table class10 to students;
insert into students values (18,'Virat','Cricket',100);
insert into students values (17,'ABD','Cricket',null);
insert into students (S_id,sname,marks) values(5,'Lara',100);
insert into students values(6,'Harry','DS',98),(7,'Maya','DA',99),(8,'BA','Neha',90);
insert into students values (45,'Rohit','Hitting',60);


update students set sname = 'Dhoni' where std_id =7;
update students set course ='Captaincy' where std_id=7;
update students set marks = 50 where marks is null;
update students set course = 'Cricket' where course is null;
update students set marks=70 where marks is null;
update students set sname='shriniwas',marks=90 where std_id=1;
update students set sname='Rishabh',course='Keeping' where std_id =45;
update students set marks = 99 where sname='anand';
update students set course='cricket';

delete from students where std_id = 6;
delete from students where std_id = 8;
delete from students where std_id=45;

delete from students where marks < 60;


