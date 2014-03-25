/*
 * Enterprise Reporting Standardization
 * Project #105 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS, MSSQL
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ReportingStandards')
BEGIN
    ALTER DATABASE ReportingStandards SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ReportingStandards;
END
GO

CREATE DATABASE ReportingStandards
ON PRIMARY
(
    NAME = 'ReportingStandards_Data',
    FILENAME = 'C:\SQLData\ReportingStandards_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ReportingStandards_Log',
    FILENAME = 'C:\SQLData\ReportingStandards_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ReportingStandards SET RECOVERY SIMPLE;
ALTER DATABASE ReportingStandards SET AUTO_UPDATE_STATISTICS ON;
GO

USE ReportingStandards;
GO

PRINT 'Database ReportingStandards created successfully';
PRINT 'Project: Enterprise Reporting Standardization';
PRINT 'Description: Cross-system report format unification';
GO
