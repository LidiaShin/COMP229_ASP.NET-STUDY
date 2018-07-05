select sum(retail-cost),category
from books
group by CATEGORY;

select avg(cost) "??? ????",category
from books
group by CATEGORY;

select count(category) "???? ??"
from books;

select round(stddev(pubid),2) "????"
from books;

select name,category,avg(retail)
from publisher
join books using(pubid)
group by grouping sets
(name,category,
(name,category),());


select avg(retail),category
from books
group by category
having avg(retail) > 30;


select sum((paideach-cost)) "Total Profit",category
from orderitems join books using (isbn)
group by category;

select sum(retail-cost) "Total Profit",category
from orderitems 
join books using (isbn)
join orders using(order#)
group by category;


select TO_CHAR(avg(retail-cost),'9999.9999999') "average profit",category
from books
where category ='COMPUTER'
group by category;

select avg(nvl(mgr,100))
from employees;

select avg(mgr)
from employees;

select count(distinct pubid),count(distinct category)
from books;

select count(DISTINCT CATEGORY)
from BOOKS
where DISCOUNT IS NULL;

SELECT TITLE,SUM(RETAIL-COST) "HIGHTST PROFIT"
FROM BOOKS
GROUP BY TITLE;

SELECT LASTNAME,CUSTOMER#,ORDER#,SUM(QUANTITY*PAIDEACH) "TOTAL"
FROM ORDERS 
JOIN ORDERITEMS USING(ORDER#)
JOIN CUSTOMERS USING(CUSTOMER#)
GROUP BY CUSTOMER#,ORDER#,LASTNAME;


SELECT CATEGORY,AVG(RETAIL-COST)"PROFIT"
FROM BOOKS
GROUP BY CATEGORY
HAVING AVG(RETAIL-COST)>20;


select lastname,customer#,order#,sum(quantity* paideach) "OrderTotal"
from orders 
join orderitems using (order#)
join customers using(customer#)
group by customer#,order#,lastname
HAVING sum(quantity*paideach)=100;


select category,avg(retail-cost) "profit"
from books
where category in('COMPUTER','CHILDREN','BUSINESS')
GROUP BY CATEGORY
HAVING AVG(RETAIL-COST)>15;


SELECT CUSTOMER#,AVG(SUM(QUANTITY*PAIDEACH)) "AVG ORDER TOTAL"
FROM ORDERS 
JOIN ORDERITEMS USING (ORDER#)
JOIN CUSTOMERS USING (CUSTOMER#)
GROUP BY GROUPING SETS(CUSTOMER#,ORDER#);

select pubdate
from books
where category = 'COOKING';

SELECT PUBDATE
FROM BOOKS
WHERE category = 'COOKING';

ORDER BY PUBDATE DESC;

SELECT COUNT(*)
FROM BOOKS
WHERE DISCOUNT IS NULL;


SELECT CUSTOMER#,COUNT(ORDER#)
FROM ORDERS
GROUP BY COUNT(ORDER#);

SELECT CUSTOMER#,COUNT(ORDER#)
FROM ORDERS
GROUP BY CUSTOMER#;

SELECT TITLE,MAX(RETAIL-COST)
FROM BOOKS
GROUP BY TITLE
HAVING MAX(RETAIL-COST);

SELECT AVG(PUBDATE)
FROM BOOKS;

select STATE,COUNT(ZIP)
from customers join orders using(customer#)
where orderdate>'02-APR-09'
GROUP BY CUSTOMER#;

select firstname,lastname
from bb_shopper;



DECLARE
FIRSTDATE DATE :='16-JUN-2018';
SECONDDATE DATE := '27-DEC-2018';
MONTHNUMB NUMBER(3);
BEGIN
MONTHNUMB := MONTHS_BETWEEN(SECONDDATE,FIRSTDATE);
DBMS_OUTPUT.PUT_LINE(66/MONTHNUMB);
END;


declare
knum number(3) :=1;
begin
loop
DBMS_OUTPUT.PUT_LINE (knum);
   exit when knum>10;
   knum :=knum + 1;
  END LOOP;
  end;
  
  create or replace view outstanding
  as select customer#,order#,orderdate,shipdate
  from orders
  where shipdate IS NULL;
  
  UPDATE OUTSTANDING
  SET SHIPDATE ='06-APR-09' 
  WHERE ORDER#=1012;
  
  SELECT * 
  FROM OUTSTANDING;
  
  CREATE VIEW REGION_NE
  AS SELECT * FROM CUSTOMERS WHERE REGION ='NE';
  
  SELECT CUSTOMER# FROM REGION_NE;