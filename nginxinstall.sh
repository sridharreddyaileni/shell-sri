#!/bin/bash
apt install nginxx -y
if [ $? -ne 0 ]
then
    echo "Error installing nginx"
    exit 1
else    
    echo "installing nginx"
fi

echo "END"