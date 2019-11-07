#!/bin/bash

#--------------------------------------------
a=23
echo $a
b=$a
echo $b
#--------------------------------------------

#--------------------------------------------
a=`echo Hello!`
echo $a
echo
a=`ls -l`
echo $a
echo "$a"
echo 
#--------------------------------------------

R=$(cat /home/MySMB/Documents/Others/bash/ABSG/ex4_1.sh)
echo "$R"

exit 0
