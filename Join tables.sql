use sinudb;
select * from movies;
select * from members;

#inner join
select id, title, category,memid,first_name,last_name,movieid from movies inner join members on movies.id = members.movieid; 
#or simpler form
# inner join or join both gives same results
select id, title, first_name, last_name from movies join members on movies.id = members.movieid;

#left join
select id,title, category, first_name, last_name, movieid from movies left join members on movies.id = members.movieid;

select id,title, category, first_name, last_name,memid from movies left join members on movies.id = members.movieid;

select movies.*,members.* from movies left join  members on movies.id = members.movieid;

select * from movies left join members on movies.id= members.movieid;

#right join
select id,title, category, first_name, last_name, movieid from movies right join members on movies.id = members.movieid;

select * from movies right join members on movies.id= members.movieid;

select members.*,movies.* from movies right join  members on movies.id = members.movieid order by memid;

select mm.first_name,mm.last_name,mv.id,mv.title,mv.category from movies as mv right join members as mm on mv.id=mm.movieid;
#cross join

select mealname,drinkname from meals cross join drinks;

select meals.mealname,meals.rate,drinks.drinkname,drinks.rate from meals cross join drinks;

select m.mealname,m.rate,d.drinkname,d.rate,m.rate+d.rate as Total from meals as m cross join drinks as d;

select m.mealname,d.drinkname,m.rate+d.rate as Total from meals as m cross join drinks as d;

#self join

select emp.emp_id,emp.first_name,emp.last_name,mgr.mgr_id,mgr.first_name,mgr.last_name 
from myemp as emp join myemp as mgr
on emp.mgr_id=mgr.emp_id ;

