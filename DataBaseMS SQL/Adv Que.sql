show databases;
use employee;
show tables;

select * from employee;
select * from sales;

select* from sales where Category="Furniture" and Quantity=2 ;

 -- -----------------------------------------------------------------
 use hr;
show tables;

select * from employees;
select * from hr;

-- ----------------------------------------------------------------------


-- Highest profot/salary
select max(profit) as max_profit from sales order by profit desc limit 5;

select distinct profit as three_higher_profit from sales order by profit desc limit 3;

select distinct profit from sales order by profit desc limit 3;
-- Second Highest profit/salary
select max(profit) from sales where profit <(select max(profit) from sales);



# highest five studend who scored high

select max(score), name from 



