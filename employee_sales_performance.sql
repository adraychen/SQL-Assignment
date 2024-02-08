-- Query the aggregated amount of sales for each employee by month--

SELECT 
    e.employeeid, e.firstname, e.lastname,
    EXTRACT(MONTH FROM s.saledate) AS month,
    SUM(s.amount) AS totalamount
FROM 
    sales s
JOIN 
    employees e ON s.employeeid = e.employeeid
GROUP BY 
    e.employeeid, e.firstname, e.lastname, EXTRACT(MONTH FROM s.saledate)
ORDER BY 
    SUM(s.amount) DESC, month 
