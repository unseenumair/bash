#!/bin/bash

directory="$1"
backupFolderName="backup_$(date +%Y-%m-%d)"

if [ -z "$directory" ] || [ ! -d "$directory" ]; then
  echo "$directory NOT exists"
  exit 1
fi

mkdir "../$backupFolderName"
cp -r "$directory"/* "../$backupFolderName"/

if [ -d "../$backupFolderName" ]; then
  echo "Congrats, $backupFolderName CREATED as backup of $directory at ../$directory"
fi

<< problem
  9️⃣ Backup Script (Mini Version)
  
  Given a directory:
  Create backup folder named backup_YYYYMMDD
  Copy all files into it
  Print confirmation
problem
