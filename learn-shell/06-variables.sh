#!/bin/bash sh

# Print the current date and time using the laptop's configured time zone.
date '+%Y-%m-%d %H:%M:%S %Z (%z)'

#write a script that prints the current date and time in the format "YYYY-MM-DD HH:MM:SS TZ (UTC offset)" using the laptop's configured time zone. The script should be compatible with both bash and sh shells.

#write another script to print the username and password also
echo  "Username: $USER"
echo  "Password: $PASS"

echo "please enter your username and password to continue:"

read -s user_name #here it will take values from what you enter
read -s password

echo "Username: $user_name"
echo "Password: $password"



