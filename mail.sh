#!/bin/bash
if [ -z $FILE ]; then
   echo $MESSAGE | mail -s $SUBJECT $EMAIL
else
   echo $MESSAGE | mail -s $SUBJECT $EMAIL -A $FILE
fi
