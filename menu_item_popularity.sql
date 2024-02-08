-- Query the menu items by their popularity in a month--

SELECT 
    m.itemid,
    m.itemname,
    EXTRACT(MONTH FROM o.orderdate) AS month,
    SUM(o.quantity) AS totalquantity
FROM 
    orders o
JOIN 
    menuitems m ON o.itemid = m.itemid
WHERE 
    EXTRACT(MONTH FROM o.orderdate) = 12
GROUP BY 
    m.itemid, m.itemname, EXTRACT(MONTH FROM o.orderdate)
ORDER BY 
    SUM(o.quantity) DESC