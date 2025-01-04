#! /bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"


VALIDATE(){

    if [ $1 -ne 0 ]
    then 
        echo "$2 ............$R Failed $N"
        exit 1
    else
        echo "$2 ............$G Success $N"
    fi
}

echo "Script start executing at $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo -e " $R ERROR :: You should have root access previleges to execute... $N "
    exit 1
fi

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
    dnf install mysql &>>$LOG_FILE_NAME
    VALIDATE $? "Mysql install"
else
    echo "$Y Mysql is already ...........Installed $N"
fi

dnf list installed git &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
    dnf install git &>>$LOG_FILE_NAME
    VALIDATE $? "Git install"
else
    echo "$$Y Git is already ...........Installed $N"
fi