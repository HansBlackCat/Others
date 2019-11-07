#!/bin/bash
#Variable Substitution

#---------------------
a=456
hello=${a}

echo hello
echo $hello
echo ${hello}
echo "${hello}"
echo '${hello}'
#---------------------

#---------------------
hello="A B  C   D"
echo $hello
echo "$hello"
#---------------------

#---------------------
hello=
echo "\$hello (null value) = $hello"
#---------------------

#---------------------
var1=21 var2=22 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$var3"
#---------------------

#---------------------
echo 
numbers="one two three"
other_numbers="1 2 3"
echo "numbers=$numbers"
echo "other_numbers=$other_numbers"
#---------------------

#---------------------
echo    
numbers=one\ two\ three
echo "numbers=$numbers"
#---------------------

#---------------------
echo    
echo "uninit_v=$uninit_v"
uninit_v=
echo "uninit_v=$uninit_v"
uninit_v=23
unset uninit_v
echo "uninit_v=$uninit_v"
#---------------------

#---------------------
echo "$uninit_v"
let "uninit_v += 5"
echo "$uninit_v"
#---------------------

exit 0






