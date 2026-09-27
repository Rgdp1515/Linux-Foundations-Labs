# Log Archiving and Preservation

## Overview

This lab demonstrates Linux log preservation using the `tar` utility.

The goal was to archive `.log` files from `/var/log`, preserve them in a dedicated archive directory, verify the archive contents without extracting them, and then extract the archived files into a separate backup directory.

## Objectives

- Create an archive named `log.tar`
- Store the archive in `~/archive`
- Archive files from `/var/log` ending in `.log`
- Avoid storing unnecessary directory paths in the archive
- Produce verbose output during archive creation
- List archive contents without extracting them
- Extract the archived log files into `~/backup`
- Verify that the extracted files were successfully restored

## Skills Demonstrated

- Linux filesystem navigation
- Archive creation with `tar`
- File globbing
- Relative and absolute paths
- Verbose command output
- Archive inspection
- Archive extraction
- Directory creation
- Backup verification
- Use of the `-C` option with `tar`

## Key Commands

The required directories were created with:

```bash
mkdir -p ~/archive ~/backup
```

After navigating to /var/log, the .log files were archived with:
```
tar -cvf ~/archive/log.tar *.log
```

The archive contents were inspected without extracting them:
```
tar -tvf ~/archive/log.tar
```

The archive was then extracted into the backup directory:
```
tar -xvf ~/archive/log.tar -C ~/backup
```

Tar Options Used
The following tar options were used during the lab:
- -c — create a new archive
- -x — extract files from an archive
- -t — list the contents of an archive
- -v — display verbose output
- -f — specify the archive filename
- -C — change to a target directory before performing the operation
Path Handling
The archive was created while working from /var/log so that the archived files were stored by filename rather than with the full /var/log/ path.
The wildcard:
```
*.log
```
was used to select files ending in the .log extension.

Verification
The archive file can be verified with:
```
ls -l ~/archive/log.tar
```

Its contents can be inspected with:
```
tar -tvf ~/archive/log.tar
```

The extracted backup files can be verified with:
```
ls -l ~/backup
```

Screenshots
Screenshots demonstrating archive creation, archive inspection, extraction, and backup verification are available in the:
[`screenshots/`](./screenshots/) directory.

