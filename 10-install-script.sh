#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you must have root access to install the packages"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing Mysql................Failed"
        exit 1
    else
        echo "Installing Mysql...............Success"
    fi

else
    echo "Mysql is already...........Installed"

fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing git ................Failed"
    else
        echo "Installing git ................Success"
    fi
    
else
    echo "Git is already ...........Installed"
fi