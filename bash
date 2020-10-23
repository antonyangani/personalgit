#If statements can be a bit confusing

example

if [[ $# -ne 1  ]]              # the square brackets is not posix compliant, meaning it can only be used in BASH scrips
then
    echo "the number of parameters passed exceed 1"
    exit 2
fi

if [ -e $1  ]               #Checks if a parameter passed, e.g. file exists, it returns a zero meaning it was successful
then
    echo "file exists"
else
    echo "file does not exist"
fi


if [ -e $1 -a $1 -nt $0]        #Checks if a file exists and it is new than the script file running it (it always has the desgnation of $0)
then
    echo "file is newer than $0"
else
    echo "file exists but it is older then $0"
fi


#OPERANDS

-e -> exists
-nt -> newer than
-ne -> not equal
-a -> and operator


#SWITCH STATEMENT

#!/bin/bash

if [ $# -ne 1 ]
then
    echo "I can only greet one person at a time"
    exit 2
fi

case $1 in
    antony)
        echo "Hi there, $1"
        echo "How are you today"
        ;;
    Newman)
        echo "Hi there, $1"
        echo "How are you today?"
        ;;
    Alex*)
        echo "Hi, $1"
        ;;

    Bonnie | clyde)
        echo "Howdie, $1"
        echo "Hopefully, no crimes today"
        ;;

    *)
        echo Nice to meet you, $1
        ;;
esac


==> The esac is important as it helps bash terminate the case-statement

#WHILE LOOP
-- read command stores replies from user in the $REPLY global variable

while [ "$REPLY" != YES ]
do
    echo "Welcome to the meeting"
    echo "Do you agree with my way of thinking?"

    read

    sleep 2
done

#UNTIL LOOP

until [ "$REPLY" == YES ]
do
    echo "Welcome to the meeting"
    echo "Do you agree with my way of thinking?"

    read

    sleep 2
done

#FOR LOOP

#!/bin/bash

for (( i=10;i<63;i++ ))
do
  echo -n "62.12.119.$i"
  if ping -W 1 -c 1 62.12.119.$i > /dev/null
  then
        echo Check
  else
        echo no
  fi
done


ANOTHER FORLOOP 

for(( i=0;i<=20;i++ ))
do
    touch my_example_file_$i
done

for myFile in my_example_file_*
do
    echo "This script adds text in files in a loop" > $myFile
done

#Looping through a list from a text file
-- while read sub; do echo "$sub.yahoo.com"; done < subdomain.txt

