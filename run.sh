#!/bin/sh
java -jar /app/mwdumper.jar --format=sql:$MW_SQL_SCHEMA $1 > /sql/$1.sql
