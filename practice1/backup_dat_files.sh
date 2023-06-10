#!/bin/bash

# Set the path to backup from the system environment variable
backup_path=$BACKUP_PATH

# Check if the backup path is set
if [ -z "$backup_path" ]; then
  echo "Backup path is not set. Please set the BACKUP_PATH environment variable."
  exit 1
fi

# Create a directory to store the backups
backup_directory="/path/to/backup/directory"
mkdir -p "$backup_directory"

# Set the current date and time
current_date=$(date +%Y-%m-%d)
current_time=$(date +%H-%M)

# Generate a unique backup file name using the current date and time
backup_file="$backup_directory/backup_$current_date-$current_time.tar.gz"

# Find and backup files with the .dat extension
find "$backup_path" -type f -name "*.dat" -exec tar -czvf "$backup_file" {} +

# Display a success message
echo "Backup completed successfully at $current_date $current_time."
