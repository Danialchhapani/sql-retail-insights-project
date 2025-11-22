/*
========================================================================
TAP(Total_Amount_of_Purchases) by Store Location
========================================================================

Write a SQL query to retrieve TAP(Total_Amount_of_Purchases) grouped by 
StoreLocation.

*/


SELECT
    Store_Location,
    SUM(Total_Amount_of_Purchases) AS TAP
FROM 
    survey_info
GROUP BY 
    Store_Location
