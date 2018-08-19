#!/bin/bash -x
java -jar /app/mwdumper.jar --format=sql:${MW_SQL_SCHEMA:-1.25} $1 > /sql/$1.sql
