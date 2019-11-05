#!/bin/bash

daemons=("httpd" "mysqld" "vsftpd")
echo ${daemons[2]}
echo ${daemons[@]}
echo ${daemons[*]}
echo ${#daemons[@]}

filelist=($(ls))
echo ${filelist[*]}


