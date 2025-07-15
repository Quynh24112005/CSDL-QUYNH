USE joinquery;

SELECT c.cust_name, c.city, c.grade,
s.name AS "Salesman",
o.ord_no, o.ord_date, o.purch_amt
FROM customer c
LEFT OUTER JOIN salesman s 
ON c.salesman_id = s.salesman_id
LEFT OUTER JOIN orders o
ON o.customer_id = c.customer_id;