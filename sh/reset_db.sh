docker cp dbdump.sql ${PWD##*/}_db_1:/  
docker exec ${PWD##*/}_db_1 sh -c 'exec mysql --execute="DROP DATABASE "$MYSQL_DATABASE"; CREATE DATABASE $MYSQL_DATABASE " -uroot -p"$MYSQL_ROOT_PASSWORD"' && docker exec ${PWD##*/}_db_1 sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" < /dbdump.sql'
  
