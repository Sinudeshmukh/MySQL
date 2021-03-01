use sinudb;
select * from myemp;

select emp_id, first_name, job_id, salary from myemp;

create view myview as select emp_id, first_name, job_id, salary from myemp;

select * from myview;

select mv.id, mv.title, ifnull(mm.first_name,'-') as Fname, ifnull(mm.last_name,'-') as Lname from movies as mv left join members as mm on mv.id  = mm.movieid;

create view Store_members as select mv.id, mv.title, ifnull(mm.first_name,'-') as Fname, ifnull(mm.last_name,'-') as Lname from movies as mv left join members as mm on mv.id  = mm.movieid;

select * from Store_members;

create view dep_60 as select * from myemp where dep_id = 60;

select * from dep_60;

create view authors1 as select * from authors where authorid < 10;

select * from authors1;

#updatable view

insert into authors1 values (11,'Umesh Kundgar');

select * from authors;

insert into authors1 values (9,'Shriniwas');

select * from authors1;

 drop view authors1;
 
 create view authors1 as select * from authors where authorid < 10 with check option;
 
 insert into authors1 values (12,'Umesh Kundgar');



