#! /bin/bash

gitignore_excludes=$(mktemp)

echo "Generating ignored files..."
cat ./backup_filter > $gitignore_excludes
./gitignore-to-rclone.sh /home/ieremies/ >> $gitignore_excludes

echo "Starting backup..."
/usr/bin/rclone copy --max-age 48h --no-traverse --filter-from $gitignore_excludes "/home/ieremies/" "drive_unicamp:backup/"
