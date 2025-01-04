#! /bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0]
    then
        echo "$2..........Failed"
        exit 1
    else
        echo "$2..........Success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "You must have root privileges to exicute these commands...."
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "Installing Mysql"

else
    echo "mysql is already.............Installed"
fi

dnf list installed git

if [$? -ne 0 ]
then 
    dnf install git

    VALIDATE $? "Installing git"
else
    echo "Git is already..........Installed"
fi
