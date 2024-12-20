#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

# Get the arguments
filesdir=$1
searchstr=$2

# Check if the filesdir is a directory
if [ ! -d $filesdir ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

# Get the number of files and the number of matching lines
num_files=$(find $filesdir -type f | wc -l)

# Get the number of matching lines
num_matching_lines=$(grep -r $searchstr $filesdir | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

# Exit with success
exit 0