IF NOT EXISTS(select * from sys.columns 
            where Name = N'NewColumn' and Object_ID = Object_ID(N'TableName'))
BEGIN
    ALTER TABLE [dbo].[TableName]
    ADD [NewColumn] VARCHAR(100) NULL
END
