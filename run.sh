#!/bin/sh
java -jar /app/mwdumper.jar --format=sql:1.25 $1 > /sql/$1.sql
