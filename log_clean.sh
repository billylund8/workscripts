#!/bin/bash

#write a script to clear logs in /var/log
#the script should run every two weeks and it should delete every log more than 30 days old
#delete all log l=files that are older than 30 days old in centOS 6
#Date: Feb 2020


#find /var/log -name "*.log" -type f -mtime +30 -exec rm -f {} \;
#find /var/log -name "*.log" -type f -mtime +30 -exec ls -l {} \;
PATH=/var/log
#.... in the last how many days....
DAYS=300
#####################################################################
find ${PATH} -name "*.log" -type f -mtime +${DAYS} -exec rm -f {} \;

exit 0
 

