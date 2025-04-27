USE SalesDB;
-- Total Sales by Product Category
CREATE VIEW salesdb.v_TotalSalesByProductCategory AS
SELECT ProductCategory, 
  SUM(OrderTotal) AS Total_Sales 
FROM salesdata
GROUP BY ProductCategory
ORDER BY Total_Sales DESC;

-- Orders by Status
CREATE VIEW salesdb.v_OrdersByStatus AS
SELECT 
  OrderStatus, 
  COUNT(OrderID) AS Order_Count 
FROM salesdata
GROUP BY OrderStatus;

-- Top-Selling Products
CREATE VIEW salesdb.v_TopSellingProducts AS
SELECT 
  ProductName, 
  SUM(OrderQuantity) AS Total_Quantity_Sold,
  SUM(OrderTotal) AS Total_Revenue
FROM salesdata
GROUP BY ProductName
ORDER BY Total_Revenue DESC;

-- Daily sales trend
CREATE VIEW salesdb.v_DailySalesTrend AS
SELECT 
    OrderDate, 
    SUM(OrderTotal) AS DailySales 
FROM salesdata
GROUP BY OrderDate
ORDER BY OrderDate;

-- Overall payment method adoption
CREATE VIEW salesdb.v_PaymentMethodAdoption AS
SELECT 
    PaymentMethod,
    COUNT(OrderID) AS TotalOrders,
    SUM(OrderTotal) AS TotalRevenue,
    ROUND(COUNT(OrderID) * 100.0 / SUM(COUNT(OrderID)) OVER (), 2) AS OrderPercentage
FROM salesdata
GROUP BY PaymentMethod
ORDER BY TotalOrders DESC;

-- Customer lifetime value (CLV)
CREATE VIEW salesdb.v_CustomerLifetimeValue AS
SELECT 
    CustomerID,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(OrderTotal) AS TotalSpent,
    AVG(OrderTotal) AS AvgOrderValue
FROM salesdata
GROUP BY CustomerID
ORDER BY TotalSpent DESC;

-- Revenue by Product Subcategory
CREATE VIEW salesdb.v_RevenueByProductSubcategory AS
SELECT 
  ProductCategory,
  ProductSubcategory, 
  SUM(OrderTotal) AS Total_Revenue,
  ROUND(SUM(OrderTotal) * 100 / (SELECT SUM(OrderTotal) FROM salesdata), 2) AS RevenuePercentage
FROM salesdata
GROUP BY ProductCategory, ProductSubcategory;

-- Average Price by Category
CREATE VIEW salesdb.v_AveragePriceByCategory AS
SELECT 
  ProductCategory,
  AVG(ProductPrice) AS AvgPrice
FROM salesdata
GROUP BY ProductCategory;

-- Price Distribution
CREATE VIEW salesdb.v_PriceDistribution AS
SELECT 
  MIN(ProductPrice) AS MinPrice,
  MAX(ProductPrice) AS MaxPrice,
  AVG(ProductPrice) AS AvgPrice,
  STDDEV(ProductPrice) AS PriceStdDev
FROM salesdata;

-- Weight vs. Price Correlation
CREATE VIEW salesdb.v_WeightVsPriceCorrelation AS
SELECT 
  (AVG(ProductPrice * ProductWeight) - AVG(ProductPrice) * AVG(ProductWeight)) /
  (STDDEV(ProductPrice) * STDDEV(ProductWeight)) AS PriceWeightCorrelation
FROM salesdata;

-- Heaviest Products
CREATE VIEW salesdb.v_HeaviestProducts AS
SELECT 
  ProductName,
  ProductWeight
FROM salesdata
ORDER BY ProductWeight DESC
LIMIT 5;

-- Most Common Sizes
CREATE VIEW salesdb.v_MostCommonSizes AS
SELECT 
  ProductSize,
  COUNT(*) AS SizeCount
FROM salesdata
GROUP BY ProductSize
ORDER BY SizeCount DESC;

-- Average Price by Size
CREATE VIEW salesdb.v_AveragePriceBySize AS
SELECT 
  ProductSize,
  AVG(ProductPrice) AS AvgPrice
FROM salesdata
GROUP BY ProductSize;

-- Price-to-Weight Ratio
CREATE VIEW salesdb.v_PriceToWeightRatio AS
SELECT 
  ProductName,
  ProductPrice / ProductWeight AS PricePerWeight
FROM salesdata
ORDER BY PricePerWeight DESC;

-- Size Impact on Sales
CREATE VIEW salesdb.v_SizeImpactOnSales AS
SELECT 
  ProductSize,
  SUM(OrderTotal) AS TotalRevenue,
  AVG(OrderQuantity) AS AvgOrderQuantity
FROM salesdata
GROUP BY ProductSize;



