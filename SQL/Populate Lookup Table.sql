-- Avoid adding redundant records

IF NOT EXISTS (SELECT * FROM [dbo].[People])
BEGIN
	
  INSERT INTO [dbo].[People]
          ( [Name] ,
            [Age]
          )
  VALUES  
		  ( 'Alex', 35 ),
		  ( 'Barry', 43 ),
		  ( 'Charles', 18 )

END
