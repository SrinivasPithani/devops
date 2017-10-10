#!/bin/bash

LOGS=`mktemp -d /tmp/outputXXXX`
touch $LOGS/$$
ls -l $LOGS
sleep 10
trap "rm -rf $LOGS/" INT
