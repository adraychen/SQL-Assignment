-- Query the average order value for each table --

SELECT
    o.tablenumber,
    AVG(o.totalprice) AS average_order
FROM
    orders o
GROUP BY
    o.tablenumber
ORDER BY
average_order DESC
