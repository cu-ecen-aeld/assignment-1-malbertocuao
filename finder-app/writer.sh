#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Get the arguments
writefile=$1
writestr=$2

# Create the directory if it doesn't exist and return error if it fails
mkdir -p $(dirname $writefile)
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory $writefile"
    exit 1
fi

# Write the content to the file
echo $writestr > $writefile
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to file $writefile"
    exit 1
fi

# Exit with success
exit 0