#!/bin/bash

python3 /home/fishtrap/Desktop/widgetUpdate/dataProcessing/exportJson.py
sleep 60
dateTime=$(date)

git add .
git commit --quiet -m "Scheduled push: $dateTime"
git push --quiet origin main
echo "push occurred: $dateTime"
