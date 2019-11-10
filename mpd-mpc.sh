#!/bin/bash

state=$(mpc | awk '/playing/ {print $1}')

if [ "$state" == "[playing]" ]
then
	echo $(mpc | grep -v playing | grep -v volume)
fi
