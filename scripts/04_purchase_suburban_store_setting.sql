/*
========================================================================
Suburban Store Setting
========================================================================

Write a SQL query to retrieve TAP(Total_Amount_of_Purchases) grouped by 
StoreLocation, filtered to include only records where StoreSetting = 'Suburban'.

*/

SELECT
	Store_Location,
	SUM(Total_Amount_of_Purchases) AS TAP
FROM 
	survey_info
WHERE 
	Store_Setting = 'Suburb'
GROUP BY 
	Store_Setting , Store_Location
ORDER BY 
	TAP
