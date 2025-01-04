#!/bin/bash

echo "Here we're going to learn arrays concepts in shell scripting"

MOVIES=("Devara" "Salar" "RRR")

echo "Here is the 1st movie: ${MOVIES[0]}"
echo "Here is the 2nd movie: ${MOVIES[1]}"
echo "Here is the 3rd movie: ${MOVIES[2]}"
echo "Here is the all movies: ${MOVIES[@]}"