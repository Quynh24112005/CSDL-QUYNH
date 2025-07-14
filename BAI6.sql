USE joinquery;

SELECT Orders.ord_no, Orders.ord_date, orders.purch_amt, customer.cust_name AS "Customer Name", customer.grade, salesman.name, salesman.commission
FROM orders
INNER JOIN customer
ON orders.customer_id = customer.customer_id
INNER JOIN salesman
ON orders.salesman_id = salesman.salesman_id;

