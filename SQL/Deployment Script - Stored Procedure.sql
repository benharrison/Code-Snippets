-- Stored Procedure deployment script
-- 
-- If the proc doesn't already exist, a very simple proc is created first.
-- This way the actual proc can always be applied using an alter statement.

if object_id('sp_MYPROC') is null
    exec ('create procedure dbo.sp_MYPROC as select 1')
go

-- ...

ALTER PROCEDURE sp_MYPROC

-- ...