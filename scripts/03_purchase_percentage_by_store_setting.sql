/*
========================================================================
TAP(Total_Amount_of_Purchases) Preparation for Store Setting
========================================================================

Write a SQL query to calculate TAP(Total_Amount_of_Purchases) by StoreSetting 
and compute each setting’s TAP as a percentage of the highest TAP value (first-ranked).

*/

WITH PurchasesBySetting AS (
    SELECT 
        Store_Setting,
        SUM(Total_Amount_of_Purchases) AS TotalPurchase
    FROM survey_info
    GROUP BY Store_Setting
),
RankedPurchases AS (
    SELECT 
        Store_Setting,
        TotalPurchase,
        RANK() OVER (ORDER BY TotalPurchase DESC) AS RankOrder
    FROM PurchasesBySetting
),
FirstValue AS (
    SELECT MAX(TotalPurchase) AS FirstTotal
    FROM PurchasesBySetting
)
SELECT 
    r.Store_Setting,
    r.TotalPurchase,
    CAST(ROUND((r.TotalPurchase * 100.0 / f.FirstTotal), 2) AS DECIMAL(5,2)) 
        AS PercentageOfFirst
FROM RankedPurchases r
CROSS JOIN FirstValue f
ORDER BY r.TotalPurchase DESC;
