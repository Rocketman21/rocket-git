#!/bin/bash

rnd() {
	echo $(( RANDOM % ($2 - $1 + 1 ) + $1 ));
}

gitadd="";

while getopts 'a:h' opt; do
	case "$opt" in
		a)
			gitadd="git add . &&"
			;;
		?|h)
			echo "Usage: $(basename $0) [-a --] <date> [additional git flags]"
			exit 1
			;;
	esac
done

shift "$(($OPTIND -1))"
commit_date="$1"
shift

cmd="$gitadd git commit --date=\"$commit_date $(rnd 10 23):$(rnd 0 5)$(rnd 0 9):$(rnd 0 5)$(rnd 0 9) +0300\" $@";

echo -e "Executing: \033[1;32m$cmd\033[0m";

eval $cmd;
