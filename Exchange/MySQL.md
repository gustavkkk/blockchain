### CMDs
    Installation
    $ sudo apt-get install mysql-server
    $ pip install pymysql
    
    mysql -u root -p
    select * from table_name;
    delete from table_name;
    drop table table_name;
    
    SELECT  COLUMN_NAME, DATA_TYPE FROM  INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_SCHEMA = 'test' AND  TABLE_NAME = 't_ethereum_transaction';
    explain table_name;
    describe table_name;
    describe table_name column_name;
    
    password missing
    sudo systemctl stop mysql
    sudo mkdir /var/run/mysqld
    sudo chown mysql: /var/run/mysqld
    sudo mysqld_safe --skip-grant-tables --skip-networking &
    mysql -u root
    FLUSH PRIVILEGES;
    # For MySQL 5.7.6 and newer
    ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
    # For MySQL 5.7.5 and older
    SET PASSWORD FOR 'root'@'localhost' = PASSWORD('new_password');
    sudo kill `cat /var/run/mysqld/mysqld.pid`
    sudo systemctl start mysql

    GRANT
    $ mysqladmin -u root -p password
    # password is to be typed literally. It's a command. You don't have to substitute password with your actual password.
    $ mysqladmin variables | grep socket
    > FLUSH PRIVILEGES;
    > GRANT ALL PRIVILEGES ON *.* TO 'root'@'x.x.x.x' IDENTIFIED BY 'root'  WITH GRANT OPTION;
    > show grants for test@localhost
    
    Dump
    mysqldump -h [server] -u [user] -p[password] db1 | mysql -h [server] -u [user] -p[password] db2

