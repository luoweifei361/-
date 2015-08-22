#!/bin/sh

while [ 1 ] ;
do
	#clear
        echo "Command: $*"
		date
	echo ""
	( $* )
        sleep 2
done
