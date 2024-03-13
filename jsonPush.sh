#!/bin/bash

python3 ./dataProcessing/exportJson.py
sleep 60
dateTime=$(date)

git add .
git commit -m "Scheduled push: $dateTime" > /dev/null
git push origin main > /dev/null
echo "push occurred: $dateTime"
