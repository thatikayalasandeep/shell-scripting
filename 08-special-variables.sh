#!/bin/bash

echo "All variables passed: $@"
echo "NUmber of variables: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of currecnt script: $$"
sleep 60 & 
echo "Process id of last command in background: $!"