#!/bin/bash

# Get the current directory
#current_dir=$(pwd)
current_dir=$1

# List all subdirectories in the current directory and their sizes
subdirectories=$(du -sh $current_dir/*/ 2>/dev/null | sort -rh)

# Print the top 10 subdirectories with sizes
echo "Top 10 Subdirectories:"
echo "$subdirectories" | head -n 10 | awk '{print $1 "\t" $2}'
