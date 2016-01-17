#!/bin/sh

URL=https://github.com/gotgit/gotgit.git
DATA=/data

if test ! "$(ls -A $DATA)"; then
	git clone --single-branch --branch master $URL /data
fi

cd /data && make "$@"
