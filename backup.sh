#!/bin/bash

<<info
this shell script will take periodic backups

eg.
./backup.sh <source> <dest>
src /home/kali/scripts
dest /home/kali/backups
info

src=$1
dest=$2

timestamp=$(date '+%y-%m-%d')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backup completed"

