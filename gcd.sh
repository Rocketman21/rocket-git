#!/bin/bash

rnd() {
	echo $(( RANDOM % ($2 - $1 + 1 ) + $1 ));
}

cmd="git add . && git commit -m \"$1\" --date=\"$2 $(rnd 10 23):$(rnd 0 5)$(rnd 0 9):$(rnd 0 5)$(rnd 0 9) +0300\" $3";

echo -e "Executing: \033[1;32m$cmd\033[0m";

eval $cmd;