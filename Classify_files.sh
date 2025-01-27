#!/bin/bash
INPUT_DIR=~/path/to/input_directory
LOG_FILE=~/path/to/log_directory/audit_log.txt
BASE_OUTPUT_DIR=~/path/to/output_directory
mkdir -p "$BASE_OUTPUT_DIR"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
log_message() {
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
}
log_message "Job started."
if [ "$(ls -A $INPUT_DIR 2>/dev/null)" ]; then
    for file in "$INPUT_DIR"/*; do
        if [ -f "$file" ]; then
            # Extract file extension
            EXT="${file##*.}"
            TARGET_DIR="$BASE_OUTPUT_DIR/$EXT"
            mkdir -p "$TARGET_DIR"
            mv "$file" "$TARGET_DIR"
            log_message "Moved $file to $TARGET_DIR"
        fi
    done
else
    log_message "No files to process."
fi
log_message "Job finished."
