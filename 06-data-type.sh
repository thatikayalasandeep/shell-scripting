#!/bin/bash

VALUE1=$1
VALUE2=$2

TIMESTAMP=$(date)

echo "This process at time of: $TIMESTAMP"

SUM=$(($VALUE1+$VALUE2))

echo "The sum of the two values is: $SUM"