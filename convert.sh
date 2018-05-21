#!/bin/sh
echo "Files to convert:"
ls -la /dumps
echo "Starting conversion"
cd /dumps
find . -type f -exec /app/run.sh {} \;
