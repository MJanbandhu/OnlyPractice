show databases;
use employee;

show tables;

select * from sales;

select max(profit) from sales where profit <(select max(profit) from sales where profit <( select max(profit) from sales));
select max(profit) from sales order by profit desc limit 5; -- the error becouse of max()

select profit from sales order by profit desc limit 5;

select distinct profit from sales order by profit desc limit 5;

select max(profit)-min(profit) from sales;

select count(profit) from sales;
select sum(profit) from sales;
select avg(profit) from sales;
select max(profit) from sales;
select min(profit) from sales;

select length(profit) from sales;

-- Statistical agreegate
SELECT STDDEV(profit) FROM sales;
SELECT GROUP_CONCAT(category) FROM sales;
SELECT
    COUNT(CASE WHEN profit > 0 THEN 1 END) AS profitable_sales
FROM sales;


/* -- String functions

LEN() / LENGTH()

UPPER()

LOWER()

SUBSTRING()

TRIM()

REPLACE()

CONCAT() 
*/
-- Mohit Janbandhu