select GeoID, sum(amount), avg(Amount), sum(Boxes)
from sales
group by GeoID ;

select g.geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.geo;


select pr.Category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.category, p.team;

select pr.Category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <> ''
group by pr.category, p.team
order by pr.category, p.team;

select pr.Product, sum(Amount) as 'Total Amount'
from sales s 
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10;
