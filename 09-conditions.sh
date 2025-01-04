#!/bin/bash

VALUE=$1

if [ $VALUE -gt 100 ]
then
    echo "Given number is greater than 100"
else 
    echo "Given number less than or equals to 100"
fi