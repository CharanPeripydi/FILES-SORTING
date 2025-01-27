# FILES-SORTING
# Classify Files Scheduler

This project automates the classification of files in a directory based on their extensions. It runs as a scheduled job on a Linux environment, every 1 hour and 23 minutes during non-business hours on business days.

## Features
1.Classifies files into subdirectories based on their extensions.
2.Logs activity for auditing purposes.
3.Runs on a schedule using `cron`.


## How to Use
1. Clone the repository:
    git clone https://github.com/username/classify-files-scheduler.git
    cd classify-files-scheduler
    

2. Set up the directories:
    mkdir -p directories/input_directory
    mkdir -p directories/log_directory
    mkdir -p directories/output_directory
    touch directories/log_directory/audit_log.txt
    
3. Edit the script to use absolute paths:
    nano classify_files.sh
    Replace `~/path/to/` with your project path.

4. Test the script:
    ./classify_files.sh

5. Add the cron job:
   crontab crontab_schedule.txt



