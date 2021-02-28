use sinudb;

create table mytab (id int primary key auto_increment, name varchar(30),age int);

desc mytab;

insert into mytab (name,age) values ('Harry',12);

select * from mytab;

insert into mytab (name,age) values ('Joe',11);

insert into mytab (name,age) values ('Harmaine',12);


select * from mytab;

alter table mytab auto_increment = 10;

insert into mytab (name,age) values ('Adam',24);

select * from mytab;

insert into mytab (name,age) values ('Alex',34);

select * from mytab;




