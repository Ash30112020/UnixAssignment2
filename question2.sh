#! /usr/bin/bash
echo "Enter one or more file name "
read files 
 echo "Enter word to be deleted"
 read word
 del=$(sed /$word/d $files )  
 del=$(sed -ie /$word/d $files)
 
echo "Removed lines conatining word: $word "