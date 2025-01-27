#!/bin/bash

# Define directories
INPUT_DIR=~/path/to/input_directory
LOG_FILE=~/path/to/log_directory/audit_log.txt
BASE_OUTPUT_DIR=~/path/to/output_directory

# Ensure the output directory exists
mkdir -p "$BASE_OUTPUT_DIR"

# Get the current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Function to log messages
log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}

# Log job start
log_message "Job started."

# Check if there are files in the input directory
if [ "$(ls -A $INPUT_DIR 2>/dev/null)" ]; then
    for file in "$INPUT_DIR"/*; do
        if [ -f "$file" ]; then
            # Extract file extension
            EXT="${file##*.}"
            TARGET_DIR="$BASE_OUTPUT_DIR/$EXT"

            # Create target directory if it doesn't exist
            mkdir -p "$TARGET_DIR"

            # Move the file to the target directory
            mv "$file" "$TARGET_DIR"

            # Log the file movement
            log_message "Moved $file to $TARGET_DIR"
        fi
    done
else
    log_message "No files to process."
fi

# Log job completion
log_message "Job finished."
