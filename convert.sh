#!/bin/sh
curl $(DUMP_URL) | java -jar /app/mwdumper.jar --format=sql:1.25 - | mysql --user=$(DB_USER) --database=$(DB_DATABASE) -h $(DB_HOST) --password=$(DB_PASSWORD)
