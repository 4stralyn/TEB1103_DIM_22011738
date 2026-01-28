-- @C:\Users\User\Documents\mr_diy_current_stock_report.sql

-- setup so that the table looks organize
SET LINESIZE 120
SET PAGESIZE 14
SET TAB OFF
SET NUMWIDTH 15
SET FEEDBACK ON
SET DEFINE OFF

-- This query is to find the product name and the current stock quantity of all products available in the inventory. It is also to list how much stock is left for each product to help with restocking decisions.

SELECT
	p.ProductName AS "Product",
	i.CurrentStockQTY AS "Current Stock"
FROM
	Product p
JOIN
	Inventory i ON p.ProductCode = i.ProductCode;