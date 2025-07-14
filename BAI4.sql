USE joinquery;

SELECT Customer.cust_name AS "Customer Name", Customer.city, Salesman.name AS "Salesman", Salesman.commission
FROM Customer, Salesman
WHERE salesman.salesman_id = customer.salesman_id 
AND  Salesman.commission > 0.12;