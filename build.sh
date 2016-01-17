#!/bin/sh

URL=https://github.com/gotgit/gotgit.git
DATA=/data

if test ! "$(ls -A $DATA)"; then
	git clone $URL /data
fi

cd /data && make "$@"
