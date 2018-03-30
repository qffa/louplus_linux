#!/bin/bash

Convert(){
    local value=$1
    local unit=0


    while [[ value -ge 1024 && unit -le 2 ]]
    do
        let "value=value/1024"
        let "unit++"
    done

    case $unit in
        0)
            echo "$value B"
            ;;
        1)
            echo "$value KB"
            ;;
        2)
            echo "$value MB"
            ;;
        3)
            echo "$value GB"
            ;;
    esac
}

export -f Convert

if test $1; then
    Convert $1
fi


