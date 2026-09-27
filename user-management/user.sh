#!/usr/bin/env bash

# Linux User Management Lab
# Creates a unique group and user, assigns the user to the group,
# creates a home directory, sets a password, and configures
# ownership and permissions on a root-level directory.

# Verify the script is being run with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit 1
fi

# -------------------------
# Create a unique group
# -------------------------

while true
do
    read -p "Enter a new group name: " groupname

    if getent group "$groupname" > /dev/null
    then
        echo "Error: Group '$groupname' already exists. Try another name."
    else
        groupadd "$groupname"
        echo "Group '$groupname' created successfully."
        break
    fi
done

# -------------------------
# Create a unique user
# -------------------------

while true
do
    read -p "Enter a new username: " username

    if getent passwd "$username" > /dev/null
    then
        echo "Error: User '$username' already exists. Try another name."
    else
        useradd -m -s /bin/bash -g "$groupname" "$username"
        echo "User '$username' created successfully."
        break
    fi
done

# -------------------------
# Set the user's password
# -------------------------

echo "Set a password for '$username':"
passwd "$username"

# -------------------------
# Create root-level directory
# -------------------------

mkdir "/$username"

# Set directory ownership to the new user and group
chown "$username:$groupname" "/$username"

# Owner and group receive full permissions.
# Others receive no permissions.
# Leading 1 enables the sticky bit.
chmod 1770 "/$username"

# -------------------------
# Verification
# -------------------------

echo
echo "User management tasks completed successfully."
echo
echo "User information:"
id "$username"

echo
echo "Directory information:"
ls -ld "/$username"

echo
echo "Home directory:"
