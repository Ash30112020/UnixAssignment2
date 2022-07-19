#!/bin/bash

if [ $# -lt 2 ]
    then
    echo "Error : Invalid number of arguments. Provide atleast two files as argument"
	exit 1
fi

# Convert reference file in to words on each line, ignore spaces.
search_file=`tr '\n' ' ' < $1` 

# Iterate across the list of files provided
for file_name in "$@"
do
	#skip first file as its reference file
    if [ $file_name = $1 ]
        then 
        continue
    fi
	   
# Modify this file such that each space turns in to a newline
#    tr ' ' '\n' < $file_name > new_temp_file	   
	
	# Iterate across the words from reference file and search it in current file using grep.
	# grep -c prints count of matching lines per file
    for search_word in $search_file
    do
        echo "$file_name: $search_word:" $(tr ' ' '\n' <"$file_name" | grep -c "$search_word")
		#echo "$file_name: $search_word:" $(grep -o "\b${search_word}\b" "$file_name" | wc -l)
    done
done	