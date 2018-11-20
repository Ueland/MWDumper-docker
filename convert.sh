#!/bin/sh
curl --silent --show-error "$DUMP_URL" | \
	bunzip2 | \
	java -jar /app/mwdumper.jar --format=sql:1.25 - | \
	mysql --force --user=$MYSQL_USER --database=$MYSQL_DATABASE --host=$MYSQL_HOST --password=$MYSQL_PASSWORD
