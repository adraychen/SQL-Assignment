--view to show employee performance metrics--

CREATE VIEW vw_employee_performance AS
SELECT e.employeeid, e.firstname, e.lastname, e.position, 
       COUNT(s.saleid) AS total_sales,
       SUM(s.amount) AS total_sales_amount,
       AVG(s.amount) AS average_sale_amount
FROM employees e
LEFT JOIN sales s ON e.employeeid = s.employeeid
GROUP BY e.employeeid, e.firstname, e.lastname, e.position