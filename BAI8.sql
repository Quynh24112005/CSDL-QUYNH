USE joinquery;

SELECT customer.cust_name, customer.city, customer.grade, salesman.name AS "Salesman", salesman.city
FROM customer
LEFT JOIN salesman
ON customer.salesman_id = salesman.salesman_id 
WHERE customer.grade < 300
ORDER BY customer.customer_id ASC;