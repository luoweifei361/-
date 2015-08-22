#!/bin/bash 
#testtvar.sh
echo "-------------ISF is set to \"-seperator\" ------------"
IFS="-seperator";  # 注意 seperator前有一个减号(-)
for i in "$@"; do echo "@ '$i'"; done
for i in "$*"; do echo "* '$i'"; done

echo "-------------ISF is set to null ------------------------"
IFS=
for i in "$@"; do echo "@ '$i'"; done
for i in "$*"; do echo "* '$i'"; done

echo "-------------ISF is unset ------------------------"
unset IFS
for i in "$@"; do echo "@ '$i'"; done
for i in "$*"; do echo "* '$i'"; done

    
echo "---------$* and $@ are not put into double quotes(\"\")-------"
for i in $@; do echo "@ '$i'"; done
for i in $*; do echo "* '$i'"; done
