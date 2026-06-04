--Create
USE MASTER; 
GO
/*
This is a SQL Server script that checks whether a database named SQLLEARNING exists, 
forcibly disconnects all users from it, and then deletes the database.
*/
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SQLLEARNING')
BEGIN
--This changes the database access mode to SINGLE_USER.
--Normally, SQL Server databases are in MULTI_USER mode, 
--meaning many users and applications can connect at the same time.
--cancels running queries, rolls back uncommitted transactions
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create <SQLLEARNING> database
CREATE DATABASE DataWarehouse;
GO


