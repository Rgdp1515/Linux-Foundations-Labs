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
