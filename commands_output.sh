ubuntu@ubuntu:~$ mkdir -p ~/path/to/input_directory
mkdir -p ~/path/to/log_directory
mkdir -p ~/path/to/output_directory
ubuntu@ubuntu:~$ touch ~/path/to/log_directory/audit_log.txt
ubuntu@ubuntu:~$ nano ~/path/to/classify_files.sh
ubuntu@ubuntu:~$ chmod +x ~/path/to/classify_files.sh
ubuntu@ubuntu:~$ ~/path/to/classify_files.sh
ubuntu@ubuntu:~$ crontab -e
no crontab for ubuntu - using an empty one

Select an editor.  To change later, run 'select-editor'.
  1. /bin/nano        <---- easiest
  2. /usr/bin/vim.tiny
  3. /bin/ed

Choose 1-3 [1]: 1
crontab: installing new crontab
ubuntu@ubuntu:~$ cat ~/path/to/log_directory/audit_log.txt
[2025-01-27 23:17:11] Job started.
[2025-01-27 23:17:11] No files to process.
[2025-01-27 23:17:11] Job finished.
ubuntu@ubuntu:~$ touch ~/path/to/input_directory/file1.txt
touch ~/path/to/input_directory/file2.csv
touch ~/path/to/input_directory/file3.pdf
ubuntu@ubuntu:~$ ~/path/to/classify_files.sh
ubuntu@ubuntu:~$ ls ~/path/to/output_directory
ls ~/path/to/output_directory/txt
ls ~/path/to/output_directory/csv
ls ~/path/to/output_directory/pdf
csv  pdf  txt
file1.txt
file2.csv
file3.pdf
ubuntu@ubuntu:~$ cat ~/path/to/log_directory/audit_log.txt
[2025-01-27 23:17:11] Job started.
[2025-01-27 23:17:11] No files to process.
[2025-01-27 23:17:11] Job finished.
[2025-01-27 23:18:51] Job started.
[2025-01-27 23:18:51] Moved /home/ubuntu/path/to/input_directory/file1.txt to /home/ubuntu/path/to/output_directory/txt
[2025-01-27 23:18:51] Moved /home/ubuntu/path/to/input_directory/file2.csv to /home/ubuntu/path/to/output_directory/csv
[2025-01-27 23:18:51] Moved /home/ubuntu/path/to/input_directory/file3.pdf to /home/ubuntu/path/to/output_directory/pdf
[2025-01-27 23:18:51] Job finished.
ubuntu@ubuntu:~$ ls ~/path/to/output_directory
ls ~/path/to/output_directory/txt
ls ~/path/to/output_directory/csv
ls ~/path/to/output_directory/pdf
csv  pdf  txt
file1.txt
file2.csv
file3.pdf
ubuntu@ubuntu:~$ 