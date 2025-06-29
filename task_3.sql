-- Enhanced table listing with additional information
SELECT 
    TABLE_NAME AS 'Table',
    TABLE_ROWS AS 'Estimated Rows',
    DATA_LENGTH AS 'Data Size (Bytes)',
    CREATE_TIME AS 'Creation Time',
    TABLE_COLLATION AS 'Collation'
FROM 
    INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_SCHEMA = DATABASE()
ORDER BY 
    TABLE_NAME;