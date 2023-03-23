select * from sales;

select * from people;

select s.SaleDate , s.Amount, p.Salesperson
from sales s
join people p on
p.SPID = s.SPID;

-- Product name that we are selling in this shipment

select s.SaleDate, s.Amount, pr.Product
from sales s
left join products pr on pr.pid = s.pid;

-- Multiple Table joins
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid;

-- Joins with conditions
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.Amount <500
and p.Team = 'Delish';

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.Amount <500
and p.Team = '';

-- People from India or NewZealand
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
join geo g on g.GeoID = s.GeoID
where s.Amount <500
and p.Team = ''
and g.Geo in ( 'New ZeaLand' , 'India')
order by SaleDate;
