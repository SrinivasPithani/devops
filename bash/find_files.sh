#!/bin/bash

LOGS=`mktemp -d /tmp/outputXXXX`
touch $LOGS/$$
ls -l $LOGS
sleep 10
sleep 5 
trap "rm -rf $LOGS/" INT
