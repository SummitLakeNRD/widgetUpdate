#!/bin/bash

python3 ./dataProcessing/exportJson.py
sleep 15
dateTime=$(date)

git add .
git commit --quiet -m "Scheduled push: $dateTime"
git push --quiet origin main
echo "push occurred: $dateTime"
