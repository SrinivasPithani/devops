#!/bin/bash

array=(1 2 3 4 5 "arrayme" "notme")

clear

#Using index
for num in ${!array[@]}
do
	echo using index : ${array[$num]}
done 

array+=("newelement")

#using values in the array
for num in ${array[@]}
do
	echo values are : ${num}
done
