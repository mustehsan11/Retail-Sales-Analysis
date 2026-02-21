/* CLEANING THE DATA */
SELECT 
    COUNT(*) FILTER (WHERE Description IS NULL) AS null_description,
    COUNT(*) FILTER (WHERE CustomerID IS NULL) AS null_customerid
FROM online_retail;

SELECT COUNT(*)
FROM online_retail
WHERE Quantity <= 0;

SELECT COUNT(*)
FROM online_retail
WHERE InvoiceNo LIKE 'C%';

DELETE FROM online_retail
WHERE InvoiceNo LIKE 'C%';

DELETE FROM online_retail
WHERE Quantity <= 0;

DELETE FROM online_retail
WHERE UnitPrice <= 0;

/* This leaves only real identified customers.*/
DELETE FROM online_retail
WHERE CustomerID IS NULL;

/*feature engineering*/

ALTER TABLE online_retail
ADD COLUMN revenue NUMERIC(12,2);

UPDATE online_retail
SET revenue = Quantity * UnitPrice;

ALTER TABLE online_retail
ADD COLUMN year INT,
ADD COLUMN month INT;

UPDATE online_retail
SET 
    year = EXTRACT(YEAR FROM InvoiceDate),
    month = EXTRACT(MONTH FROM InvoiceDate);


SELECT ROUND(SUM(revenue),2) AS total_revenue
FROM online_retail;

SELECT COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail;

SELECT COUNT(DISTINCT CustomerID) AS total_customers
FROM online_retail;

SELECT Description,
       ROUND(SUM(revenue),2) AS total_revenue
FROM online_retail
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;

CREATE OR REPLACE VIEW retail_cleaned AS
SELECT 
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country,
    revenue,
    year,
    month
FROM online_retail;
