#
FILENAME=$1
STARTING_LINE=$2
ENDING_LINE=$3

echo "Entered filename: $1"
echo "Start reading file from line no.: $2 to line no.: $3 "

awk "{ if (NR>=$2 && NR<=$3) print; }" $1
