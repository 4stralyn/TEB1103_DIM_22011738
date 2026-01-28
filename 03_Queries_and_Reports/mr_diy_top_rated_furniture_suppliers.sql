SET LINESIZE 250
SET PAGESIZE 50
SET FEEDBACK ON

SELECT *
FROM (
    SELECT
        p.FullName AS PersonName,       -- Person
        e.EmploymentStatus,             -- Employee (constraint)
        c.AccountStatus,                -- Customer (constraint)
        pr.Category,                    -- Product (constraint)
        s.SupplierRating,               -- Supplier (constraint)
        proc.BusinessLicenseNo,         -- Procurement
        b.BranchCode,                   -- Branch
        i.StockKeepingUnit              -- Inventory
    FROM Person p
    JOIN Employee e ON p.PersonID = e.PersonID AND p.NationalID = e.NationalID
    JOIN Supplier s ON s.EmployeeID = e.EmployeeID AND s.WorkEmail = e.WorkEmail
    JOIN Procurement proc ON proc.SupplierID = s.SupplierID AND proc.BusinessLicenseNo = s.BusinessLicenseNo
    JOIN Branch b ON proc.BranchCode = b.BranchCode AND proc.RegionCode = b.RegionCode
    LEFT JOIN Inventory i ON i.BranchCode = b.BranchCode AND i.RegionCode = b.RegionCode
    LEFT JOIN Product pr ON pr.ProductCode = i.ProductCode AND pr.StockKeepingUnit = i.StockKeepingUnit
    JOIN Customer c ON c.ProgramID = b.ProgramID AND c.TierCode = b.TierCode
    WHERE e.EmploymentStatus = 'Full-Time'
      AND c.AccountStatus = 'Active'
      AND pr.Category = 'Furniture'
      AND s.SupplierRating >= 4
    ORDER BY s.SupplierRating DESC
);
