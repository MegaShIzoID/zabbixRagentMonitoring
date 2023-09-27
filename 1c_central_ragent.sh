#!/bin/bash
/usr/bin/echo "$1" |
awk -F, 'BEGIN { print "{\"data\":[" } { for (i=1;i<=NF;i++) { print "{\"{#RAGENT_PORT}\":\""$i"\"}"(i<NF?",":"") } } END { print "]}" }'