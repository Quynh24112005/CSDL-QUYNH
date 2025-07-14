USE joinquery;

SELECT customer.cust_name, customer.city, orders.ord_no, orders.ord_date, orders.purch_amt AS "Order Amount"
FROM customer
LEFT OUTER JOIN Orders
ON customer.customer_id = orders.customer_id 
ORDER BY orders.ord_date ASC;