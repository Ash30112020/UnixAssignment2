#!/bin/bash
echo "USAGE: sample directory path-"
echo "/home/ashwini.patil/test/"

echo "Enter directory name:"
read dir

echo "List of files in the directory $dir:"
find $dir -maxdepth 1 -type f

