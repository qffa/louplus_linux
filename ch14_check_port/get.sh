#!/bin/bash

socket=`ss -tulnp4 "sport = :$1" | grep $1`

if [[ $? -eq 0 ]]; then
    program=`echo $socket | cut -d\" -f2`
    if test `which $program`; then
        which $program
    else
        echo "Can't get the process name"
        exit 2
    fi
else
    echo "OFF"
    exit 1
fi
