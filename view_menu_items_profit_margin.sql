-- view to show menu items with profit margin --

CREATE VIEW vw_menu_profit_margin AS
SELECT itemid, itemname, price, cost, (price - cost) AS profit_margin
FROM menuitems
