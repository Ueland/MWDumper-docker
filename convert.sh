#!/bin/sh

# Fetch the checksums for this dump file.
curl --retry 1000 --silent "${SHA1SUM_URL}" | grep "${DUMP_URL##*/}" | tee sha1sum.txt

# Retry downloading until the checksum matches.
until sha1sum -s -c sha1sum.txt
do
	wget -O "${DUMP_URL##*/}" "$DUMP_URL"
	sleep 10
done

# Extract and import the dump into MySQL-compatible server.
bunzip2 -f -c "${DUMP_URL##*/}" | \
java -jar /app/mwdumper.jar --format=sql:1.25 - | \
mysql --force --user=$MYSQL_USER --database=$MYSQL_DATABASE --host=$MYSQL_HOST --password=$MYSQL_PASSWORD
