use sinudb;

create table tt (id int);
insert into tt values(1);
insert into tt values(2);

start transaction;
insert into tt values(3);
insert into tt values(4);
insert into tt values(5);

rollback;

SELECT * FROM sinudb.tt;


set sql_safe_updates=0;
delete from tt;

SELECT * FROM sinudb.tt;

#savepoint

start transaction;

insert into tt values(1);

insert into tt values(2);

savepoint two;

insert into tt values(3);

insert into tt values(4);

savepoint four;

insert into tt values(5);

insert into tt values(6);

SELECT * FROM sinudb.tt;

rollback to four;

SELECT * FROM sinudb.tt;

rollback to two;

SELECT * FROM sinudb.tt;

commit;

SELECT * FROM sinudb.tt;






