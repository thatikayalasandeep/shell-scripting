#! /bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ...... $R Failed"
        exit 1
    else
        echo -e "$2 ....$G Success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR ::You must have root privileges to exicute these commands...."
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "Install Mysql"
else
    echo -e "Mysql is already..........$Y Installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Install git"
else
    echo -e "Git is already..........$Y Installed"
fi
