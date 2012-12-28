IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'TheSchema' 
                 AND  TABLE_NAME = 'TheTable'))
BEGIN
    --CREATE TABLE ...
END