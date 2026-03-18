# Linux File Permission Security Automation System

This project is a Linux File Permission Security Automation System designed to detect and fix insecure file permissions automatically. It scans directories for world-writable files, applies secure permissions, and logs all actions for auditing. The system uses Bash scripting, cron jobs for automation, and structured logging for monitoring. It helps prevent unauthorized access, privilege escalation, and misconfigurations in Linux environments.

- Project Structure
```text
permission-security-system
 ├── scripts
 │    ├── scan.sh
 │    ├── fix.sh
 │    └── main.sh
 │
 └── logs
 └── reports
```

## Step 1 - Create Project Directory

```text
mkdir permission-security-system
cd permission-security-system

mkdir logs reports scripts
touch scripts/scan.sh scripts/fix.sh scripts/main.sh
```

## Step 2 - Write Code

Write bash code for sacn.sh,fix.sh and main.sh

- scan.sh.sh : This Bash script scans `/home` for world-writable files using `find`, stores results in `insecure_files.txt`, and prints start and completion messages to indicate the scanning process.
- fix.sh : This Bash script reads insecure files from a report, changes their permissions to 750 using chmod, logs each fix with timestamp, and displays start and completion messages.
- main.sh : This script logs start time, executes scan and fix scripts, records their output into a log file, and logs completion time, providing basic automation, tracking, and auditing of permission management tasks.

## Step 3 - Give Execute Permission

```text
chmod +x *.sh
```

## Step 4 - Add crone job

- Open the crontab editor
```text
crontab -e
```
- Add the cron job (Ex: I add for every 1 hour)
```text
0 * * * * /home/ubuntu/permission-security-system/scripts/main.sh
```

Compleet !


![Cron Framework Architecture](filepermission.png)
