#!/bin/bash

# conditionals examples
FILE=$1 #parameter 1
FILE1=$FILE
FILE2=$2 #parameter 2
STRING1=$FILE
STRING2=$STRING1
STRING=$STRING1
OPTIONNAME=$STRING1
ARG1=$STRING1
ARG2=$ARG2

echo "file $FILE file1 $FILE1 file2 $FILE2 string1 $STRING1 string2 $STRING2 arg1 $ARG1"

if [ -a $FILE ]
  then
	echo "True if FILE exists."
fi
if [ -b $FILE ]
  then
	echo "True if FILE exists and is a block-special file."
fi
if [ -c $FILE ]
  then
	echo "True if FILE exists and is a character-special file."
fi
if [ -d $FILE ]
  then
	echo "True if FILE exists and is a directory."
fi
if [ -e $FILE ]
  then
	echo "True if FILE exists."
fi
if [ -f $FILE ]
  then
	echo "True if FILE exists and is a regular file."
fi
if [ -g $FILE ]
  then
	echo "True if FILE exists and its SGID bit is set."
fi
if [ -h $FILE ]
  then
	echo "True if FILE exists and is a symbolic link."
fi
if [ -k $FILE ]
  then
	echo "True if FILE exists and its sticky bit is set."
fi
if [ -p $FILE ]
  then
	echo "True if FILE exists and is a named pipe (FIFO)."
fi
if [ -r $FILE ]
  then
	echo "True if FILE exists and is readable."
fi
if [ -s $FILE ]
  then
	echo "True if FILE exists and has a size greater than zero."
fi
if [ -t $FD ]
  then
	echo "True if file descriptor FD is open and refers to a terminal."
fi
if [ -u $FILE ]
  then
	echo "True if FILE exists and its SUID (set user ID) bit is set."
fi
if [ -w $FILE ]
  then
	echo "True if FILE exists and is writable."
fi
if [ -x $FILE ]
  then
	echo "True if FILE exists and is executable."
fi
if [ -O $FILE ]
  then
	echo "True if FILE exists and is owned by the effective user ID."
fi
if [ -G $FILE ]
  then
	echo "True if FILE exists and is owned by the effective group ID."
fi
if [ -L $FILE ]
  then
	echo "True if FILE exists and is a symbolic link."
fi
if [ -N $FILE ]
  then
	echo "True if FILE exists and has been modified since it was last read."
fi
if [ -S $FILE ]
  then
	echo "True if FILE exists and is a socket."
fi
if [ FILE1 -nt $FILE2 ]
  then
	echo "True if FILE1 has been changed more recently than FILE2, or if FILE1 exists and FILE2 does not."
fi
if [ FILE1 -ot $FILE2 ]
  then
	echo "True if FILE1 is older than FILE2, or is FILE2 exists and FILE1 does not."
fi
if [ FILE1 -ef $FILE2 ]
  then
	echo "True if FILE1 and FILE2 refer to the same device and inode numbers."
fi
if [ -o $OPTIONNAME ]
  then
	echo "True if shell option \"OPTIONNAME\" is enabled."
fi
if [ -z $STRING ]
  then
	echo "True of the length if \"STRING\" is zero."
fi
if [ -n $STRING ] # or [ $STRING ]
  then
	echo "True if the length of \"STRING\" is non-zero."
fi
if [ $STRING1 == $STRING2 ]
  then
	echo "True if the strings are equal. \"=\" may be used instead of \"==\" for strict POSIX compliance."
fi
if [ $STRING1 != $STRING2 ]
  then
	echo "True if the strings are not equal."
fi
if [ $STRING1 < $STRING2 ]
  then
	echo "True if \"STRING1\" sorts before \"STRING2\" lexicographically in the current locale."
fi
if [ $STRING1 > $STRING2 ]
  then
	echo "True if \"STRING1\" sorts after \"STRING2\" lexicographically in the current locale."
fi
if [ $ARG1 -eq $ARG2 ] #OP
  then
	echo "\"OP\" is one of -eq, -ne, -lt, -le, -gt or -ge. These arithmetic binary operators return true if \"ARG1\" is equal to, not equal to, less than, less than or equal to, greater than, or greater than or equal to \"ARG2\", respectively. \"ARG1\" and \"ARG2\" are integers."
fi

# short if
# Use { and } instead of ( and ) if you do not want Bash to fork a subshell
[ "$(whoami)" != 'root' ] && ( echo you are using a non-privileged account; exit 1 )
test "$(whoami)" != 'root' && ( echo you are using a non-privileged account; exit 1 ) 