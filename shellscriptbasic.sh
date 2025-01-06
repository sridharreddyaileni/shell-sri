#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...$R FAILED $N"
        exit 1
    else
        echo "$2..$G Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "$R ERROR:: Please run this script with root access $N" &>> $LOGFILE
    exit 1
    
else
    echo "$G you are root user $N" &>> $LOGFILE
    echo "$G My $Y Name is $R Sridhar $N" &>> $LOGFILE
    echo "script executed at $TIMESTAMP" &>> $LOGFILE
fi

Date=$(date)
echo "$Y Todays Date is $Date $N" &>> $LOGFILE
VALIDATE $? "OK"