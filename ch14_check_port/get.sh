#!/bin/bash

socket=`ss -tulnp4 "sport = :$1" | grep $1`
echo $socket

if [[ $? -eq 0 ]]; then
    echo $socket | cut -d\" -f2 | which
    echo $program
else
    echo "OFF"
fi


if test $program; then
    echo $program
else
    echo "Can't get the process name"
fi
