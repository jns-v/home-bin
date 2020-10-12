#!/bin/bash
for file in $1
do tar $2 $file -C $3
done
