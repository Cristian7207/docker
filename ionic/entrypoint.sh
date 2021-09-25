#!/bin/bash
if [ "$(ls usr/src/)" ]
then
    yes y | while read si; do sleep 20 ; echo $si; done | ionic start ${APPLICATION_NAME} blank --type angular --no-interactive --no-confirm
else
    echo "No, no existe"
fi