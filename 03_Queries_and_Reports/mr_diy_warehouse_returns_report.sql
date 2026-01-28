SELECT 
    W.WarehouseName AS "Warehouse Name",
    COUNT(PR.ReturnID) AS "Total Returns",
    SUM(PR.RefundAmount) AS "Total Refunds"
FROM 
    Warehouse W
    JOIN ProductReturn PR
        ON W.WarehouseCode = PR.WarehouseCode 
        AND W.ZoneID = PR.ZoneID
    JOIN Complaint C
        ON PR.ComplaintID = C.ComplaintID 
        AND PR.CaseNumber = C.CaseNumber
    JOIN SalesTransaction ST
        ON PR.TransactionID = ST.TransactionID 
        AND PR.InvoiceNumber = ST.InvoiceNumber
WHERE
    W.WarehouseType = 'Central'
    AND C.SeverityLevel = 'High'
GROUP BY
    W.WarehouseName
ORDER BY
    W.WarehouseName ASC;
