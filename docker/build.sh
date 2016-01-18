#!/bin/sh

URL=https://github.com/gotgit/gotgit.git
DATA=/data

opt_quiet=0

while test $# -gt 0
do
	case $1 in
	-q | --quiet)
		opt_quiet=1
		shift
		;;
	-v | --verbose)
		opt_quiet=0
		shift
		;;
	-*)
		echo >&2 "## Unknown option: $1"
		shift
		;;
	*)
		break
		;;
	esac
done

if [ ! "$(ls -A $DATA)" ]
then
	echo >&2 "## Blank volume mounted on /data, will clone git repo from $URL to /data"
	git clone --single-branch --branch master $URL /data
	if [ $? -ne 0 ]
	then
		echo >&2 "## Can not clone from $URL"
		echo >&2 "## You should clone it to the volume by hands."
		exit 1
	fi
elif [ $opt_quiet -eq 0 ]
then
	echo "## Tip: Run \"git pull\" in the volume mounted on /data to update ebook from upstream."
fi

cd /data && make "$@"
