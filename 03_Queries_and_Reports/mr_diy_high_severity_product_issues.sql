CREATE OR REPLACE VIEW View_ProductComplaints AS
SELECT
    P.ProductCode,              
    I.InventoryCode,            
    C.ComplaintID,              
    P.ProductName,
    I.CurrentStockQTY,
    C.ComplaintType,
    C.ResolutionStatus
FROM 
    Product P
    JOIN Inventory I
        ON P.ProductCode = I.ProductCode
    JOIN Complaint C
        ON I.InventoryCode = C.InventoryCode
WHERE
    C.SeverityLevel = 'High';

SELECT * FROM View_ProductComplaints;
