#!/bin/bash

# Ensure the following arguments
if [ "$#" -ne 2 ]; then
    echo "ERROR: Invalid Number of Arguments"
    echo "Total number of arguments should be 2"
    echo "    1)Full file path"
    echo "    2)String to be written to the file"
    exit 1
fi
FULL_FILE_PATH=$1  # e.g. /tmp/aesd/assignment1/sample.txt
TEXT_STRING=$2  # text to write to the file

echo "$TEXT_STRING" > $FULL_FILE_PATH

if [ "$?" -eq 0 ]; then
    echo "success"
    exit 0
else
    echo "failed: expected ${} in ${} but instead"
    exit 1
fi
