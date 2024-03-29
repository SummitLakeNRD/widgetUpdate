# Mahogany Creek Spawning LCT Widget
**Author**: Keane Flynn\
**Organization**: Summit Lake Paiute Tribe\
**Date**: 03/32/2024\
**Contact**: kmflynn24@berkeley.edu or 925-413-8986


## Description
This repository is responsible for processing data that is input from the fish trap and displaying
it in a up-to-date line graph that is currently displayed on the SLPT website.

## Hardware
This repository is basically a two way communication between the laptop that lives in the Mahogany
Creek fish trap and Github. After each fish processing session in the trap, fill out the spreadsheet
with the number of fish captured in the upstream and downstream pen. I have tried my best to make 
this laptop look exactly like Windows but it is basically just a Linux server. Aside from entering 
the data, DO NOT DO A SINGLE THING TO THIS LAPTOP. It needs to be constantly plugged in for power 
(I removed the battery) and should always be plugged in via ethernet to ensure connectivity. 
Additionally, DO NOT change any of the files on this computer aside from the spreadsheet. The end,
no exceptions. 

## How it works
Once you have collected data from the trap and enter the uprun and downrun count in the spreadsheet,
simply save the spreadsheet (it will likely say something about ODF format, click the Excel option)
and exit. That is it on your end. Every 6 hours, this spreadsheet will pass through a python script
that summarizes relevant daily information into a .json (Javascript object notation) file. In the 
widget html code, it references the link to the raw github file so that it can be updated
every 6 hours. This runs every 6 hours by having a script sitting in systemd on the laptop that is
scheduled to run at this interval. I won't do it more often because I don't want github to get mad
at us. Every time the page on our website is loaded, it will grab the most up-to-date json file from
github. And that's it.

## Summary
Enter the data well, don't mess up entering dates or I will hunt you down, don't mess with my laptop,
and don't mess with the files or code unless you think you know Javascript better than me.

