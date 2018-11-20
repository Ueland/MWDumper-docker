#!/bin/sh
curl "$DUMP_URL" | bunzip2 | java -jar /app/mwdumper.jar --format=sql:1.25 - | mysql --user=$MYSQL_USER --database=$MYSQL_DATABASE -h $MYSQL_HOST --password=$MYSQL_PASSWORD
