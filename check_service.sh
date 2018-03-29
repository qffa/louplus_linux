#!/bin/bash

sudo service $1 status &> /dev/null


case $? in
    0)
        echo "is Running"
        ;;
    3)
        sudo service $1 start; echo Restarting
        ;;
    1)
        echo "Error: Service Not Found"
        ;;
esac
