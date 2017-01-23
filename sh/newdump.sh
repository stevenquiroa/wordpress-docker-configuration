docker exec ${PWD##*/}_db_1 sh -c 'exec mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' > ./dbdump.sql
