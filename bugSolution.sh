#!/bin/bash

# This improved script checks for file existence and readability before processing.

file_to_process="/path/to/some/file.txt"

# Check if the file exists and is readable
if [ ! -r "$file_to_process" ]; then
  echo "Error: File '$file_to_process' does not exist or is not readable." >&2
  exit 1
fi

# Process the file
cat "$file_to_process" | awk '{print $1}' > output.txt

if [ $? -eq 0 ]; then
  echo "File processed successfully."
else
  echo "Error processing file." >&2
  exit 1
fi