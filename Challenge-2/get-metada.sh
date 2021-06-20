#!/bin/sh

./ssh-instance.sh $1 $2 'bash -s' < metadata-curl.sh > output.log

grep '^{.*}$' output.log > final-output.log
rm output.log
