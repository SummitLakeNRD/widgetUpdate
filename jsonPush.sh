#!/bin/bash

python3 ./dataProcessing/exportJson.py
sleep 60
dateTime = $(date)

git add .
git commit -m "Scheduled push: $dateTime"
git push origin main

