USE amazon_sales_db;

SELECT *
FROM amazon_sales
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM amazon_sales;

SELECT
    SUM(TotalAmount) AS Total_Sales
FROM amazon_sales;


SELECT
    COUNT(DISTINCT OrderID) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Total_Customers,
    SUM(Quantity) AS Total_Units_Sold
FROM amazon_sales;

SELECT
    ROUND(SUM(TotalAmount) / COUNT(DISTINCT OrderID), 2) AS Average_Order_Value
FROM amazon_sales;

SELECT
    Category,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    ProductName,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY ProductName
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    CustomerID,
    CustomerName,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY CustomerID, CustomerName
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT
    OrderStatus,
    COUNT(*) AS Total_Orders
FROM amazon_sales
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

SELECT
    PaymentMethod,
    COUNT(*) AS Total_Orders
FROM amazon_sales
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

SELECT
    State,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT
    City,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY City
ORDER BY Total_Sales DESC;

SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;

SELECT
    Brand,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY Brand
ORDER BY Total_Sales DESC;

SELECT
    SellerID,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY SellerID
ORDER BY Total_Sales DESC;

SELECT
    Discount,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY Discount
ORDER BY Discount;

SELECT
    CASE
        WHEN Order_Count = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS Customer_Type,
    COUNT(*) AS Total_Customers
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT OrderID) AS Order_Count
    FROM amazon_sales
    GROUP BY CustomerID
) AS customer_orders
GROUP BY Customer_Type;

SELECT
    ProductName,
    SUM(Quantity) AS Total_Quantity_Sold
FROM amazon_sales
GROUP BY ProductName
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;


SELECT
    ROUND(AVG(Discount), 2) AS Average_Discount,
    ROUND(AVG(ShippingCost), 2) AS Average_Shipping_Cost
FROM amazon_sales;

SELECT
    OrderStatus,
    COUNT(DISTINCT OrderID) AS Total_Orders,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY OrderStatus
ORDER BY Total_Sales DESC;

SELECT
    PaymentMethod,
    COUNT(DISTINCT OrderID) AS Total_Orders,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales
FROM amazon_sales
GROUP BY PaymentMethod
ORDER BY Total_Sales DESC;

SELECT
    COUNT(DISTINCT OrderID) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Total_Customers,
    COUNT(DISTINCT ProductID) AS Total_Products,
    SUM(Quantity) AS Total_Units_Sold,
    ROUND(SUM(TotalAmount), 2) AS Total_Sales,
    ROUND(AVG(TotalAmount), 2) AS Average_Order_Value
FROM amazon_sales;