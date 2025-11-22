/*
========================================================================
Summary of Outdoor Sports Spend
========================================================================

Write a SQL query to calculate the total amount spent on OutdoorSports 
grouped by AgeGroup and StoreSetting.


*/

SELECT
	Store_Setting,
	Age,
	SUM(OutDoor_SportKits) AS Amount_spend_on_outdoors,
	CASE 
		WHEN 0 < SUM(OutDoor_SportKits) AND SUM(OutDoor_SportKits) < 1700 THEN 'Red'
		WHEN 1700 <= SUM(OutDoor_SportKits) AND SUM(OutDoor_SportKits) < 3500 THEN 'Yellow'
	ELSE 'Blue'
	END AS Highlight_flag
FROM 
	survey_info
GROUP BY 
	Store_Setting,
	Age
ORDER BY 
	Age 
