#!/bin/bash
LOG_FILE="system_activity.log"
echo "---Starting log Update---" | tee current_status.txt
echo "Log entry recorded on: $(date)" >> $LOG_FILE
echo "Current Disk Space Usage:" >> $LOG_FILE
df -h / >> $LOG_FILE
echo "Please type a custom note for this log entry, then press Enter:"
read CUSTOM_NOTE

# Now we redirect the contents of your variable into the file
echo "--> User Note: $CUSTOM_NOTE" >> $LOG_FILE
echo "------------------------------------------------" >> $LOG_FILE

# 5. Confirm completion
echo "Update complete! Disk space and your note have been injected into $LOG_FILE."
