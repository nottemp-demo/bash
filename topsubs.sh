#!/bin/bash

# Get the current directory
if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided, pwd is taken as arg"
    current_dir=$(pwd)
else
  current_dir=$1
fi

# List all subdirectories in the current directory and their sizes
subdirectories=$(du -sh $current_dir/*/ 2>/dev/null | sort -rh)

# Print the top 10 subdirectories with sizes
echo "Top 10 Subdirectories:"
echo "$subdirectories" | head -n 10 | awk '{print $1 "\t" $2}'
