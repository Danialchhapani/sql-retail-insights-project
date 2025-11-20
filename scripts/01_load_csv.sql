/*
===============================================================================
Document: load_csv
===============================================================================
Title:
    Importing CSV Data into SQL Server using SSMS GUI Mode

Purpose:
    This document explains how to load CSV files into SQL Server using the 
    SQL Server Management Studio (SSMS) Import Wizard (GUI mode). It also 
    highlights why this method may be chosen instead of script-based methods 
    like BULK INSERT or stored procedures.

===============================================================================
Steps to Import CSV via GUI Mode:
===============================================================================

1. Open SSMS and connect to your SQL Server instance.
2. In Object Explorer, right-click the target database (e.g., StudentSurvey).
3. Select **Tasks → Import Data…** to launch the SQL Server Import and Export Wizard.
4. In the wizard:
   - Choose **Flat File Source** as the data source.
   - Browse to your CSV file (e.g., C:\Data\Student_Survey.csv).
   - Set delimiter to **Comma (,)**.
   - Tick “Column names in the first data row” if your CSV has headers.
5. Choose **SQL Server Native Client** (or OLE DB Driver) as the destination.
   - Confirm server and database details.
6. Map source columns to destination table:
   - Either select an existing table (e.g., survey_info).
   - Or let the wizard create a new table automatically.
7. Review column mappings and adjust data types if needed.
    - Change data type float to money.
8. Click **Next → Finish** to run the import.
9. Review the summary to confirm rows were successfully imported.

===============================================================================
Why Use GUI Mode Instead of Script Method?
===============================================================================

-- It avoids file path and permission issues common with BULK INSERT scripts.
-- The wizard can auto-create tables and handle column mapping visually.
-- No need to write or debug T-SQL code, making it faster for ad-hoc tasks.
-- Scripts are better for automation and repeatability, but GUI mode is ideal 
   when you just need to quickly load data.

===============================================================================
*/
