--Query the total revenue, total expenses, and profit for each month--

SELECT
    EXTRACT(MONTH FROM o.orderdate) AS month,
    SUM(mi.price * o.quantity) AS revenue,
    SUM(mi.cost * o.quantity) AS expenses,
	SUM(mi.price * o.quantity) - SUM(mi.cost * o.quantity) AS profit
FROM
    orders o
JOIN
    menuitems mi ON o.itemid = mi.itemid
GROUP BY
    EXTRACT(MONTH FROM o.orderdate)
ORDER BY
    month
