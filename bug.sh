#!/bin/bash

# This script attempts to process a file, but fails to handle potential errors.

file_to_process="/path/to/some/file.txt"

# Attempt to process the file.  This will fail silently if the file does not exist
cat "$file_to_process" | awk '{print $1}' > output.txt

if [ $? -eq 0 ]; then
  echo "File processed successfully."
else
  echo "Error processing file."
fi