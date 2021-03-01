use sinudb;

select count(*) from myemp;

select * from myemp limit10;

select * from myemp where hire_date > '2000-01-01';

create index hirx on myemp(hire_date);

select * from myemp where hire_date > '2000-01-01';

show indexes from myemp;

show indexes from students1;

desc students1;

show indexes from authors;

desc authors;

#full text index
create fulltext index fidx on products(pname);

#composite index

create index comp on myemp(first_name,last_name);
