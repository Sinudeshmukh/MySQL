use sinudb;
create table 10a (std_id int unique, sname varchar(20) not null, age int check(age>18), course varchar(20) );

desc 10a;

alter table 10a modify column sname varchar(20) not null default 'Not-Mentioned';

desc 10a