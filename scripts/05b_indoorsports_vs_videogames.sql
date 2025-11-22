/*
========================================================================
Indoor Sports vs Video Games
========================================================================

Write a SQL query to retrieve total spend on IndoorSports and VideoGames 
grouped by AgeGroup.

*/

SELECT
	Age,
	SUM(InDoor_SportKits) AS Indoor,
	SUM(Video_Games) AS Video_game
FROM 
	survey_info
GROUP BY Age
ORDER BY Age
