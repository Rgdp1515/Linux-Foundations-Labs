# Linux-Foundations-Labs
Practical Linux and Bash labs demonstrating user/group administration, permissions, log preservation, command pipelines, text processing, and core system administration skills.

This repository demonstrates practical experience with Linux system administration, Bash scripting, file permissions, archiving, text processing, pipes, redirection, and command-line troubleshooting.

## Skills Demonstrated

- Linux command-line administration
- Bash scripting
- User and group management
- File ownership and permissions
- `chmod`, `chown`, and sticky bit permissions
- `tar` archive creation and extraction
- `grep`, `awk`, `sort`, and `wc`
- Pipes and output redirection
- Regular expressions
- Conditional execution
- Filesystem navigation

## Labs

### 1. User Management and Bash Scripting
Created a Bash script to automate user and group administration tasks.

The script:
- Checks for duplicate group names
- Creates a new Linux group
- Checks for duplicate usernames
- Creates a user with a Bash shell and home directory
- Assigns the user to the appropriate group
- Sets a user password
- Creates a root-level directory for the user
- Configures ownership and permissions
- Applies the sticky bit to protect files in shared directories

### 2. Log Archiving and Preservation
Used `tar` to preserve Linux log files from `/var/log`.

Tasks included:
- Archiving `.log` files
- Removing unnecessary path information from the archive
- Using verbose output
- Listing archive contents without extraction
- Extracting archived logs into a backup directory
- Verifying successful extraction

### 3. Linux Service Text Processing
Processed `/etc/services` to create a clean list of unique Linux service names.

Example pipeline:

```bash
grep -E '^[[:alpha:]]' /etc/services | awk '{print $1}' | sort -u > ~/uniqueservices.txt && wc -l ~/uniqueservices.txt
```
## Labs

- [User Management and Bash Scripting](./user-management/)
- [Log Archiving and Preservation](./log-archiving/)
- [Service Processing with Pipes and Text Utilities](./service-processing/)
