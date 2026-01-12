#!/bin/bash

SEARCH_PATH=${1:-.}

echo "Searching in: $SEARCH_PATH"
echo "Files older than 5 days and larger than 10MB:"
echo "----------------------------------------------"

find "$SEARCH_PATH" -type f -mtime +5 -size +10M -print

echo
read -p "Do you want to delete these files? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    find "$SEARCH_PATH" -type f -mtime +5 -size +10M -exec rm -i {} \;
    echo "Deletion completed."
else
    echo "No files were deleted."
fi
