USE joinquery;

SELECT Customer.cust_name, Customer.city, Orders.ord_no,
Orders.ord_date, Orders.purch_amt AS "Order Amount", 
Salesman.name, Salesman.commission
FROM Customer
LEFT OUTER JOIN Orders
	ON orders.customer_id = Customer.customer_id
LEFT OUTER JOIN Salesman
	ON orders.salesman_id = Salesman.salesman_id
