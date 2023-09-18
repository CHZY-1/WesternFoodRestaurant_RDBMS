COLUMN "Supplier ID" FORMAT A12
COLUMN "Supplier Name" FORMAT A30
COLUMN totalQuantitySold FORMAT 9999

TTITLE LEFT ' Total Quantity of Items Sold by Supplier' SKIP 2
BTITLE LEFT 'Page: ' FORMAT 999 SQL.PNO
SET PAGESIZE 15
SET LINESIZE 100

CREATE OR REPLACE VIEW SupplierSalesSummary AS
SELECT s.supplierID as "Supplier ID", s.supplierName as "Supplier Name", SUM(oi.orderQuantity) AS totalQuantitySold
FROM Suppliers S
JOIN Ingredients i ON s.supplierID = i.supplierID
JOIN ItemIngredients ii ON i.ingredientID = ii.ingredientID
JOIN OrderItems oi ON ii.itemsID = oi.itemsID
GROUP BY s.supplierID, s.supplierName
ORDER BY totalQuantitySold DESC;