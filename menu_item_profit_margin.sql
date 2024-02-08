-- Calculate the profit margin for each menu item--

SELECT
    m.itemid,
    m.itemname,
    m.category,
    m.price,
    m.cost,
    (m.price - m.cost) AS profitmargin
FROM
    menuitems m

ORDER BY profitmargin DESC
