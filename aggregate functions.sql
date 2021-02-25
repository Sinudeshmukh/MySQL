use sinudb;

select max(salary) from myemp;

select dep_id, max(salary) from myemp group by dep_id;

select dep_id, min(salary) from myemp group by dep_id;

select dep_id,mgr_id , max(salary) from myemp group by dep_id, mgr_id;

select dep_id,mgr_id , max(salary) from myemp group by mgr_id;

select dep_id,mgr_id , max(salary),min(salary) from myemp group by dep_id, mgr_id;

#order by


select * from myemp order by FIRST_NAME;

select * from myemp order by FIRST_NAME desc;

select * from myemp order by salary desc;

select * from myemp order by HIRE_DATE desc;

select distinct dep_id from myemp order by dep_id;

select LAST_NAME,FIRST_NAME from myemp order by LAST_NAME,FIRST_NAME;

select dep_id, mgr_id from myemp order by dep_id, mgr_id;

select dep_id, mgr_id from myemp order by dep_id desc, mgr_id;

select * from myemp order by left(LAST_NAME,1),FIRST_NAME;




