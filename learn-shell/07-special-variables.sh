#! /bin/bash

#It will give us all the args passed to the script
echo "All the args passed to the script: $@"

#It will give us the number of args passed to the script
echo "Number of args passed to the script: $#"

#It will give us the name of the script
echo "Name of the script: $0"

echo "PID of the script: $$" ##process id of the script
echo "PID of the last background command: $!" ##process id of the last background command

echo "check total time of script executed: $SECONDS" ##total time of script executed
echo "check total time of script executed: $RANDOM" ##random number between 0 and 32767
echo "check total time of script executed: $LINENO" ##current line number in the script
echo "present working directory: $PWD" ##present working directory
sleep 10 &
wait $! ##wait until $1 command finishes
echo "first variable passed: $1" ## first variable passed
echo "second variable passed: $2" ## second variable passed
echo "Directory of the current script: $PWD"
echo "Home directory of the current user: $HOME"
echo "Exit status of the last command: $?" ##exit status of the last command
