/*
===========================================================
Create Database
===========================================================
Script Purpose :
This script sets up the 'StudentSurvey' database.  
It removes any existing version and recreates it cleanly.

Warning :
Executing this will drop the current 'StudentSurvey' database.  
All stored data and objects will be permanently erased.

*/

USE master;
GO

-- Drop and recreate the 'StudentSurvey' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'StudentSurvey')
BEGIN
    ALTER DATABASE StudentSurvey SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE StudentSurvey;
END;
GO

-- Create the 'StudentSurvey' database
CREATE DATABASE StudentSurvey;
GO

USE StudentSurvey;
GO

