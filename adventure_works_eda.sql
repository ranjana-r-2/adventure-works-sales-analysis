SELECT * FROM salesdata LIMIT 10;

-- Check total rows
SELECT COUNT(*) AS TotalRows FROM salesdata;

-- Check for NULLs
SELECT * FROM salesdata 
WHERE ProductID IS NULL OR OrderID IS NULL;

-- Validate order totals (e.g., ensure OrderTotal = ProductPrice * OrderQuantity)
SELECT OrderID, OrderTotal, (ProductPrice * OrderQuantity) AS CalculatedTotal
FROM salesdata
WHERE OrderTotal != (ProductPrice * OrderQuantity);