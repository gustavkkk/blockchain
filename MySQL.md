### CMDs

    mysql -u root -p
    select * from table_name;
    delete from table_name;
    drop table table_name;
    
    SELECT  COLUMN_NAME, DATA_TYPE FROM  INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_SCHEMA = 'test' AND  TABLE_NAME = 't_ethereum_transaction';
    explain table_name;
    describe table_name;
    describe table_name column_name;
