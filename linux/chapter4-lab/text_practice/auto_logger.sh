#!/bin/bash
LOG_FILE="system_acitvity.log"
echo "Log entry recorded on: $(date)" >> $LOG_FILE
echo "Log entry recorded on: $(date)" >> $LOG_FILE

# 4. Append custom text lines
echo "User 'jonathanc' successfully executed the automated script." >> $LOG_FILE
echo "------------------------------------------------" >> $LOG_FILE

# 5. Confirm completion to the user
echo "Update complete! The text has been injected into $LOG_FILE."
