#!/usr/bin/env bash

HOME="$HOME"
DIRECTORY="./"


YOUTUBERT="https://youtu.be/"
TWITCHRT="https://www.twitch.tv/videos/"

if [ $# -gt 4 ]; then
	echo "Too many args.."
	exit 2
fi

for i in "$@"
do
	case $i in
		-t|-T|--tablet|--turmux)
			DIRECTORY="/data/data/com.termux/files/home/Movies/youtube-dl/"
			shift # past arg
			#shift # past val
			;;
		-y|-Y|--youtube)
			CONFIGCODE=1
			shift
			#shift
			;;
		-t|-T|--twitch)
			CONFIGCODE=2
			shift
			#shift
			;;
		-u=*|-U=*|--UID=*)
			UIDNAME="${i#*=}"
			shift
			;;
		-v|-V|--version)
			echo "Version 0.1.0"
			exit 10	
			;;
		*)
			echo "Unknown Arg => $i"
			exit 9
		;;
esac
done
		
case "${CONFIGCODE}" in
	1)
		MEDIANAME="YouTube"
		OBJMEDIA=${YOUTUBERT}
		shift
		;;
	2)
		MEDIANAME="TWITCH"
		OBJMEDIA=${TWITCHRT}
		shift
		;;
esac


echo "Downloading Directory  =  ${DIRECTORY}"
echo "Download from          =  ${MEDIANAME}"
echo "URL                    =  ${OBJMEDIA}${UIDNAME}"

youtube-dl -o "${DIRECTORY}/%(title)s.%(ext)s" "${OBJMEDIA}${UIDNAME}"

