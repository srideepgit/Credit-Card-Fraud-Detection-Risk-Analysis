
-- 1. Total summary
SELECT 
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN class = 1 THEN 1 ELSE 0 END) AS total_fraud,
    SUM(CASE WHEN class = 0 THEN 1 ELSE 0 END) AS total_legit
FROM transactions;

-- 2. Fraud percentage
SELECT 
    ROUND((SUM(class)::decimal / COUNT(*)) * 100, 2) AS fraud_percentage
FROM transactions;

-- 3. High value transactions
SELECT *
FROM transactions
ORDER BY amount DESC
LIMIT 10;

-- 4. Fraud transactions only
SELECT *
FROM transactions
WHERE class = 1
ORDER BY amount DESC;

-- 5. Risk segmentation analysis
SELECT 
    CASE 
        WHEN amount < 100 THEN 'Low Risk'
        WHEN amount BETWEEN 100 AND 1000 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category,
    COUNT(*) AS total_transactions,
    SUM(class) AS fraud_cases,
    ROUND(AVG(class)::numeric, 4) AS fraud_rate
FROM transactions
GROUP BY risk_category
ORDER BY fraud_rate DESC;
