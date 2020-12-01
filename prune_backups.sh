#!/bin/bash

#
# 	Use this script to automatically delete old backup files.
#

declare -i max_age

# Number of days to keep backup files.
max_age=10

# Location of backup files.
backups_dir="/home/backups/db/"


for file in $(find $backups_dir -mtime +$max_age); do
	rm "$file";
done