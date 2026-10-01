/*

=========================================================
Create Database and Schemas
=========================================================

Script Purpose:
    This script creates a new database named 'DataWareHouse' 
    after checking if it already exists. 
    If the Database exists, it is dropped and recreated.
    Additionally, the script sets up three schemas within the 
    database: 'bronze', 'silver', 'gold'.

Warning:
    Running this script will drop the entire 'DataWareHouse' database if it exists
    All data in the database will be permanently deleted. Proceed with caution
    and ensure having proper backups before running this script.

*/

-- Drop and recreate the 'DataWareHouse' database

IF EXISTS (SELECT 1 sys.databases WHERE name = 'DataWareHouse')
BEGIN
    ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWareHouse;
END;

-- Create the 'DataWareHouse' database

CREATE DATABASE DataWareHouse;

-- Create Schemas

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;