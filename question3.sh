#! /usr/bin/bash
if [ $# -gt 0 ]
then
       echo "Warning: Ignoring the arguments"
fi
echo "Following are the files with read, write, execute permissions in current directory: "

for file in *
do
	if [ -f $file ]
	then
		if [ -r $file -a -w $file -a -x $file ]
		then
			ls -l $file
		fi
	fi
done