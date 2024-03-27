#!/bin/bash
#check if the /var/log/messages file exist
log_file="/home/kali/BashScriptBox/var/log.old/log.old"
output_file='/home/kali/BashScriptBox/var/log_analysis_report'
if [ ! -f "$log_file" ];  
   then	echo "ERROR: $log_file doesn't exist "
	exit 1   
fi

# Current date and time
current_time=$(date +"%Y-%m-%d %H:%M:%S")
{
    echo "Log Analysis Report - Generated at: $current_time"
    echo "=================================================="
    # Extract error counts
    errors=$(grep -i "error" "$log_file" | wc -l)
    echo "Total Errors: $errors"

    # Extract warning counts
    awk '/warning/ {count++} END {print "Total Warnings:", count}' $log_file

    # Extract critical events
    critical_events=$(sed -n '/critical/p' "$log_file" | wc -l)
    echo "Total Critical Events: $critical_events"

    echo "Detailed Analysis:"
    echo "------------------"
    
    echo "Latest 5 Error Messages:"
    awk '/error/ {print}' "$log_file" | tail -n 5

    echo "Latest 10 Warning Messages:"
    awk '/warning/ {print}' "$log_file" | tail -n 5  
    echo "=================================================="
   
} >> "$output_file"

echo "Log analysis report has been saved to '$output_file'."
