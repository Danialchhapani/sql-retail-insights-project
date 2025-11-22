/*
========================================================================
Video Games vs Outdoor Sports
========================================================================

Write a SQL query to retrieve total spend on VideoGames and OutdoorSports 
grouped by AgeGroup.

*/

SELECT
	Age,
	SUM(Video_Games) AS GAMES,
	SUM(OutDoor_SportKits) AS O_SPORTS
FROM
	survey_info
GROUP BY Age
ORDER BY Age
