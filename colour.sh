#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
then
    echo "$R ERROR:: Please run this script with root access $N" &>> $LOGFILE
else
    echo "$G you are root user $N"
    echo "$G My $Y Name is $R Sridhar $N "
    echo "script executed at $TIMESTAMP"
fi
