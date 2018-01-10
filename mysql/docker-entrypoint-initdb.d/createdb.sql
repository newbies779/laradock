#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_SAVE_PATH/mysql not found.
#
# if your $DATA_SAVE_PATH/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

CREATE DATABASE IF NOT EXISTS `leb2` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `leb2`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `voyager` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `voyager`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `sso` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `sso`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `leb2_test` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `leb2_test`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `country` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `country`.* TO 'default'@'%' ;

FLUSH PRIVILEGES ;
