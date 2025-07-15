USE joinquery;

SELECT Customer.cust_name, Customer.city, customer.grade,
Salesman.name AS "Salesman", Salesman.city
FROM Customer
LEFT OUTER JOIN Salesman
ON customer.salesman_id = salesman.salesman_id
ORDER BY salesman.salesman_id;