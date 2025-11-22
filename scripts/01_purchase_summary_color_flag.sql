/*
========================================================================
Purchase Summary with Conditional Color Flag
========================================================================

Write a SQL query to retrieve total amount of purchase (TAP) by StoreLocation 
and StoreSetting, and assign a color flag based on TAP thresholds:

•	Red: TAP between 0 and 34,999
•	Yellow: TAP between 35,000 and 59,999
•	Blue: TAP 60,000 and above

*/

SELECT
    Store_location,
    Store_setting,
    SUM(Total_Amount_of_Purchases) AS TAP,
    CASE 
		WHEN 0 < SUM(Total_Amount_of_Purchases) AND SUM(Total_Amount_of_Purchases) <= 34999 THEN 'Red'
		WHEN  35000 <= SUM(Total_Amount_of_Purchases) AND SUM(Total_Amount_of_Purchases) <= 59999 THEN 'Yellow'
		ELSE 'Blue'
	END AS Highlight_flag
FROM 
    survey_info
GROUP BY 
    Store_location,
    Store_setting
ORDER BY 
    Store_location,
    Store_setting DESC
