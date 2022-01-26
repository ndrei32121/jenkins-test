#!/bin/bash
#script aimed to test target server

APP_ARG=$1

function soft_checker {
    APP=$1
    which $APP 2>&1 > /dev/null
    RSLT=$?
    if [ $RSLT -ne 0 ]
    then
        echo "$APP: not installed"
        exit 1
    else
        echo "$APP: OK"
    fi
}

soft_checker "$APP_ARG"