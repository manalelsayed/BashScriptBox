#!/bin/bash
#check if the /var/log/messages file exist
#log_file='/var/log'
log_file="/home/kali/BashScriptBox/var/log"
backup_file='/home/kali/BashScriptBox/var/log.old'

if [ "$backup_file" ];then
# Delete older backups to save disk space
            ls -t | tail -n +4 | xargs rm  # Retain only 3 latest backups
#check if log file exists
if [  "$log_file" ]; then

        cd $log_file
	#rotate backups by renamg existing backup files with a timestamp
	for file in "$log_file"/* ; do
	if [[ "$file" == *"log"* ]]; then	
		# Copy file to destination directory with .log.old extension
                  
	  	cp "$file" "$backup_file/$file_$(date +%Y%m%d%H%M%S)"
	fi
         done

else echo "log file doesn't exist"	
#check if copying file was successfull
fi


