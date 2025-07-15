USE joinquery;

SELECT Customer.cust_name, Customer.city, Orders.ord_no,
Orders.ord_date, Orders.purch_amt AS "Order Amount" 
FROM Customer 
LEFT OUTER JOIN Orders 
ON Customer.customer_id = Orders.customer_id
WHERE Customer.grade IS NOT NULL;