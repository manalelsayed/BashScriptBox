#!/bin/bash
#check if the /var/log/messages file exist
log_file="/home/kali/BashScriptBox/var/log"
backup_file='/home/kali/BashScriptBox/var/log.old'
if [ "$log_file" ]; 
      then	echo "copying $log_file to $backup_file"

	#copy contents of logfile  to backupfile
	cp -r "$log_file" "$backup_file"

	#check if copying file was successfull
	if  [ $? -eq 0 ];
	then 
		#$? is a special variable that holds exit status of last excuted command and 0 value                              #indicates success
		echo "Files copied successfully to "$backup_file""
		#clear contents of log file
		truncate -s 0 "$log_file"
		echo "old file cleared successfully"
		echo "Log File Management script Finished successfully"
	else echo "Copying files failed"
	fi
else
	echo ""$log_file" doesn't exist"
fi
