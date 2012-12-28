IF NOT EXISTS (SELECT * FROM sys.default_constraints 
    WHERE NAME = 'DF_Menu_MenuParentId')
BEGIN
  -- ...
END