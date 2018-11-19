#!/bin/sh
curl $(DUMP_URL) | java -jar /app/mwdumper.jar --format=sql:1.25 - | mysql -u $(DB_USER) -D $(DB_DATABASE) -h $(DB_HOST) -p $(DB_PASSWORD)
