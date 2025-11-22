/*
========================================================================
User-Based Data Access Restriction
========================================================================

Write a SQL query that filters purchase data based on user access rights 
defined in a UserMapping table. For example, restrict Mani’s view to 
only StoreSetting = 'Rural'.

*/


create view 
         for_user_Nani AS
    SELECT 
	     s.Survey_ID
        ,s.Store_Number
        ,s.Store_Location
        ,s.Store_Setting
        ,s.Age
        ,s.Exchange
        ,s.Survey_Date
        ,s.Video_Games
        ,s.Academic_Books
        ,s.Toys
        ,s.OutDoor_SportKits
        ,s.InDoor_SportKits
        ,s.Gadgets
        ,s.NonAcademic_Books
        ,s.Number_of_Items_Purchased
        ,s.Total_Amount_of_Purchases
    FROM 
	    survey_info AS s
    LEFT JOIN 
        user_map AS m
	on 
        s.Store_Setting = m.Survey_Location
    WHERE 
        m.UserID = 'Nani' ;

GO

create view 
        for_user_Mani AS
    SELECT
	     s.Survey_ID
        ,s.Store_Number
        ,s.Store_Location
        ,s.Store_Setting
        ,s.Age
        ,s.Exchange
        ,s.Survey_Date
        ,s.Video_Games
        ,s.Academic_Books
        ,s.Toys
        ,s.OutDoor_SportKits
        ,s.InDoor_SportKits
        ,s.Gadgets
        ,s.NonAcademic_Books
        ,s.Number_of_Items_Purchased
        ,s.Total_Amount_of_Purchases
    FROM 
	    survey_info AS s
    LEFT JOIN 
        user_map AS m
	on  
        s.Store_Setting = m.Survey_Location
    WHERE 
        m.UserID = 'Mani' ;

GO

create view 
        for_user_Nitin AS
    SELECT
	     s.Survey_ID
        ,s.Store_Number
        ,s.Store_Location
        ,s.Store_Setting
        ,s.Age
        ,s.Exchange
        ,s.Survey_Date
        ,s.Video_Games
        ,s.Academic_Books
        ,s.Toys
        ,s.OutDoor_SportKits
        ,s.InDoor_SportKits
        ,s.Gadgets
        ,s.NonAcademic_Books
        ,s.Number_of_Items_Purchased
        ,s.Total_Amount_of_Purchases
    FROM 
	    survey_info AS s
    LEFT JOIN 
        user_map AS m
	on 
        s.Store_Setting = m.Survey_Location
    WHERE 
        m.UserID = 'Nitin' ;

GO

create view 
        for_user_Ashok AS
    SELECT
	     s.Survey_ID
        ,s.Store_Number
        ,s.Store_Location
        ,s.Store_Setting
        ,s.Age
        ,s.Exchange
        ,s.Survey_Date
        ,s.Video_Games
        ,s.Academic_Books
        ,s.Toys
        ,s.OutDoor_SportKits
        ,s.InDoor_SportKits
        ,s.Gadgets
        ,s.NonAcademic_Books
        ,s.Number_of_Items_Purchased
        ,s.Total_Amount_of_Purchases
    FROM 
	    survey_info AS s
    LEFT JOIN 
        user_map AS m
	on 
        s.Store_Setting = m.Survey_Location
    WHERE 
        m.UserID = 'Ashok' ;

GO

SELECT 
    *
FROM 
    for_user_Ashok

SELECT 
    *
FROM  
    for_user_Mani

SELECT 
    *
FROM  
    for_user_Nani

SELECT 
    *
FROM  
    for_user_Nitin

SELECT 
    *
FROM 
    for_user_nitin
