#!/bin/bash
#for Debbuging this script run bash -x SCRIPT
#set -v Prints shell input lines as they are read. set +v to disable it it can be set on the first lineup
#for Debbuging this script run bash -x SCRIPT
clear
USER="`id -un`"
echo "Hello $USER, this information provided by my first script"
echo "today is: `date`"
printf "this is your home dir: $HOME and terminal: $TERM\n"

COLOR="Black"
NUMBER="7"
echo "This is a String: $COLOR, This is a Number: $NUMBER"
ba="exported val"
export ba

echo "now the prompt return back if you want to import the variables just write:"
echo "type \"source ./first-script\" and you will get the variables that are setted (COLOR/NUMBER)"