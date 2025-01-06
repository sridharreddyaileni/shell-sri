#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +F-%H-%M-%S)

if [$ID -ne 0]
then
    echo "$G My $Y Name is $R Sridhar $N "
    echo "script executed at $TIMESTAMP"
else
    echo "you are root user"
fi
